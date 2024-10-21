package MedicalReference;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TraitementDAOImpl extends AbstractDAOA implements TraitementDAO {

    @Override
    public long create(Traitement traitement) {
        String sql = "INSERT INTO traitements (nom, prix, paysDispensateur) VALUES (?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            statement.setString(1, traitement.getNom());
            statement.setDouble(2, traitement.getPrix());
            statement.setString(3, traitement.getPaysDispensateur());
            
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
    public Traitement find(int id) {
        String sql = "SELECT * FROM traitements WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new Traitement(rs.getInt("id"), rs.getString("nom"), rs.getDouble("prix"), rs.getString("paysDispensateur"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean update(Traitement traitement) {
        String sql = "UPDATE traitements SET nom = ?, prix = ?, paysDispensateur = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, traitement.getNom());
            statement.setDouble(2, traitement.getPrix());
            statement.setString(3, traitement.getPaysDispensateur());
            statement.setInt(4, traitement.getId());
            
            int affectedRows = statement.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "DELETE FROM traitements WHERE id = ?";
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
    public List<Traitement> getAll() {
        List<Traitement> traitements = new ArrayList<>();
        String sql = "SELECT * FROM traitements";
        try (Statement statement = connection.createStatement(); ResultSet rs = statement.executeQuery(sql)) {
            while (rs.next()) {
                traitements.add(new Traitement(rs.getInt("id"), rs.getString("nom"), rs.getDouble("prix"), rs.getString("paysDispensateur")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return traitements;
    }
}
