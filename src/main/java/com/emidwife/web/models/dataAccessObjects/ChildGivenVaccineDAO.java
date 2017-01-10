package com.emidwife.web.models.dataAccessObjects;

import com.emidwife.web.models.entities.ChildGivenVaccine;
import com.emidwife.web.models.utilities.Database;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hasini on 11/19/16.
 */
public class ChildGivenVaccineDAO {

    private Database database = new Database();

    public List<ChildGivenVaccine> findAll() throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childgivenvaccines");
            List<ChildGivenVaccine> childGivenVaccines = new ArrayList<ChildGivenVaccine>();

            while (resultSet.next()) {
                ChildGivenVaccine childGivenVaccine = new ChildGivenVaccine(
                        resultSet.getString("childID"),
                        resultSet.getFloat("vaccineAmount"),
                        resultSet.getString("vaccineCode"),
                        resultSet.getString("vaccineName"),
                        resultSet.getDate("clinicDate")
                );
                childGivenVaccines.add(childGivenVaccine);
            }

            database.closeConnection();
            return childGivenVaccines;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public List<ChildGivenVaccine> findAllByClinicDate(Date clinicDate) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childgivenvaccines WHERE clinicDate=\'" + clinicDate + "\'");
            List<ChildGivenVaccine> childGivenVaccines = new ArrayList<ChildGivenVaccine>();

            while (resultSet.next()) {
                ChildGivenVaccine childGivenVaccine = new ChildGivenVaccine(
                        resultSet.getString("childID"),
                        resultSet.getFloat("vaccineAmount"),
                        resultSet.getString("vaccineCode"),
                        resultSet.getString("vaccineName"),
                        resultSet.getDate("clinicDate")
                );
                childGivenVaccines.add(childGivenVaccine);
            }

            database.closeConnection();
            return childGivenVaccines;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public List<ChildGivenVaccine> findAllByVaccineCode(String vaccineCode) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childgivenvaccines WHERE vaccineCode=\'" + vaccineCode + "\'");
            List<ChildGivenVaccine> childGivenVaccines = new ArrayList<ChildGivenVaccine>();

            while (resultSet.next()) {
                ChildGivenVaccine childGivenVaccine = new ChildGivenVaccine(
                        resultSet.getString("childID"),
                        resultSet.getFloat("vaccineAmount"),
                        resultSet.getString("vaccineCode"),
                        resultSet.getString("vaccineName"),
                        resultSet.getDate("clinicDate")
                );
                childGivenVaccines.add(childGivenVaccine);
            }

            database.closeConnection();
            return childGivenVaccines;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public List<ChildGivenVaccine> findAllByChildId(String childId) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childgivenvaccines WHERE childID=\'" + childId + "\'");
            List<ChildGivenVaccine> childGivenVaccines = new ArrayList<ChildGivenVaccine>();

            while (resultSet.next()) {
                ChildGivenVaccine childGivenVaccine = new ChildGivenVaccine(
                        resultSet.getString("childID"),
                        resultSet.getFloat("vaccineAmount"),
                        resultSet.getString("vaccineCode"),
                        resultSet.getString("vaccineName"),
                        resultSet.getDate("clinicDate")
                );
                childGivenVaccines.add(childGivenVaccine);
            }

            database.closeConnection();
            return childGivenVaccines;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

}
