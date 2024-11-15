/*
 * Juan Diaz Project
 */
package controller;

import model.Empresa;
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
public class EmpresaDAO {

    public boolean cEmpresa(Empresa pl) {
        String sql = "INSERT INTO empresas (nombre, NIT, telefono, correo, webSite, direccion, postal) VALUES (?,?,?,?,?,?,?)";

        System.out.println("In controller.EmpresaDAO cEmpresa");
        
        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql)) {

            stmt.setString(1, pl.getNombre());
            stmt.setInt(2, pl.getNIT());
            stmt.setInt(3, pl.getTelefono());
            stmt.setString(4, pl.getCorreo());
            stmt.setString(5, pl.getWebSite());
            stmt.setString(6, pl.getDireccion());
            stmt.setInt(7, pl.getPostal());
            stmt.executeUpdate();
            
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    public List<Empresa> rEmpresa() {

        List<Empresa> pl = new ArrayList<>();
        String sql = "SELECT * FROM empresas";

        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Empresa empresa = new Empresa(
                        rs.getInt("id"),
                        rs.getString("nombre"),
                        rs.getInt("NIT"),
                        rs.getInt("telefono"),
                        rs.getString("correo"),
                        rs.getString("webSite"),
                        rs.getString("direccion"),
                        rs.getInt("postal")
                );
                pl.add(empresa);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pl;

    }

    public boolean uEmpresa(Empresa pl) {

        String sql = "UPDATE empresas SET nombre = ?, NIT = ?, telefono = ?, correo = ?, webSite = ?, direccion = ?, postal = ? WHERE id = ?";

        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql)) {

            stmt.setString(1, pl.getNombre());
            stmt.setInt(2, pl.getNIT());
            stmt.setInt(3, pl.getTelefono());
            stmt.setString(4, pl.getCorreo());
            stmt.setString(5, pl.getWebSite());
            stmt.setString(6, pl.getDireccion());
            stmt.setInt(7, pl.getPostal());
            stmt.setInt(8, pl.getId());
            stmt.executeUpdate();

            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    public boolean dEmpresa(int id) {
        String sql = "DELETE FROM empresas WHERE id = ?";

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
