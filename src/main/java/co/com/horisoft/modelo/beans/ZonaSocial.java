package co.com.horisoft.modelo.beans;

public class ZonaSocial {

    private int idZona;
    private String nombreZona;

    public ZonaSocial(int idZona, String nombreZona) {
        this.idZona = idZona;
        this.nombreZona = nombreZona;
    }

    public ZonaSocial() {
    }

    public int getIdZona() {
        return idZona;
    }

    public void setIdZona(int idZona) {
        this.idZona = idZona;
    }

    public String getNombreZona() {
        return nombreZona;
    }

    public void setNombreZona(String nombreZona) {
        this.nombreZona = nombreZona;
    }

    @Override
    public String toString() {
        return "ZonaSocial{" +
                "idZona=" + idZona +
                ", nombreZona='" + nombreZona + '\'' +
                '}';
    }
}
