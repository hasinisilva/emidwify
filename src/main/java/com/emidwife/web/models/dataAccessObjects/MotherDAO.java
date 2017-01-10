package com.emidwife.web.models.dataAccessObjects;

import com.emidwife.web.models.entities.Mother;
import com.emidwife.web.models.utilities.Database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hasini on 11/20/16.
 */
public class MotherDAO {

    private Database database = new Database();

    public List<Mother> findAll() throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM mother");
            List<Mother> mothers = new ArrayList<Mother>();

            while (resultSet.next()) {
                Mother mother = new Mother(resultSet.getString("guardianID"), resultSet.getString("motherID"));
                mothers.add(mother);
            }

            database.closeConnection();
            return mothers;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public Mother findByGuardianId(String guardianId) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM mother WHERE guardianID=\'" + guardianId + "\'");
            resultSet.next();
            Mother mother = new Mother(resultSet.getString("guardianID"), resultSet.getString("motherID"));

            database.closeConnection();
            return mother;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }
}
