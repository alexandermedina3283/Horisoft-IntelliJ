package co.com.horisoft.modelo;

import java.sql.Date;
import java.sql.Time;

public class Inscripcion {

    private int idInscripcion;
    private Date fechaInscripcion;
    private Date fechaEntrada;
    private Time horaEntrada;
    private Date fechaSalida;
    private Time horaSalida;
    private String estadoInscripcion;
    private int idResidente;
    private int idActividad;

    public Inscripcion(int idInscripcion, Date fechaInscripcion, Date fechaEntrada, Time horaEntrada, Date fechaSalida, Time horaSalida, String estadoInscripcion, int idResidente, int idActividad) {
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

    public Date getFechaInscripcion() {
        return fechaInscripcion;
    }

    public void setFechaInscripcion(Date fechaInscripcion) {
        this.fechaInscripcion = fechaInscripcion;
    }

    public Date getFechaEntrada() {
        return fechaEntrada;
    }

    public void setFechaEntrada(Date fechaEntrada) {
        this.fechaEntrada = fechaEntrada;
    }

    public Time getHoraEntrada() {
        return horaEntrada;
    }

    public void setHoraEntrada(Time horaEntrada) {
        this.horaEntrada = horaEntrada;
    }

    public Date getFechaSalida() {
        return fechaSalida;
    }

    public void setFechaSalida(Date fechaSalida) {
        this.fechaSalida = fechaSalida;
    }

    public Time getHoraSalida() {
        return horaSalida;
    }

    public void setHoraSalida(Time horaSalida) {
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
                ", fechaInscripcion=" + fechaInscripcion +
                ", fechaEntrada=" + fechaEntrada +
                ", horaEntrada=" + horaEntrada +
                ", fechaSalida=" + fechaSalida +
                ", horaSalida=" + horaSalida +
                ", estadoInscripcion='" + estadoInscripcion + '\'' +
                ", idResidente=" + idResidente +
                ", idActividad=" + idActividad +
                '}';
    }
}
