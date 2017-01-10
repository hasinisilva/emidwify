package com.emidwife.web.models.dataAccessObjects;

import com.emidwife.web.models.entities.ChildEpidemic;
import com.emidwife.web.models.utilities.Database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hasini on 11/19/16.
 */
public class ChildEpidemicDAO {

    private Database database = new Database();

    public List<ChildEpidemic> findAll() throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childepidemics");
            List<ChildEpidemic> childEpidemics = new ArrayList<ChildEpidemic>();

            while (resultSet.next()) {
                ChildEpidemic childEpidemic = new ChildEpidemic(
                        resultSet.getString("childID"),
                        resultSet.getString("epidemicCode"),
                        resultSet.getString("epidemicName"),
                        resultSet.getDate("date"),
                        resultSet.getString("note")
                );
                childEpidemics.add(childEpidemic);
            }

            database.closeConnection();
            return childEpidemics;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public List<ChildEpidemic> findAllByChildId(String childId) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childepidemics WHERE childID=\'" + childId + "\'");
            List<ChildEpidemic> childEpidemics = new ArrayList<ChildEpidemic>();

            while (resultSet.next()) {
                ChildEpidemic childEpidemic = new ChildEpidemic(
                        resultSet.getString("childID"),
                        resultSet.getString("epidemicCode"),
                        resultSet.getString("epidemicName"),
                        resultSet.getDate("date"),
                        resultSet.getString("note")
                );
                childEpidemics.add(childEpidemic);
            }

            database.closeConnection();
            return childEpidemics;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public List<ChildEpidemic> findAllByEpidemicCode(String epidemicCode) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childepidemics WHERE epidemicCode=\'" + epidemicCode + "\'");
            List<ChildEpidemic> childEpidemics = new ArrayList<ChildEpidemic>();

            while (resultSet.next()) {
                ChildEpidemic childEpidemic = new ChildEpidemic(
                        resultSet.getString("childID"),
                        resultSet.getString("epidemicCode"),
                        resultSet.getString("epidemicName"),
                        resultSet.getDate("date"),
                        resultSet.getString("note")
                );
                childEpidemics.add(childEpidemic);
            }

            database.closeConnection();
            return childEpidemics;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }
}
