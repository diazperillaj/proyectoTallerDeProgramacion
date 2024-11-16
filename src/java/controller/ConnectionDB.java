/*
 * Juan Diaz Project
 */
package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {

    private static final String URL = "jdbc:mysql://localhost:3306/terminalTransporteDB?allowPublicKeyRetrieval=true&useSSL=false";
    private static final String USER = "root"; 
    private static final String PASSWORD = "1234";

    public static Connection getConnection() throws SQLException {
        try {
            System.out.println("In ConnectionDB");
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
            
        } catch (ClassNotFoundException e) {
            
            System.out.println("Error al cargar el driver JDBC");
            e.printStackTrace();
            throw new SQLException("No se pudo cargar el driver JDBC", e);
        }
    }
}