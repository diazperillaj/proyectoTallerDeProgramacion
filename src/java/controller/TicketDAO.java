/*
 * Juan Diaz Project
 */
package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Ticket;

/**
 *
 * @author Juan
 */
public class TicketDAO {
    
    public boolean c(Ticket pl) {
        String sql = "INSERT INTO tickets (id_empresas, id_usuarios, id_destino) VALUES (?,?,?)";

        System.out.println("In controller.TicketDAO cTicket");
        
        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql)) {

            stmt.setInt(1, pl.getId_empresa());
            stmt.setInt(2, pl.getId_usuario());
            stmt.setInt(3, pl.getId_destino());
            stmt.executeUpdate();
            
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    public List<Ticket> rTicket() {

        List<Ticket> pl = new ArrayList<>();
        String sql = "SELECT tickets.id, tickets.id_empresas, tickets.id_usuarios, tickets.id_destino, empresas.nombre, usuarios.usuario, destinos.destino, destinos.precio, destinos.fecha_salida FROM tickets "
                + "JOIN Empresas ON tickets.id_empresas = empresas.id "
                + "JOIN Usuarios ON tickets.id_usuarios = usuarios.id "
                + "JOIN Destinos ON tickets.id_destino = destinos.id;";

        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Ticket ticket = new Ticket(
                        rs.getInt("id"),
                        rs.getInt("id_empresas"),
                        rs.getInt("id_usuarios"),
                        rs.getInt("id_destino"),
                        rs.getString("nombre"),
                        rs.getString("usuario"),
                        rs.getString("destino"),
                        rs.getDouble("precio"),
                        rs.getDate("fecha_salida"),
                        rs.getTime("fecha_salida")
                );
                pl.add(ticket);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pl;

    }

    public boolean uTicket(Ticket pl) {

        String sql = "UPDATE tickets SET id_empresas = ?, id_usuarios = ?, id_destino = ? WHERE id = ?";

        try (Connection conexion = ConnectionDB.getConnection(); PreparedStatement stmt = conexion.prepareStatement(sql)) {

            stmt.setInt(1, pl.getId_empresa());
            stmt.setInt(2, pl.getId_usuario());
            stmt.setInt(3, pl.getId_destino());
            stmt.setInt(4, pl.getId());
            stmt.executeUpdate();

            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    public boolean dTicket(int id) {
        String sql = "DELETE FROM tickets WHERE id = ?";

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
