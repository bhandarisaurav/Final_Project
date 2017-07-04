package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by saura on 2/12/2017.
 */
public class DatabaseConnection {

    String url = "jdbc:mysql://localhost:3306/java_project";
    String userName = "root";
    String password = "";

    Connection connection = null;

    public DatabaseConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, userName, password);
            System.out.println("Database Connected");
        } catch (SQLException e) {
            System.out.println("Database Not Connected");
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            System.out.println("Database Not Connected");
            e.printStackTrace();
        }

    }

    public PreparedStatement getPreparedStatement(String query)
    {
        PreparedStatement pstm = null;
        try {
            pstm = connection.prepareStatement(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pstm;
    }

}
