package com.emidwife.web.models.dataAccessObjects;

import com.emidwife.web.models.entities.Child;
import com.emidwife.web.models.utilities.Database;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hasini on 11/18/16.
 */

public class ChildDAO {

    private Database database = new Database();

    public List<Child> findAll() throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM child");
            List<Child> children = new ArrayList<Child>();

            while (resultSet.next()) {
                Child mother = new Child(
                        resultSet.getString("childID"),
                        resultSet.getFloat("childBirthWeight"),
                        resultSet.getDate("childDateofDelivery"),
                        resultSet.getString("childFatherID"),
                        resultSet.getString("childName"),
                        resultSet.getString("childNotes"),
                        resultSet.getString("childPicture"),
                        resultSet.getDate("childRegisteredDate"),
                        resultSet.getString("guardianID")
                );
                children.add(mother);
            }

            database.closeConnection();
            return children;

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            database.closeConnection();
        }

        return null;
    }

    public List<Child> findAllByGuardianID(String guardianId) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM child WHERE guardianID=\'" + guardianId + "\'");
            List<Child> children = new ArrayList<Child>();

            while (resultSet.next()) {
                Child mother = new Child(
                        resultSet.getString("childID"),
                        resultSet.getFloat("childBirthWeight"),
                        resultSet.getDate("childDateofDelivery"),
                        resultSet.getString("childFatherID"),
                        resultSet.getString("childName"),
                        resultSet.getString("childNotes"),
                        resultSet.getString("childPicture"),
                        resultSet.getDate("childRegisteredDate"),
                        resultSet.getString("guardianID")
                );
                children.add(mother);
            }

            database.closeConnection();
            return children;

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            database.closeConnection();
        }

        return null;
    }

    public List<Child> findAllByChildRegisterdedDate(Date childRegisteredDate) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM child WHERE childRegisteredDate=\'" + childRegisteredDate + "\'");
            List<Child> children = new ArrayList<Child>();

            while (resultSet.next()) {
                Child mother = new Child(
                        resultSet.getString("childID"),
                        resultSet.getFloat("childBirthWeight"),
                        resultSet.getDate("childDateofDelivery"),
                        resultSet.getString("childFatherID"),
                        resultSet.getString("childName"),
                        resultSet.getString("childNotes"),
                        resultSet.getString("childPicture"),
                        resultSet.getDate("childRegisteredDate"),
                        resultSet.getString("guardianID")
                );
                children.add(mother);
            }

            database.closeConnection();
            return children;

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            database.closeConnection();
        }

        return null;
    }

    public Child findByChildId(String childId) throws SQLException {
        database.openConnection();

        try {
            ResultSet resultSet = database.getData("SELECT * FROM child WHERE childID=\'" + childId + "\'");
            resultSet.next();
            Child child = new Child(
                    resultSet.getString("childID"),
                    resultSet.getFloat("childBirthWeight"),
                    resultSet.getDate("childDateofDelivery"),
                    resultSet.getString("childFatherID"),
                    resultSet.getString("childName"),
                    resultSet.getString("childNotes"),
                    resultSet.getString("childPicture"),
                    resultSet.getDate("childRegisteredDate"),
                    resultSet.getString("guardianID")
            );

            database.closeConnection();
            return child;

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            database.closeConnection();
        }

        return null;
    }
}
