package MedicalReference;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Scanner;

public class DBSingleConnection {
	

    private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/medicalreferencedb";
    private static final String DATABASE_USER = "root";
    private static final String DATABASE_PASSWORD = "2002";
    
    private static Connection connection = null;

    private DBSingleConnection() {
        try {
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USER, DATABASE_PASSWORD);
            System.out.println("Database connected successfully!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    
    
    public static Connection getConnection() {
        if (connection == null) {
            new DBSingleConnection();
        }
        return connection;
    }
    
    
    
    public static void closeConnection() {
        if (connection != null) {
            try {
                connection.close();
                System.out.println("Database connection closed.");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // Ajoutez cette méthode pour vérifier la connexion à la base de données
    public static void checkDatabaseConnection() {
        Connection connection = getConnection();
        if (connection != null) {
            System.out.println("Connexion à la base de données réussie.");
        } else {
            System.out.println("Échec de la connexion à la base de données.");
        }
    }
}
