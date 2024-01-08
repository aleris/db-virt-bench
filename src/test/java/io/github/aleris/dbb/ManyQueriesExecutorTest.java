package io.github.aleris.dbb;

import org.junit.jupiter.api.*;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadLocalRandom;
import java.util.stream.IntStream;

import static org.assertj.core.api.Assertions.assertThat;

public class ManyQueriesExecutorTest {

  private ManyQueriesExecutor manyQueriesExecutor;

  @BeforeAll
  static void beforeAll() {
    Containers.POSTGRESQL.start();
  }

  @AfterAll
  static void afterAll() {
    Containers.POSTGRESQL.stop();
  }

  @BeforeEach
  void beforeEach() {
    final var database = new Database(Containers.getDataSourceOfContainer(Containers.POSTGRESQL, 10));
    database.resetUpdatedCounters();
    manyQueriesExecutor = new ManyQueriesExecutor(database, Executors.newCachedThreadPool());
  }

  @AfterEach
  void afterEach() {
    manyQueriesExecutor.close();
  }

  @Test
  void findByCode() {
    final var codes = IntStream.range(0, 10_000)
        .map(ignored -> ThreadLocalRandom.current().nextInt(OrganismCodes.CODES.length))
        .mapToObj(index -> OrganismCodes.CODES[index])
        .toList();
    final var result = manyQueriesExecutor.parallelFindByCode(codes);
    assertThat(result).hasSize(codes.size());
  }
}
