package io.github.aleris.dbb;

import java.sql.ResultSet;
import java.sql.SQLException;

public record OrganismViewCountBySpecies(String species, int viewCount) {
  public static OrganismViewCountBySpecies fromResultSet(final ResultSet resultSet) {
    try {
      return new OrganismViewCountBySpecies(
          resultSet.getString(OrganismTable.COLUMN_SPECIES),
          resultSet.getInt(OrganismTable.COLUMN_VIEW_COUNT)
      );
    } catch (SQLException e) {
      throw new RuntimeException("Could not map OrganismViewCountBySpecies from resultSet", e);
    }
  }
}
