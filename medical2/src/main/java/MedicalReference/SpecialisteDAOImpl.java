package MedicalReference;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SpecialisteDAOImpl extends AbstractDAOA implements SpecialisteDAO {

    @Override
    public long create(Specialiste specialiste) {
        String sql = "INSERT INTO specialistes (nom, specialite, pays) VALUES (?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            statement.setString(1, specialiste.getNom());
            statement.setString(2, specialiste.getSpecialite());
            statement.setString(3, specialiste.getPays());
            
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
    public Specialiste find(int id) {
        String sql = "SELECT * FROM specialistes WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new Specialiste(rs.getInt("id"), rs.getString("nom"), rs.getString("specialite"), rs.getString("pays"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean update(Specialiste specialiste) {
        String sql = "UPDATE specialistes SET nom = ?, specialite = ?, pays = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, specialiste.getNom());
            statement.setString(2, specialiste.getSpecialite());
            statement.setString(3, specialiste.getPays());
            statement.setInt(4, specialiste.getId());
            
            int affectedRows = statement.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "DELETE FROM specialistes WHERE id = ?";
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
    public List<Specialiste> getAll() {
        List<Specialiste> specialistes = new ArrayList<>();
        String sql = "SELECT * FROM specialistes";
        try (Statement statement = connection.createStatement(); ResultSet rs = statement.executeQuery(sql)) {
            while (rs.next()) {
                specialistes.add(new Specialiste(rs.getInt("id"), rs.getString("nom"), rs.getString("specialite"), rs.getString("pays")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return specialistes;
    }
    
    public Specialiste authenticate(int id, String password) {
        String sql = "SELECT * FROM specialistes WHERE id = ? AND password = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new Specialiste(rs.getInt("id"), rs.getString("nom"), rs.getString("specialite"), rs.getString("pays"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

   
    
    
}
