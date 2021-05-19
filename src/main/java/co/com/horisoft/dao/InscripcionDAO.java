package co.com.horisoft.dao;

import co.com.horisoft.util.Conexion;
import co.com.horisoft.modelo.Inscripcion;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InscripcionDAO {

    private Connection connection;
    private PreparedStatement statement;
    private boolean estadoOperacion;

    public boolean guardar(Inscripcion inscripcion) throws SQLException {
        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="insert into inscripcion (id_inscripcion,fecha_inicioActividad,hora_inicioActividad,fecha_finActividad,hora_finActividad,estado_inscripcion,id_residente,id_actividad) values (?,?,?,?,?,?,?,?)";
            statement=connection.prepareStatement(sql);

            statement.setString(1, null);
            statement.setDate(2, inscripcion.getFechaEntrada());
            statement.setString(3, inscripcion.getHoraEntrada());
            statement.setDate(4, inscripcion.getFechaSalida());
            statement.setString(5, inscripcion.getHoraSalida());
            statement.setString(6,inscripcion.getEstadoInscripcion());
            statement.setInt(7,inscripcion.getIdResidente());
            statement.setInt(8,inscripcion.getIdActividad());

            estadoOperacion=statement.executeUpdate()>0;

            connection.commit();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            connection.rollback();
            e.printStackTrace();
        }


        return estadoOperacion;

    }

    public List<Inscripcion> obtenerInscripciones() throws SQLException {

        ResultSet resultSet=null;
        List<Inscripcion> listaInscripciones = new ArrayList<>();


        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from inscripcion";
            statement=connection.prepareStatement(sql);
            resultSet=statement.executeQuery(sql);
            while (resultSet.next()) {
                Inscripcion inscripcion=new Inscripcion();
                inscripcion.setIdInscripcion(resultSet.getInt(1));
                inscripcion.setFechaInscripcion(resultSet.getString(2));
                inscripcion.setFechaEntrada(resultSet.getDate(3));
                inscripcion.setHoraEntrada(resultSet.getString(4));
                inscripcion.setFechaSalida(resultSet.getDate(5));
                inscripcion.setHoraSalida(resultSet.getString(6));
                inscripcion.setEstadoInscripcion(resultSet.getString(7));
                inscripcion.setIdResidente(resultSet.getInt(8));
                inscripcion.setIdActividad(resultSet.getInt(9));

                listaInscripciones.add(inscripcion);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return listaInscripciones;

    }

    public Inscripcion obtenerInscripciones(int idInscripcion) throws SQLException {

        ResultSet resultSet=null;
        Inscripcion inscripcion=new Inscripcion();

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from inscripcion where id_inscripcion=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idInscripcion);


            resultSet=statement.executeQuery();
            if (resultSet.next()) {

                inscripcion.setIdInscripcion(resultSet.getInt(1));
                inscripcion.setFechaInscripcion(resultSet.getString(2));
                inscripcion.setFechaEntrada(resultSet.getDate(3));
                inscripcion.setHoraEntrada(resultSet.getString(4));
                inscripcion.setFechaSalida(resultSet.getDate(5));
                inscripcion.setHoraSalida(resultSet.getString(6));
                inscripcion.setEstadoInscripcion(resultSet.getString(7));
                inscripcion.setIdResidente(resultSet.getInt(8));
                inscripcion.setIdActividad(resultSet.getInt(9));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return inscripcion;

    }

    public boolean editar(Inscripcion inscripcion) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="update inscripcion set estado_inscripcion=? where id_inscripcion=?";
            statement=connection.prepareStatement(sql);
            statement.setString(1, inscripcion.getEstadoInscripcion());
            statement.setInt(2, inscripcion.getIdInscripcion());

            estadoOperacion=statement.executeUpdate()>0;
            connection.commit();
            statement.close();
            connection.close();


        } catch (SQLException e) {
            connection.rollback();
            e.printStackTrace();
        }


        return estadoOperacion;

    }

    public boolean eliminar(int idInscripcion) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="delete from inscripcion where id_inscripcion=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idInscripcion);

            estadoOperacion=statement.executeUpdate()>0;
            connection.commit();
            statement.close();
            connection.close();


        } catch (SQLException e) {
            connection.rollback();
            e.printStackTrace();
        }


        return estadoOperacion;

    }

    private Connection obtenerConexion() throws SQLException {

        return Conexion.getConnection();
    }

}
