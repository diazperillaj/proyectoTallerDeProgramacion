/*
 * Juan Diaz Project
 */
package model;

/**
 *
 * @author Juan
 */

import java.time.LocalDateTime;
import java.util.Date;

public class Ticket {
    
    private int id;
    private int id_empresa;
    private int id_usuario;
    private int id_destino;
    private String empresa;
    private String cliente;
    private String destino;
    private double precio;
    private Date fecha_salida;
    private Date hora_salida;

    public Ticket(int id, int id_empresa, int id_usuario, int id_destino, String empresa, String cliente, String destino, double precio, Date fecha_salida, Date hora_salida) {
        this.id = id;
        this.id_empresa = id_empresa;
        this.id_usuario = id_usuario;
        this.id_destino = id_destino;
        this.empresa = empresa;
        this.cliente = cliente;
        this.destino = destino;
        this.precio = precio;
        this.fecha_salida = fecha_salida;
        this.hora_salida = hora_salida;
    }

    public Ticket(int id_empresa, int id_usuario, int id_destino) {
        this.id_empresa = id_empresa;
        this.id_usuario = id_usuario;
        this.id_destino = id_destino;
    } 
    
    public Ticket() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_empresa() {
        return id_empresa;
    }

    public void setId_empresa(int id_empresa) {
        this.id_empresa = id_empresa;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public int getId_destino() {
        return id_destino;
    }

    public void setId_destino(int id_destino) {
        this.id_destino = id_destino;
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public Date getFecha_salida() {
        return fecha_salida;
    }

    public void setFecha_salida(Date fecha_salida) {
        this.fecha_salida = fecha_salida;
    }

    public Date getHora_salida() {
        return hora_salida;
    }

    public void setHora_salida(Date hora_salida) {
        this.hora_salida = hora_salida;
    }
    
    
}
