package co.com.horisoft.modelo.dao;

import co.com.horisoft.modelo.beans.ServiciosZona;
import co.com.horisoft.util.Conexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServiciosZonaDAO {

    private Connection connection;
    private PreparedStatement statement;
    private boolean estadoOperacion;


    public boolean guardar(ServiciosZona serviciosZona) throws SQLException {
        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="insert into actividad (id_actividad,nombre_actividad,id_zona) values (?,?,?)";
            statement=connection.prepareStatement(sql);

            statement.setString(1, null);
            statement.setString(2, serviciosZona.getNombreActividad());
            statement.setInt(3, serviciosZona.getIdZona());

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

    public List<ServiciosZona> obtenerServicios() throws SQLException {

        ResultSet resultSet=null;
        List<ServiciosZona> listaServicios = new ArrayList<>();


        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from actividad";
            statement=connection.prepareStatement(sql);
            resultSet=statement.executeQuery(sql);
            while (resultSet.next()) {
                ServiciosZona serviciosZona=new ServiciosZona();
                serviciosZona.setIdActividad(resultSet.getInt(1));
                serviciosZona.setNombreActividad(resultSet.getString(2));
                serviciosZona.setIdZona(resultSet.getInt(3));
                listaServicios.add(serviciosZona);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return listaServicios;

    }

    public ServiciosZona obtenerServicios(int idActividad) throws SQLException {

        ResultSet resultSet=null;
        ServiciosZona serviciosZona=new ServiciosZona();

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from actividad where id_actividad=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idActividad);

            resultSet=statement.executeQuery();
            if (resultSet.next()) {

                serviciosZona.setIdActividad(resultSet.getInt(1));
                serviciosZona.setNombreActividad(resultSet.getString(2));
                serviciosZona.setIdZona(resultSet.getInt(3));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return serviciosZona;

    }

    public boolean editar(ServiciosZona serviciosZona) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="update actividad set nombre_actividad=?,id_zona=? where id_actividad=?";
            statement=connection.prepareStatement(sql);
            statement.setString(1, serviciosZona.getNombreActividad());
            statement.setInt(2, serviciosZona.getIdZona());
            statement.setInt(3, serviciosZona.getIdActividad());


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

    public boolean eliminar(int idActividad) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="delete from actividad where id_actividad=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idActividad);

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
