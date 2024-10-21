package MedicalReference;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MaladieDAOImpl extends AbstractDAOA implements MaladieDAO {

    @Override
    public long create(Maladie maladie) {
        String sql = "INSERT INTO maladies (description, traitementRecommande) VALUES (?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            statement.setString(1, maladie.getDescription());
            statement.setString(2, maladie.getTraitementRecommande());
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
    public Maladie find(int id) {
        String sql = "SELECT * FROM maladies WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new Maladie(rs.getInt("id"), rs.getString("description"), rs.getString("traitementRecommande"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean update(Maladie maladie) {
        String sql = "UPDATE maladies SET description = ?, traitementRecommande = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, maladie.getDescription());
            statement.setString(2, maladie.getTraitementRecommande());
            statement.setInt(3, maladie.getId());
            int affectedRows = statement.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "DELETE FROM maladies WHERE id = ?";
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
    public List<Maladie> getAll() {
        List<Maladie> maladies = new ArrayList<>();
        String sql = "SELECT * FROM maladies";
        try (Statement statement = connection.createStatement(); ResultSet rs = statement.executeQuery(sql)) {
            while (rs.next()) {
                maladies.add(new Maladie(rs.getInt("id"), rs.getString("description"), rs.getString("traitementRecommande")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return maladies;
    }
}
