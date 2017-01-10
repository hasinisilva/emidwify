package com.emidwife.web.models.dataAccessObjects;

import com.emidwife.web.models.entities.Vaccine;
import com.emidwife.web.models.utilities.Database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hasini on 11/20/16.
 */
public class VaccineDAO {

    private Database database = new Database();

    public List<Vaccine> findAll() throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM vaccine");
            List<Vaccine> vaccines = new ArrayList<Vaccine>();

            while(resultSet.next()) {
                Vaccine vaccine = new Vaccine(resultSet.getString("vaccineCode"), resultSet.getString("vaccineName"));
                vaccines.add(vaccine);
            }

            database.closeConnection();
            return vaccines;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public Vaccine findByVaccineCode(String vaccineCode) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM vaccine WHERE vaccineCode=\'" + vaccineCode + "\'");
            resultSet.next();
            Vaccine vaccine = new Vaccine(resultSet.getString("vaccineCode"), resultSet.getString("VaccineName"));

            database.closeConnection();
            return vaccine;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

}
