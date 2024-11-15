/*
 * Juan Diaz Project
 */
package controller;

import model.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Juan
 */
public class UsuarioDAO {
    
    public boolean cUsuario(Usuario pl) {
        String sql = "INSERT INTO Usuarios (usuario, contra, rol) VALUES (?,?,?)";

        
        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql)) {

            
            stmt.setString(1, pl.getUsuario());
            stmt.setString(2, pl.getContra());
            stmt.setString(3, pl.getRol());
            stmt.executeUpdate();
            
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    public List<Usuario> rUsuario() {

        List<Usuario> pl = new ArrayList<>();
        String sql = "SELECT * FROM Usuarios";

        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {

            
            while (rs.next()) {
                Usuario us = new Usuario(
                        rs.getInt("id"),
                        rs.getString("usuario"),
                        rs.getString("contra"),
                        rs.getString("rol")
                );
                pl.add(us);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pl;

    }
    
    public Usuario validateUsuario (Usuario u) {
        String sql = "SELECT * FROM Usuarios WHERE usuario = ? AND contra = ?";
        Usuario us = null;
        
        System.out.println(u.getUsuario());
        System.out.println(u.getContra());
        
        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql)) {

            stmt.setString(1, u.getUsuario());
            stmt.setString(2, u.getContra());
            
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                us = new Usuario(
                        rs.getInt("id"),
                        rs.getString("usuario"),
                        rs.getString("contra"),
                        rs.getString("rol")
                );
                return us;
            }
            
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return us;
    }

    public boolean uUsuario(Usuario pl) {

        String sql = "UPDATE Usuarios SET nombre = ?, contra = ?, rol = ? WHERE id = ?";

        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql)) {

            stmt.setString(1, pl.getUsuario());
            stmt.setString(2, pl.getContra());
            stmt.setString(3, pl.getRol());
            stmt.setInt(4, pl.getId());
            stmt.executeUpdate();

            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    public boolean dUsuario(int id) {
        String sql = "DELETE FROM usuarios WHERE id = ?";

        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();

            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
}
