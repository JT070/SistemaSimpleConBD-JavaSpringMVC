package entidad;

import java.sql.Date;

/**
 * @author JT
 */
public class Celular {
    
    private int idcelular;
    private int idnumEmpleado;
    private int idcliente;
    private String nombre;
    private String sisoperativo;
    private String marca;
    private String memoria;
    private double precio;
    private String compania;
    private String color;
    private int cantidadcamaras;
    private int pulgadas;
    private String fechaventa;
    private String pixeles;

    public Celular () {}

    public Celular (int idcelular, int idnumEmpleado, int idcliente, String nombre, String sisoperativo, String marca, String memoria, double precio, String compania, String color, int cantidadcamaras, int pulgadas, String fechaventa, String pixeles) {
        this.idcelular = idcelular;
        this.idnumEmpleado = idnumEmpleado;
        this.idcliente = idcliente;
        this.nombre = nombre;
        this.sisoperativo = sisoperativo;
        this.marca = marca;
        this.memoria = memoria;
        this.precio = precio;
        this.compania = compania;
        this.color = color;
        this.cantidadcamaras = cantidadcamaras;
        this.pulgadas = pulgadas;
        this.fechaventa = fechaventa;
        this.pixeles = pixeles;
    }

    public int getIdcelular() {
        return idcelular;
    }

    public void setIdcelular(int idcelular) {
        this.idcelular = idcelular;
    }

    public int getIdnumEmpleado() {
        return idnumEmpleado;
    }

    public void setIdnumEmpleado(int idnumEmpleado) {
        this.idnumEmpleado = idnumEmpleado;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSisoperativo() {
        return sisoperativo;
    }

    public void setSisoperativo(String sisoperativo) {
        this.sisoperativo = sisoperativo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getMemoria() {
        return memoria;
    }

    public void setMemoria(String memoria) {
        this.memoria = memoria;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getCompania() {
        return compania;
    }

    public void setCompania(String compania) {
        this.compania = compania;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getCantidadcamaras() {
        return cantidadcamaras;
    }

    public void setCantidadcamaras(int cantidadcamaras) {
        this.cantidadcamaras = cantidadcamaras;
    }

    public int getPulgadas() {
        return pulgadas;
    }

    public void setPulgadas(int pulgadas) {
        this.pulgadas = pulgadas;
    }

    public String getFechaventa() {
        return fechaventa;
    }

    public void setFechaventa(String fechaventa) {
        this.fechaventa = fechaventa;
    }

    public String getPixeles() {
        return pixeles;
    }

    public void setPixeles(String pixeles) {
        this.pixeles = pixeles;
    }   
}