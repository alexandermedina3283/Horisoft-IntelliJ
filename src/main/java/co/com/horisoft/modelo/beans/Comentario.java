package co.com.horisoft.modelo.beans;


public class Comentario{

    private int idComentario;
    private String fechaComentario;
    private String descripcionComentario;
    private String autorComentario;
    private int idInscripcion;

    public Comentario(int idComentario, String fechaComentario, String descripcionComentario, String autorComentario, int idInscripcion) {
        this.idComentario = idComentario;
        this.fechaComentario = fechaComentario;
        this.descripcionComentario = descripcionComentario;
        this.autorComentario = autorComentario;
        this.idInscripcion = idInscripcion;
    }

    public Comentario() {
    }

    public int getIdComentario() {
        return idComentario;
    }

    public void setIdComentario(int idComentario) {
        this.idComentario = idComentario;
    }

    public String getFechaComentario() {
        return fechaComentario;
    }

    public void setFechaComentario(String fechaComentario) {
        this.fechaComentario = fechaComentario;
    }

    public String getDescripcionComentario() {
        return descripcionComentario;
    }

    public void setDescripcionComentario(String descripcionComentario) {
        this.descripcionComentario = descripcionComentario;
    }

    public String getAutorComentario() {
        return autorComentario;
    }

    public void setAutorComentario(String autorComentario) {
        this.autorComentario = autorComentario;
    }

    public int getIdInscripcion() {
        return idInscripcion;
    }

    public void setIdInscripcion(int idInscripcion) {
        this.idInscripcion = idInscripcion;
    }

    @Override
    public String toString() {
        return "Comentario{" +
                "idComentario=" + idComentario +
                ", fechaComentario=" + fechaComentario +
                ", descripcionComentario='" + descripcionComentario + '\'' +
                ", autorComentario='" + autorComentario + '\'' +
                ", idInscripcion=" + idInscripcion +
                '}';
    }
}
