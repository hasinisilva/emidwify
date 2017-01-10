package com.emidwife.web.models.dataAccessObjects;

import com.emidwife.web.models.entities.ChildVaccineAmount;
import com.emidwife.web.models.utilities.Database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hasini on 11/20/16.
 */
public class ChildVaccineAmountDAO {
    private Database database = new Database();

    public List<ChildVaccineAmount> findAll() throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childvaccineamounts");
            List<ChildVaccineAmount> childVaccineAmounts = new ArrayList<ChildVaccineAmount>();

            while (resultSet.next()) {
                ChildVaccineAmount childVaccineAmount = new ChildVaccineAmount(
                        resultSet.getString("vaccineCode"),
                        resultSet.getInt("age"),
                        resultSet.getFloat("amount")
                );
                childVaccineAmounts.add(childVaccineAmount);
            }

            database.closeConnection();
            return childVaccineAmounts;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public List<ChildVaccineAmount> findAllByAge( int age) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childvaccineamounts WHERE age=\'" + age + "\'");
            List<ChildVaccineAmount> childVaccineAmounts = new ArrayList<ChildVaccineAmount>();

            while (resultSet.next()) {
                ChildVaccineAmount childVaccineAmount = new ChildVaccineAmount(
                        resultSet.getString("vaccineCode"),
                        resultSet.getInt("age"),
                        resultSet.getFloat("amount")
                );
                childVaccineAmounts.add(childVaccineAmount);
            }

            database.closeConnection();
            return childVaccineAmounts;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public ChildVaccineAmount findByVaccineCode(String vaccineCode) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childvaccineamounts WHERE vaccineCode=\'" + vaccineCode + "\'");
            resultSet.next();
            ChildVaccineAmount mother = new ChildVaccineAmount(
                    resultSet.getString("vaccineCode"),
                    resultSet.getInt("age"),
                    resultSet.getFloat("amount"));

            database.closeConnection();
            return mother;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }
}
