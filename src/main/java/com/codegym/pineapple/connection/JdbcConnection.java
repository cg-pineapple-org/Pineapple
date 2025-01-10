package com.codegym.pineapple.connection;

import io.github.cdimascio.dotenv.Dotenv;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcConnection {
    private static final Dotenv dotenv = Dotenv.load();

    private static final String DRIVER = dotenv.get("JDBC_DRIVER");
    private static final String CONNECTION_URL = dotenv.get("JDBC_CONNECTION_URL");
    private static final String USERNAME = dotenv.get("JDBC_USERNAME");
    private static final String PASSWORD = dotenv.get("JDBC_PASSWORD");

    public static Connection getConnection(){
        Connection connection;
        try{
            Class.forName(DRIVER);
            assert CONNECTION_URL != null;
            connection = DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
            return connection;
        }
        catch (ClassNotFoundException e){
            System.out.println("No driver found");
            e.printStackTrace();
        }
        catch (SQLException e){
            System.out.println("Something is wrong");
            e.printStackTrace();
        }
        return null;
    }
}
