package io.github.aleris.dbb;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.time.Duration;
import java.time.Instant;

import static org.assertj.core.api.Assertions.assertThat;

class DatabaseProxyLatencyTest {

  private Database database;

  @BeforeAll
  static void beforeAll() {
    Containers.POSTGRESQL.start();
    Containers.proxyPostgresqlWithLatency(Duration.ofMillis(10));
  }

  @AfterAll
  static void afterAll() {
    Containers.POSTGRESQL.stop();
  }

  @BeforeEach
  void beforeEach() {
    this.database = new Database(Containers.getDataSourceOfContainer(Containers.POSTGRESQL, 10, true));
  }

  @Test
  void findByCode() {
    final var organismOptional = database.findByCode("upupa_epops");

    assertThat(organismOptional).isPresent();
    final var organism = organismOptional.get();
    assertThat(organism.nameLatin()).isEqualTo("Upupa epops");
    assertThat(organism.createdAt()).isAfter(Instant.parse("2024-01-01T00:00:00Z"));
  }
}
