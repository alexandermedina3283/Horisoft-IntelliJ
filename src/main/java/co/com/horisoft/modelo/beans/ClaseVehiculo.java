package co.com.horisoft.modelo.beans;

public class ClaseVehiculo {

    private int idClaseVehiculo;
    private String nombreClaseVehiculo;

    public ClaseVehiculo(int idClaseVehiculo, String nombreClaseVehiculo) {
        this.idClaseVehiculo = idClaseVehiculo;
        this.nombreClaseVehiculo = nombreClaseVehiculo;
    }

    public ClaseVehiculo() {
    }

    public int getIdClaseVehiculo() {
        return idClaseVehiculo;
    }

    public void setIdClaseVehiculo(int idClaseVehiculo) {
        this.idClaseVehiculo = idClaseVehiculo;
    }

    public String getNombreClaseVehiculo() {
        return nombreClaseVehiculo;
    }

    public void setNombreClaseVehiculo(String nombreClaseVehiculo) {
        this.nombreClaseVehiculo = nombreClaseVehiculo;
    }

    @Override
    public String toString() {
        return "ClaseVehiculo{" +
                "idClaseVehiculo=" + idClaseVehiculo +
                ", nombreClaseVehiculo='" + nombreClaseVehiculo + '\'' +
                '}';
    }
}
