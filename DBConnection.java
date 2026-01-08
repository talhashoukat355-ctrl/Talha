package com.mycompany.myclassprojects;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
//    private static final String DB_NAME = "ProjectDB";
    // Update these with your database details
    private static final String URL = "jdbc:mysql://localhost:3306/mysql";
    private static final String USER = "root";  // Your MySQL username
    private static final String PASSWORD = "2140";  // Your MySQL password
    
    public static Connection getConnection() throws SQLException {
        try {
            // For MySQL 8.0+
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC Driver not found", e);
        }
    }
}
