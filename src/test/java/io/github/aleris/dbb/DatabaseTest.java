package io.github.aleris.dbb;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.time.Duration;
import java.time.Instant;

import static org.assertj.core.api.Assertions.assertThat;

class DatabaseTest {

  private Database database;

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
    this.database = new Database(Containers.getDataSourceOfContainer(Containers.POSTGRESQL, 10));
    database.resetUpdatedCounters();
  }

  @Test
  void findByCode() {
    final var organismOptional = database.findByCode("upupa_epops");

    assertThat(organismOptional).isPresent();
    final var organism = organismOptional.get();
    assertThat(organism.nameLatin()).isEqualTo("Upupa epops");
    assertThat(organism.createdAt()).isAfter(Instant.parse("2024-01-01T00:00:00Z"));
  }

  @Test
  void findAll() {
    final var organisms = database.findAll();

    assertThat(organisms).hasSize(100);
  }

  @Test
  void incrementViewCount() {
    final var updated = database.incrementViewCount("upupa_epops");

    assertThat(updated.viewCount()).isEqualTo(1);
    assertThat(updated.updatedAt())
        .isNotNull()
        .isAfter(updated.createdAt());
    assertThat(database.findByCode("upupa_epops").orElseThrow(() -> new RuntimeException("not found"))
        .viewCount()).isEqualTo(1);
  }

  @Test
  void queryBigViewCountUpdatedRecently() {
    database.incrementViewCount("parus_lugubris");
    database.incrementViewCount("parus_ater");
    database.incrementViewCount("parus_lugubris");
    database.incrementViewCount("parus_cristatus");
    database.incrementViewCount("parus_lugubris");

    final var result = database.queryGenusViewCountUpdatedRecently(5);

    assertThat(result).hasSize(3);
    assertThat(result.getFirst().species()).isEqualTo("Parus lugubris");
  }
}
