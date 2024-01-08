package io.github.aleris.dbb;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.Duration;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class Database {
  private final DataSource dataSource;
  private Duration executeQueryCheatingDelay = Duration.ZERO;

  public Database(final DataSource dataSource) {
    this.dataSource = dataSource;
  }

  public Database setExecuteQueryCheatingDelay(final Duration delay) {
    this.executeQueryCheatingDelay = delay;
    return this;
  }

  public Optional<Organism> findByCode(final String code) {
    try {
      Thread.sleep(executeQueryCheatingDelay.toMillis());
    } catch (InterruptedException e) {
      Thread.currentThread().interrupt();
      throw new RuntimeException(e);
    }
    try (final var connection = dataSource.getConnection()) {
      try (final var statement = connection
          .prepareStatement(
              """
                  SELECT *
                  FROM organism
                  WHERE code = ?
                  """
          )
      ) {
        statement.setString(1, code);
        final var resultSet = statement.executeQuery();
        if (resultSet.next()) {
          final var organism = Organism.fromResultSet(resultSet);
          return Optional.of(organism);
        } else {
          return Optional.empty();
        }
      }
    } catch (SQLException e) {
      throw new RuntimeException("Could not execute query for findByCode", e);
    }
  }

  public int superfluousSelect1() {
    try (final var connection = dataSource.getConnection()) {
      try (final var statement = connection.prepareStatement("SELECT 1")) {
        final var resultSet = statement.executeQuery();
        resultSet.next();
        return resultSet.getInt(1);
      }
    } catch (SQLException e) {
      throw new RuntimeException("Could not execute query for superfluousSelect1", e);
    }
  }

  public List<Organism> findAll() {
    try (final var connection = dataSource.getConnection()) {
      try (final var statement = connection
          .prepareStatement(
              """
                  SELECT *
                  FROM organism
                  ORDER BY name_latin
                  LIMIT 100
                  """
          )
      ) {
        final var resultSet = statement.executeQuery();
        final var organisms = new ArrayList<Organism>(100);
        while (resultSet.next()) {
          final Organism organism = Organism.fromResultSet(resultSet);
          organisms.add(organism);
        }
        return organisms;
      }
    } catch (SQLException e) {
      throw new RuntimeException("Could not execute query for findAll", e);
    }
  }

  public Organism incrementViewCount(final String code) {
    try (final var connection = dataSource.getConnection()) {
      try (final var statement = connection
          .prepareStatement(
              // this will only work in PostgreSQL, RETURNING is not supported in MariaDB, we would need two queries
              """
                  UPDATE organism
                  SET
                      view_count = view_count + 1,
                      updated_at = CURRENT_TIMESTAMP
                  WHERE code = ?
                  RETURNING *
                  """
          )
      ) {
        statement.setString(1, code);
        statement.execute();
        final var resultSet = statement.getResultSet();
        resultSet.next();
        return Organism.fromResultSet(statement.getResultSet());
      }
    } catch (SQLException e) {
      throw new RuntimeException("Could not execute incrementViewCount", e);
    }
  }

  public List<OrganismViewCountBySpecies> queryGenusViewCountUpdatedRecently(final int viewCountThreshold) {
    try (final var connection = dataSource.getConnection()) {
      try (final var statement = connection
          .prepareStatement(
              // an artificially complex query to make it slower on a small dataset
              """
                  SELECT DISTINCT
                      species,
                      genus,
                      familia,
                      ordo,
                      classis,
                      regnum,
                      SUM(view_count) AS view_count
                  FROM organism
                  WHERE
                      (
                          genus IN (
                              SELECT genus
                              FROM organism
                              WHERE
                                  organism.genus LIKE '%us' AND
                                  EXTRACT(YEAR FROM created_at) = EXTRACT(YEAR FROM CURRENT_TIMESTAMP)
                              GROUP BY genus
                              HAVING ? <= SUM(view_count)) OR
                          familia IN (
                              SELECT familia
                              FROM organism
                              WHERE
                                  familia LIKE '%dae' AND
                                  EXTRACT(YEAR FROM created_at) = EXTRACT(YEAR FROM CURRENT_TIMESTAMP)
                              GROUP BY familia
                              HAVING ? <= SUM(view_count))
                      ) AND
                      ? < updated_at
                  GROUP BY species, genus, familia, ordo, classis, regnum
                  ORDER BY view_count DESC, species, genus, familia, ordo, classis, regnum
                  LIMIT 100;
                  """
          )
      ) {
        statement.setInt(1, viewCountThreshold);
        statement.setInt(2, viewCountThreshold);
        statement.setTimestamp(
            3,
            Timestamp.from(Instant.now().minus(2, ChronoUnit.SECONDS))
        );
        final var resultSet = statement.executeQuery();
        final var result = new ArrayList<OrganismViewCountBySpecies>(100);
        while (resultSet.next()) {
          final var viewCountByGenus = OrganismViewCountBySpecies.fromResultSet(resultSet);
          result.add(viewCountByGenus);
        }
        return result;
      }
    } catch (SQLException e) {
      throw new RuntimeException("Could not execute query for queryViewCountersGroupedByGenus", e);
    }
  }

  public int resetUpdatedCounters() {
    try (final var connection = dataSource.getConnection()) {
      try (final var statement = connection
          .prepareStatement(
              """
                  UPDATE organism
                  SET
                      view_count = 0,
                      updated_at = null
                  WHERE updated_at IS NOT NULL
                  """
          )
      ) {
        return statement.executeUpdate();
      }
    } catch (SQLException e) {
      throw new RuntimeException("Could not execute resetUpdatedCounters", e);
    }
  }
}
