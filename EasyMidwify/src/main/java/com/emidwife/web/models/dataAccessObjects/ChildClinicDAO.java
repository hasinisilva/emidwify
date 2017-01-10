package com.emidwife.web.models.dataAccessObjects;

import com.emidwife.web.models.entities.ChildClinic;
import com.emidwife.web.models.utilities.Database;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hasini on 11/19/16.
 */
public class ChildClinicDAO {

    private Database database = new Database();

    public List<ChildClinic> findAll() throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childclinic");
            List<ChildClinic> childClinics = new ArrayList<ChildClinic>();

            while (resultSet.next()) {
                ChildClinic childClinic = new ChildClinic(
                        resultSet.getString("childID"),
                        resultSet.getString("age"),
                        resultSet.getDate("clinicDate"),
                        resultSet.getDate("updatedDate"),
                        resultSet.getFloat("weight")
                );
                childClinics.add(childClinic);
            }

            database.closeConnection();
            return childClinics;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public List<ChildClinic> findAllByChildId(String childId) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childclinic WHERE childID=\'" + childId + "\'");
            List<ChildClinic> childClinics = new ArrayList<ChildClinic>();

            while (resultSet.next()) {
                ChildClinic childClinic = new ChildClinic(
                        resultSet.getString("childID"),
                        resultSet.getString("age"),
                        resultSet.getDate("clinicDate"),
                        resultSet.getDate("updatedDate"),
                        resultSet.getFloat("weight")
                );
                childClinics.add(childClinic);
            }

            database.closeConnection();
            return childClinics;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public List<ChildClinic> findAllByClinicDate(Date clinicDate) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childclinic WHERE clinicDate=\'" + clinicDate + "\'");
            List<ChildClinic> childClinics = new ArrayList<ChildClinic>();

            while (resultSet.next()) {
                ChildClinic childClinic = new ChildClinic(
                        resultSet.getString("childID"),
                        resultSet.getString("age"),
                        resultSet.getDate("clinicDate"),
                        resultSet.getDate("updatedDate"),
                        resultSet.getFloat("weight")
                );
                childClinics.add(childClinic);
            }

            database.closeConnection();
            return childClinics;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }

    public List<ChildClinic> findAllByUpdatedDate(Date updatedDate) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM childclinic WHERE updatedDate=\'" + updatedDate + "\'");
            List<ChildClinic> childClinics = new ArrayList<ChildClinic>();

            while (resultSet.next()) {
                ChildClinic childClinic = new ChildClinic(
                        resultSet.getString("childID"),
                        resultSet.getString("age"),
                        resultSet.getDate("clinicDate"),
                        resultSet.getDate("updatedDate"),
                        resultSet.getFloat("weight")
                );
                childClinics.add(childClinic);
            }

            database.closeConnection();
            return childClinics;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.closeConnection();
        return null;
    }
}
