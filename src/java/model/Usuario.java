package model;

public class Usuario {
    
    private int id;
    private String usuario;
    private String contra;
    private String rol;

    public Usuario(int id, String usuario, String contra, String rol) {
        this.id = id;
        this.usuario = usuario;
        this.contra = contra;
        this.rol = rol;
    }

    public Usuario(String usuario, String contra) {
        this.usuario = usuario;
        this.contra = contra;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
    
}
