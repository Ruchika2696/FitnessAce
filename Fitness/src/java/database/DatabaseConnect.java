/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author mypc
 */
import java.sql.Connection;  
import java.sql.DriverManager;
import java.sql.SQLException;
public class DatabaseConnect {
    
    public static Connection dbconnect() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fitnessace","root","");
return con;
    }
}
