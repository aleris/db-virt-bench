package io.github.aleris.dbb;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.Instant;
import java.util.Optional;

public record Organism(
    Long id,
    String code,
    String nameLatin,
    String regnum,
    String classis,
    String ordo,
    String familia,
    String genus,
    String species,
    Instant createdAt,
    Integer viewCount,
    Instant updatedAt
) {
  public static Organism fromResultSet(final ResultSet resultSet) {
    try {
      return new Organism(
          resultSet.getLong(OrganismTable.COLUMN_ID),
          resultSet.getString(OrganismTable.COLUMN_CODE),
          resultSet.getString(OrganismTable.COLUMN_NAME_LATIN),
          resultSet.getString(OrganismTable.COLUMN_REGNUM),
          resultSet.getString(OrganismTable.COLUMN_CLASSIS),
          resultSet.getString(OrganismTable.COLUMN_ORDO),
          resultSet.getString(OrganismTable.COLUMN_FAMILIA),
          resultSet.getString(OrganismTable.COLUMN_GENUS),
          resultSet.getString(OrganismTable.COLUMN_SPECIES),
          resultSet.getTimestamp(OrganismTable.COLUMN_CREATED_AT).toInstant(),
          resultSet.getInt(OrganismTable.COLUMN_VIEW_COUNT),
          Optional.ofNullable(resultSet.getTimestamp(OrganismTable.COLUMN_UPDATED_AT))
              .map(Timestamp::toInstant)
              .orElse(null)
      );
    } catch (SQLException e) {
      throw new RuntimeException("Could not map Organism from resultSet", e);
    }
  }
}
