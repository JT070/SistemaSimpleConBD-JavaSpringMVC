package entidad;
/**
 *
 * @author luis.peña
 */
public class Empleado {
    private int idnumEmpleado;
    private int idtienda;
    private String nombre;
    private String cargo;
    private long celular;
    private String email;
    private String sexo;
    
    public Empleado(){
    }

    public Empleado(int idnumEmpleado, int idtienda, String nombre, String cargo, long celular, String email, String sexo) {
        this.idnumEmpleado = idnumEmpleado;
        this.idtienda = idtienda;
        this.nombre = nombre;
        this.cargo = cargo;
        this.celular = celular;
        this.email = email;
        this.sexo = sexo;
    }

    public int getIdnumEmpleado() {
        return idnumEmpleado;
    }

    public void setIdnumEmpleado(int idnumEmpleado) {
        this.idnumEmpleado = idnumEmpleado;
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

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public long getCelular() {
        return celular;
    }

    public void setCelular(long celular) {
        this.celular = celular;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    
}
