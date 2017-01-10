package com.emidwife.web.models.dataAccessObjects;

import com.emidwife.web.models.entities.ChildWeightCycle;
import com.emidwife.web.models.utilities.Database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hasini on 11/20/16.
 */
public class ChildWeightCycleDAO {

    private Database database = new Database();

    public List<ChildWeightCycle> findAll() throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM mother");
            List<ChildWeightCycle> childWeightCycles = new ArrayList<ChildWeightCycle>();

            while (resultSet.next()) {
                ChildWeightCycle mother = new ChildWeightCycle(
                        resultSet.getInt("maxAge"),
                        resultSet.getInt("minAge"),
                        resultSet.getFloat("maxWeight"),
                        resultSet.getFloat("minWeight"));
                childWeightCycles.add(mother);
            }

            database.closeConnection();
            return childWeightCycles;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }
}
