package co.com.horisoft.modelo.beans;

import java.sql.Date;

public class Inscripcion {

    private int idInscripcion;
    private String fechaInscripcion;
    private Date fechaEntrada;
    private String horaEntrada;
    private Date fechaSalida;
    private String horaSalida;
    private String estadoInscripcion;
    private int idResidente;
    private int idActividad;


    public Inscripcion(int idInscripcion, String fechaInscripcion, Date fechaEntrada, String horaEntrada, Date fechaSalida, String horaSalida, String estadoInscripcion, int idResidente, int idActividad) {
        this.idInscripcion = idInscripcion;
        this.fechaInscripcion = fechaInscripcion;
        this.fechaEntrada = fechaEntrada;
        this.horaEntrada = horaEntrada;
        this.fechaSalida = fechaSalida;
        this.horaSalida = horaSalida;
        this.estadoInscripcion = estadoInscripcion;
        this.idResidente = idResidente;
        this.idActividad = idActividad;

    }

    public Inscripcion() {
    }

    public int getIdInscripcion() {
        return idInscripcion;
    }

    public void setIdInscripcion(int idInscripcion) {
        this.idInscripcion = idInscripcion;
    }

    public String getFechaInscripcion() {
        return fechaInscripcion;
    }

    public void setFechaInscripcion(String fechaInscripcion) {
        this.fechaInscripcion = fechaInscripcion;
    }

    public Date getFechaEntrada() {
        return fechaEntrada;
    }

    public void setFechaEntrada(Date fechaEntrada) {
        this.fechaEntrada = fechaEntrada;
    }

    public String getHoraEntrada() {
        return horaEntrada;
    }

    public void setHoraEntrada(String horaEntrada) {
        this.horaEntrada = horaEntrada;
    }

    public Date getFechaSalida() {
        return fechaSalida;
    }

    public void setFechaSalida(Date fechaSalida) {
        this.fechaSalida = fechaSalida;
    }

    public String getHoraSalida() {
        return horaSalida;
    }

    public void setHoraSalida(String horaSalida) {
        this.horaSalida = horaSalida;
    }

    public String getEstadoInscripcion() {
        return estadoInscripcion;
    }

    public void setEstadoInscripcion(String estadoInscripcion) {
        this.estadoInscripcion = estadoInscripcion;
    }

    public int getIdResidente() {
        return idResidente;
    }

    public void setIdResidente(int idResidente) {
        this.idResidente = idResidente;
    }

    public int getIdActividad() {
        return idActividad;
    }

    public void setIdActividad(int idActividad) {
        this.idActividad = idActividad;
    }


    @Override
    public String toString() {
        return "Inscripcion{" +
                "idInscripcion=" + idInscripcion +
                ", fechaInscripcion='" + fechaInscripcion + '\'' +
                ", fechaEntrada=" + fechaEntrada +
                ", horaEntrada='" + horaEntrada + '\'' +
                ", fechaSalida=" + fechaSalida +
                ", horaSalida='" + horaSalida + '\'' +
                ", estadoInscripcion='" + estadoInscripcion + '\'' +
                ", idResidente=" + idResidente +
                ", idActividad=" + idActividad +
                '}';
    }
}
