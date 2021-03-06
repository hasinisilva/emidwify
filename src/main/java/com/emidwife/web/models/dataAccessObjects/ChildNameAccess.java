package com.emidwife.web.models.dataAccessObjects;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import com.emidwife.web.models.entities.Child;
import com.emidwife.web.models.utilities.Database;


public class ChildNameAccess {
    private Database connection = new Database();
    Child child = new Child();
    
    public List<Child> getChildDataByMotherId(String guardianID) throws SQLException {
    	
        connection.openConnection();
        
        List<Child> children = new ArrayList<Child>();
        try{
            ResultSet resultSet = connection.getData("SELECT * FROM child WHERE guardianID=\'" + guardianID + "\'");
            while(resultSet.next()){
                Child child = new Child();
                child.setChildId(resultSet.getString("childID"));//database column -->childID
                child.setGuardianId(resultSet.getString("guardianID"));
                child.setChildName(resultSet.getString("childName"));
                System.out.println(resultSet.getString("childName"));

                children.add(child);
        }
            
        } 
        catch (SQLException e) {
            e.printStackTrace();
        }
        finally{
            connection.closeConnection();
        }

        return children;
    }
}
