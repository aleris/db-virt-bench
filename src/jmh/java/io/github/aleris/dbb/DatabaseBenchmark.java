package io.github.aleris.dbb;

import org.openjdk.jmh.annotations.*;
import org.openjdk.jmh.infra.Blackhole;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.Duration;
import java.util.List;
import java.util.concurrent.*;
import java.util.stream.IntStream;

@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.SECONDS)
//@BenchmarkMode(Mode.AverageTime)
//@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 2, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 3, time = 30, timeUnit = TimeUnit.SECONDS)
@Fork(3)
@Threads(1)
public class DatabaseBenchmark {
  static final int OPERATIONS_PER_INVOCATION = 5_000;

  @State(Scope.Benchmark)
  public static class BenchmarkState {
    private Database mariadb;
    private DataSource mariaDataSource;
    private Database postgresql;
    public ManyQueriesExecutor postgreCached;
    public ManyQueriesExecutor postgreVirtual;
    public ManyQueriesExecutor postgreFork;
    public ManyQueriesExecutor mariaCached;
    public ManyQueriesExecutor mariaVirtual;
    public ManyQueriesExecutor mariaFork;
    public List<String> codes;

    @Setup(Level.Trial)
    public void setupTrial() throws IOException {
      Containers.MARIADB.start();
      Containers.POSTGRESQL.start();
      mariaDataSource = Containers.getDataSourceOfContainer(Containers.MARIADB, 10);
      mariadb = new Database(mariaDataSource);

      // no latency
//      postgresql = new Database(Containers.getDataSourceOfContainer(Containers.POSTGRESQL, 10));

      // wrongly simulated latency
//      postgresql = new Database(Containers.getDataSourceOfContainer(Containers.POSTGRESQL, 10))
//                    .setExecuteQueryCheatingDelay(Duration.ofMillis(10));

      // latency with toxiproxy
//      Containers.proxyPostgresqlWithLatency(Duration.ofMillis(10));
//      postgresql = new Database(Containers.getDataSourceOfContainer(Containers.POSTGRESQL, 10, true));

      // increased connection pool size
      postgresql = new Database(Containers.getDataSourceOfContainer(Containers.POSTGRESQL, 1_000));
    }

    @TearDown(Level.Trial)
    public void tearDownTrial() {
      Containers.MARIADB.stop();
      Containers.POSTGRESQL.stop();
    }

    @Setup(Level.Iteration)
    public void setupIteration() {
      codes = IntStream.range(0, OPERATIONS_PER_INVOCATION)
          .map(ignored -> ThreadLocalRandom.current().nextInt(OrganismCodes.CODES.length))
          .mapToObj(index -> OrganismCodes.CODES[index])
          .toList();

      mariaCached = new ManyQueriesExecutor(mariadb, Executors.newCachedThreadPool());
      mariaVirtual = new ManyQueriesExecutor(mariadb, Executors.newVirtualThreadPerTaskExecutor());
      mariaFork = new ManyQueriesExecutor(mariadb, ForkJoinPool.commonPool());

      postgreCached = new ManyQueriesExecutor(postgresql, Executors.newCachedThreadPool());
      postgreVirtual = new ManyQueriesExecutor(postgresql, Executors.newVirtualThreadPerTaskExecutor());
      postgreFork = new ManyQueriesExecutor(postgresql, ForkJoinPool.commonPool());
    }

    @TearDown(Level.Iteration)
    public void tearDownIteration() {
      mariaCached.close();
      mariaVirtual.close();
      mariaFork.close();

      postgreCached.close();
      postgreVirtual.close();
      postgreFork.close();
    }
  }

  @Benchmark
  @OperationsPerInvocation(OPERATIONS_PER_INVOCATION)
  public void findByCode_with_Postgresql_and_CachedThreadPool(
      final Blackhole blackhole,
      final BenchmarkState state
  ) {
    blackhole.consume(state.postgreCached.parallelFindByCode(state.codes));
  }

  @Benchmark
  @OperationsPerInvocation(OPERATIONS_PER_INVOCATION)
  public void findByCode_with_Postgresql_and_VirtualThreads(
      final Blackhole blackhole,
      final BenchmarkState state
  ) {
    blackhole.consume(state.postgreVirtual.parallelFindByCode(state.codes));
  }

  @Benchmark
  @OperationsPerInvocation(OPERATIONS_PER_INVOCATION)
  public void findByCode_with_Postgresql_and_ForkJoin(
      final Blackhole blackhole,
      final BenchmarkState state
  ) {
    blackhole.consume(state.postgreFork.parallelFindByCode(state.codes));
  }

  @Benchmark
  @OperationsPerInvocation(OPERATIONS_PER_INVOCATION)
  public void findByCode_with_Mariadb_and_CachedThreadPool(
      final Blackhole blackhole,
      final BenchmarkState state
  ) {
    blackhole.consume(state.mariaCached.parallelFindByCode(state.codes));
  }

  @Benchmark
  @OperationsPerInvocation(OPERATIONS_PER_INVOCATION)
  public void findByCode_with_Mariadb_and_VirtualThreads(
      final Blackhole blackhole,
      final BenchmarkState state
  ) {
    blackhole.consume(state.mariaVirtual.parallelFindByCode(state.codes));
  }

  // superfluousSelect1 - to test only a no-op select without any object mapping
  @Benchmark
  @OperationsPerInvocation(OPERATIONS_PER_INVOCATION)
  public void superfluousSelect1_with_Mariadb_and_CachedThreadPool(
      final Blackhole blackhole,
      final BenchmarkState state
  ) throws InterruptedException {
    try (var executor = Executors.newCachedThreadPool()) {
      executeSelect1(state, executor, blackhole);
    }
  }

  @Benchmark
  @OperationsPerInvocation(OPERATIONS_PER_INVOCATION)
  public void superfluousSelect1_with_Mariadb_and_VirtualThreads(
      final Blackhole blackhole,
      final BenchmarkState state
  ) throws InterruptedException {
    try (var executor = Executors.newVirtualThreadPerTaskExecutor()) {
      executeSelect1(state, executor, blackhole);
    }
  }

  private void executeSelect1 (
      BenchmarkState state,
      ExecutorService executor,
      Blackhole blackhole
  ) throws InterruptedException {
    IntStream.range(0, OPERATIONS_PER_INVOCATION).forEach(i -> executor.submit(() -> {
      try (var conn = state.mariaDataSource.getConnection()) {
        try (Statement stmt = conn.createStatement()) {
          try (ResultSet rs = stmt.executeQuery("select 1")) {
            rs.next();
            blackhole.consume(rs.getInt(1));
          }
        }
      } catch (SQLException e) {
        throw new RuntimeException(e);
      }
    }));
    executor.shutdown();
    executor.awaitTermination(1, TimeUnit.MINUTES);
  }

  @Benchmark
  @OperationsPerInvocation(OPERATIONS_PER_INVOCATION)
  public void incrementViewCountsAndQueryUpdated_with_Postgresql_and_CachedThreadPool(
      final Blackhole blackhole,
      final BenchmarkState state
  ) {
    blackhole.consume(state.postgreCached.parallelIncrementViewCountsAndQueryUpdated(state.codes));
  }

  @Benchmark
  @OperationsPerInvocation(OPERATIONS_PER_INVOCATION)
  public void incrementViewCountsAndQueryUpdated_with_Postgresql_and_VirtualThreads(
      final Blackhole blackhole,
      final BenchmarkState state
  ) {
    blackhole.consume(state.postgreVirtual.parallelIncrementViewCountsAndQueryUpdated(state.codes));
  }

  @Benchmark
  @OperationsPerInvocation(OPERATIONS_PER_INVOCATION)
  public void incrementViewCountsAndQueryUpdated_with_Postgresql_and_ForkJoin(
      final Blackhole blackhole,
      final BenchmarkState state
  ) {
    blackhole.consume(state.postgreFork.parallelIncrementViewCountsAndQueryUpdated(state.codes));
  }
}
