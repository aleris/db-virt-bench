package io.github.aleris.dbb;

import java.sql.ResultSet;
import java.sql.SQLException;

public record OrganismViewCountByCode(String code, int viewCount) {
  public static OrganismViewCountByCode fromResultSet(final ResultSet resultSet) {
    try {
      return new OrganismViewCountByCode(
          resultSet.getString(OrganismTable.COLUMN_CODE),
          resultSet.getInt(OrganismTable.COLUMN_VIEW_COUNT)
      );
    } catch (SQLException e) {
      throw new RuntimeException("Could not map OrganismViewCountByCode from resultSet", e);
    }
  }
}
