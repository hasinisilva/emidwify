package com.emidwife.web.models.dataAccessObjects;

import com.emidwife.web.models.entities.ChildDeath;
import com.emidwife.web.models.utilities.Database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hasini on 11/19/16.
 */
public class ChildDeathDAO {

    private Database database = new Database();

    public List<ChildDeath> findAll() throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childdeath");
            List<ChildDeath> childDeaths = new ArrayList<ChildDeath>();

            while (resultSet.next()) {
                ChildDeath childDeath = new ChildDeath(
                        resultSet.getString("ChildID"),
                        resultSet.getDate("date"),
                        resultSet.getString("motherID"),
                        resultSet.getString("reason")
                );
                childDeaths.add(childDeath);
            }

            database.closeConnection();
            return childDeaths;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public List<ChildDeath> findAllByMotherId(String motherId) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childdeath WHERE motherID=\'" + motherId + "\'");
            List<ChildDeath> childDeaths = new ArrayList<ChildDeath>();

            while (resultSet.next()) {
                ChildDeath childDeath = new ChildDeath(
                        resultSet.getString("ChildID"),
                        resultSet.getDate("date"),
                        resultSet.getString("motherID"),
                        resultSet.getString("reason")
                );
                childDeaths.add(childDeath);
            }

            database.closeConnection();
            return childDeaths;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public ChildDeath findByChildId(String childId) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childdeath WHERE childID=\'" + childId + "\'");
            resultSet.next();
            ChildDeath childDeath = new ChildDeath(
                    resultSet.getString("ChildID"),
                    resultSet.getDate("date"),
                    resultSet.getString("motherID"),
                    resultSet.getString("reason")
            );

            database.closeConnection();
            return childDeath;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }
}
