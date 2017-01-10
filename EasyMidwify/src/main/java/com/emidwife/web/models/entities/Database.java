package com.emidwife.web.models.entities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by hasini on 9/16/16.
 */

public class Database {

    private String hostname;
    private String database;
    private String username;
    private String password;

    private Connection connection = null;

    public Database() {
        hostname = "localhost";
        database = "emidwify";
        username = "root";
        password = "password";
    }

    public Database(String hostname, String database, String username, String password) {
        this.hostname = hostname;
        this.database = database;
        this.username = username;
        this.password = password;
    }

    public void openConnection() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        connection = DriverManager.getConnection("jdbc:mysql://" + hostname + "/" + database + "?user=" +
                username + "&password=" + password);
    }
   
    public ResultSet getData(String query) throws SQLException {
        return connection.createStatement().executeQuery(query);
    }

    public void insertData(String query) throws SQLException {
        connection.createStatement().executeUpdate(query);
    }

    public void updateData(String query) throws SQLException {
        connection.createStatement().executeUpdate(query);
    }

    public void closeConnection() throws SQLException {
        connection.close();
    }

}
