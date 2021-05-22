package co.com.horisoft.modelo.beans;

import java.sql.Date;

public class SalonSocial {

    private Date fechaPago;
    private String numeroComprobante;
    private int valorDeposito;
    private int idInscripcion;

    public SalonSocial(Date fechaPago, String numeroComprobante, int valorDeposito, int idInscripcion) {
        this.fechaPago = fechaPago;
        this.numeroComprobante = numeroComprobante;
        this.valorDeposito = valorDeposito;
        this.idInscripcion = idInscripcion;
    }

    public SalonSocial() {
    }

    public Date getFechaPago() {
        return fechaPago;
    }

    public void setFechaPago(Date fechaPago) {
        this.fechaPago = fechaPago;
    }

    public String getNumeroComprobante() {
        return numeroComprobante;
    }

    public void setNumeroComprobante(String numeroComprobante) {
        this.numeroComprobante = numeroComprobante;
    }

    public int getValorDeposito() {
        return valorDeposito;
    }

    public void setValorDeposito(int valorDeposito) {
        this.valorDeposito = valorDeposito;
    }

    public int getIdInscripcion() {
        return idInscripcion;
    }

    public void setIdInscripcion(int idInscripcion) {
        this.idInscripcion = idInscripcion;
    }


}
