package MedicalReference;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PatientDAOImpl extends AbstractDAOA implements PatientDAO {

    @Override
    public long create(Patient patient) {
        String sql = "INSERT INTO patients (nom, maladieDescription) VALUES (?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            statement.setString(1, patient.getNom());
            statement.setString(2, patient.getMaladieDescription());
            int affectedRows = statement.executeUpdate();
            if (affectedRows > 0) {
                try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        return generatedKeys.getLong(1);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0L;
    }

    @Override
    public Patient find(int id) {
        String sql = "SELECT * FROM patients WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new Patient(rs.getInt("id"), rs.getString("nom"), rs.getString("maladieDescription"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean update(Patient patient) {
        String sql = "UPDATE patients SET nom = ?, maladieDescription = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, patient.getNom());
            statement.setString(2, patient.getMaladieDescription());
            statement.setInt(3, patient.getId());
            int affectedRows = statement.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "DELETE FROM patients WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            int affectedRows = statement.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Patient> getAll() {
        List<Patient> patients = new ArrayList<>();
        String sql = "SELECT * FROM patients";
        try (Statement statement = connection.createStatement(); ResultSet rs = statement.executeQuery(sql)) {
            while (rs.next()) {
                patients.add(new Patient(rs.getInt("id"), rs.getString("nom"), rs.getString("maladieDescription")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return patients;
    }
    
    public Patient authenticate(int id, String password) {
        String sql = "SELECT * FROM patients WHERE id = ? AND password = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new Patient(rs.getInt("id"), rs.getString("nom"), rs.getString("maladieDescription"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    
   
}

