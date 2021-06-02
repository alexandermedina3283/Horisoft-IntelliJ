package co.com.horisoft.modelo.beans;

public class ServiciosZona {

    private int idActividad;
    private String nombreActividad;
    private int idZona;

    public ServiciosZona(int idActividad, String nombreActividad, int idZona) {
        this.idActividad = idActividad;
        this.nombreActividad = nombreActividad;
        this.idZona = idZona;
    }

    public ServiciosZona() {
    }

    public int getIdActividad() {
        return idActividad;
    }

    public void setIdActividad(int idActividad) {
        this.idActividad = idActividad;
    }

    public String getNombreActividad() {
        return nombreActividad;
    }

    public void setNombreActividad(String nombreActividad) {
        this.nombreActividad = nombreActividad;
    }

    public int getIdZona() {
        return idZona;
    }

    public void setIdZona(int idZona) {
        this.idZona = idZona;
    }

    @Override
    public String toString() {
        return "ServiciosConjunto{" +
                "idActividad=" + idActividad +
                ", nombreActividad='" + nombreActividad + '\'' +
                ", idZona='" + idZona + '\'' +
                '}';
    }
}
