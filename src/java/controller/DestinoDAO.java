/*
 * Juan Diaz Project
 */
package controller;

import java.security.Timestamp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.Destino;

/**
 *
 * @author Juan
 */
public class DestinoDAO {

    public boolean c(Destino pl) {
        String sql = "INSERT INTO destinos (destino, precio, fecha_salida) VALUES (?,?,?)";

        System.out.println("In controller.DestinoDAO cDestino");

        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql)) {

            stmt.setString(1, pl.getLugar());
            stmt.setDouble(2, pl.getPrecio());
            stmt.setString(3, pl.getFecha().toString());
            stmt.executeUpdate();

            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    public List<Destino> rDestino() {

        List<Destino> pl = new ArrayList<>();
        String sql = "SELECT * FROM destinos";

        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Date fecha = new Date(rs.getTimestamp("fecha_salida").getTime());
                Destino destino = new Destino(
                        rs.getInt("id"),
                        rs.getString("destino"),
                        rs.getDouble("precio"),
                        fecha,
                        fecha
                );
                pl.add(destino);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pl;

    }

    public Destino soloDestino(int id) {

        String sql = "SELECT * FROM destinos WHERE id = ?";
        Destino us = null;
        
        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql)) {

            stmt.setInt(1, id);
            
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                Date fecha = new Date(rs.getTimestamp("fecha_salida").getTime());
                us = new Destino(
                        rs.getInt("id"),
                        rs.getString("destino"),
                        rs.getDouble("precio"),
                        fecha,
                        fecha
                );
                return us;
            }
            
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return us;

    }
    
    public boolean uDestino(Destino pl) {

        String sql = "UPDATE destinos SET destino = ?, precio= ?, fecha_salida = ? WHERE id = ?";

        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql)) {

            stmt.setString(1, pl.getLugar());
            stmt.setDouble(2, pl.getPrecio());
            stmt.setString(3, pl.getFecha().toString());
            stmt.setInt(4, pl.getId());
            stmt.executeUpdate();

            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    public boolean dDestino(int id) {
        String sql = "DELETE FROM destinos WHERE id = ?";

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
