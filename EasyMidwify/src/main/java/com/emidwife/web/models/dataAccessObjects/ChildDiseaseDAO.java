package com.emidwife.web.models.dataAccessObjects;

import com.emidwife.web.models.entities.ChildDisease;
import com.emidwife.web.models.utilities.Database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hasini on 11/19/16.
 */

public class ChildDiseaseDAO {

    private Database database = new Database();

    public List<ChildDisease> findAll() throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childdiseases");
            List<ChildDisease> childDiseases = new ArrayList<ChildDisease>();

            while (resultSet.next()) {
                ChildDisease childDisease = new ChildDisease(
                        resultSet.getString("childID"),
                        resultSet.getString("diseaseCode"),
                        resultSet.getDate("diseaseDate"),
                        resultSet.getString("diseaseName"),
                        resultSet.getString("diseaseNote")
                );
                childDiseases.add(childDisease);
            }

            database.closeConnection();
            return childDiseases;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public ChildDisease findByChildId(String childId) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childdiseases WHERE childID=\'" + childId + "\'");
            resultSet.next();
            ChildDisease childDisease = new ChildDisease(
                    resultSet.getString("childID"),
                    resultSet.getString("diseaseCode"),
                    resultSet.getDate("diseaseDate"),
                    resultSet.getString("diseaseName"),
                    resultSet.getString("diseaseNote")
            );

            database.closeConnection();
            return childDisease;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }
}
