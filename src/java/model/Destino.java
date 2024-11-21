/*
 * Juan Diaz Project
 */
package model;

import java.util.Date;

/**
 *
 * @author Juan
 */
public class Destino {
    
    private int id;
    private String lugar;
    private double precio;
    private Date fecha;
    private Long hora;

    public Destino(int id, String lugar, double precio, Date fecha) {
        this.id = id;
        this.lugar = lugar;
        this.precio = precio;
        this.fecha = fecha;
        this.hora = fecha.getTime();
    }

    public Destino(String lugar, double precio, Date fecha) {
        this.lugar = lugar;
        this.precio = precio;
        this.fecha = fecha;
        this.hora = fecha.getTime();
    }
    
    public Destino() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Long getHora() {
        return hora;
    }

    public void setHora(Date hora) {
        this.hora = hora.getTime();
    }
    
    
}
