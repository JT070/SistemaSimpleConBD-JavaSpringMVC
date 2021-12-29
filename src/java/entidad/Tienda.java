package entidad;

public class Tienda {
    private int idtienda;
    private String nombre;
    private long telefono;
    private String pais;
    private String direccion;
    private String correo;
    private String rfc;

    public Tienda() {
    }
    
    public Tienda(int idtienda, String nombre, long telefono, String pais, String direccion, String correo,String rfc){
        this.idtienda = idtienda;
        this.nombre = nombre;
        this.telefono = telefono;
        this.pais = pais;
        this.direccion = direccion;
        this.correo = correo;
        this.rfc = rfc;        
    }

    public int getIdtienda() {
        return idtienda;
    }

    public void setIdtienda(int idtienda) {
        this.idtienda = idtienda;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public long getTelefono() {
        return telefono;
    }

    public void setTelefono(long telefono) {
        this.telefono = telefono;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
    }
    
}
