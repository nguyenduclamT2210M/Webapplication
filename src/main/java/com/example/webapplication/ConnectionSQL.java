package com.example.webapplication;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionSQL {
    public static Connection getMySQLConnection () throws SQLException {
        Connection conn = null;
        String hostName ="localhost";
        String dbName ="account";
        String username ="root";
        String password ="";
        String connURL = "jdbc:mysql://"+hostName+":3306/"+dbName;
        conn = DriverManager.getConnection(connURL,username,password);
        return conn;
    }

    public static void main(String[] args) throws SQLException {
        if(getMySQLConnection()!=null){
            System.out.println("Ket noi thanh cong!");
        }
    }
}