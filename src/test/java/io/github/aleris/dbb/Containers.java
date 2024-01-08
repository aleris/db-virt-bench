package io.github.aleris.dbb;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import eu.rekawek.toxiproxy.Proxy;
import eu.rekawek.toxiproxy.ToxiproxyClient;
import eu.rekawek.toxiproxy.model.ToxicDirection;
import org.testcontainers.containers.*;
import org.testcontainers.utility.DockerImageName;

import javax.sql.DataSource;
import java.io.IOException;
import java.time.Duration;

public final class Containers {
  public static Network NETWORK = Network.newNetwork();

  private static final DockerImageName POSTGRESQL_IMAGE = DockerImageName.parse("postgres:16");

  private static final int POSTGRESQL_PORT = 5432;

  @SuppressWarnings("resource")
  public static final JdbcDatabaseContainer<?> POSTGRESQL =
      new PostgreSQLContainer<>(POSTGRESQL_IMAGE)
          .withDatabaseName("database_test")
          .withUsername("username_test")
          .withPassword("password_test")
          .withInitScript("db.sql")
          .withExposedPorts(POSTGRESQL_PORT)
          .withNetwork(NETWORK)
          .withNetworkAliases("postgresql");

  private static final DockerImageName MARIADB_IMAGE = DockerImageName.parse("mariadb:11");

  @SuppressWarnings("resource")
  public static final JdbcDatabaseContainer<?> MARIADB =
      new MariaDBContainer<>(MARIADB_IMAGE)
          .withDatabaseName("database_test")
          .withUsername("username_test")
          .withPassword("password_test")
          .withInitScript("db.sql")
          .withCreateContainerCmdModifier(
              it -> it.withCmd("--sort_buffer_size=1024K")
          );

  private static final int TOXIPROXY_PORT = 8666;
  private static final DockerImageName TOXIPROXY_IMAGE = DockerImageName.parse("ghcr.io/shopify/toxiproxy:2.5.0");
  public static ToxiproxyContainer TOXIPROXY = new ToxiproxyContainer(TOXIPROXY_IMAGE)
      .withNetwork(NETWORK);

  public static void proxyPostgresqlWithLatency(final Duration latency) {
    Containers.TOXIPROXY.start();

    final ToxiproxyClient toxiproxyClient = new ToxiproxyClient(
        Containers.TOXIPROXY.getHost(),
        Containers.TOXIPROXY.getControlPort()
    );
    try {
      final Proxy proxy = toxiproxyClient.createProxy(
          "postgresql",
          "0.0.0.0:" + TOXIPROXY_PORT,
          "postgresql:" + POSTGRESQL_PORT
      );
      proxy.toxics().latency("latencyDownstream", ToxicDirection.DOWNSTREAM, latency.toMillis() / 2);
      proxy.toxics().latency("latencyUpstream", ToxicDirection.UPSTREAM, latency.toMillis() / 2);
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }

  public static DataSource getDataSourceOfContainer(
      final JdbcDatabaseContainer<?> container,
      final int maximumPoolSize
  ) {
    return getDataSourceOfContainer(container, maximumPoolSize, false);
  }

  public static DataSource getDataSourceOfContainer(
      final JdbcDatabaseContainer<?> container,
      final int maximumPoolSize,
      final boolean withProxy
  ) {
    final String jdbcUrl;
    if (withProxy) {
      final String ipAddressViaToxiproxy = TOXIPROXY.getHost();
      final int portViaToxiproxy = TOXIPROXY.getMappedPort(TOXIPROXY_PORT);
      jdbcUrl = container.getJdbcUrl()
          .replace(container.getHost(), ipAddressViaToxiproxy)
          .replace(container.getFirstMappedPort().toString(), String.valueOf(portViaToxiproxy));
    } else {
      jdbcUrl = container.getJdbcUrl();
    }
    final String username = container.getUsername();
    final String password = container.getPassword();
    final HikariConfig config = new HikariConfig();
    config.setJdbcUrl(jdbcUrl);
    config.setUsername(username);
    config.setPassword(password);
    config.setMaximumPoolSize(maximumPoolSize);
    return new HikariDataSource(config);
  }
}
