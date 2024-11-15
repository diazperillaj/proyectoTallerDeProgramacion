package model;



public class Empresa {
    
    private int id;
    private String nombre;
    private int NIT;
    private int telefono;
    private String correo;
    private String webSite;
    private String direccion;
    private int postal;

    public Empresa() {
    }

    
    
    public Empresa(String nombre, int NIT, int telefono, String correo, String webSite, String direccion, int postal) {
        this.nombre = nombre;
        this.NIT = NIT;
        this.telefono = telefono;
        this.correo = correo;
        this.webSite = webSite;
        this.direccion = direccion;
        this.postal = postal;
    }

    public Empresa(int id, String nombre, int NIT, int telefono, String correo, String webSite, String direccion, int postal) {
        this.id = id;
        this.nombre = nombre;
        this.NIT = NIT;
        this.telefono = telefono;
        this.correo = correo;
        this.webSite = webSite;
        this.direccion = direccion;
        this.postal = postal;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getNIT() {
        return NIT;
    }

    public void setNIT(int NIT) {
        this.NIT = NIT;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getWebSite() {
        return webSite;
    }

    public void setWebSite(String webSite) {
        this.webSite = webSite;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getPostal() {
        return postal;
    }

    public void setPostal(int postal) {
        this.postal = postal;
    }

    
    
}
