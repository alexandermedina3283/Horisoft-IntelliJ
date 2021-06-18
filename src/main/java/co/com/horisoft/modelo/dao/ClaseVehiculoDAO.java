package co.com.horisoft.modelo.dao;


import co.com.horisoft.util.Conexion;
import co.com.horisoft.modelo.beans.ClaseVehiculo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClaseVehiculoDAO {

    private Connection connection;
    private PreparedStatement statement;
    private boolean estadoOperacion;

    public boolean guardar(ClaseVehiculo claseVehiculo) throws SQLException {
        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="insert into clase_vehiculo (id_clase_vehiculo,nombre_clase) values (?,?)";
            statement=connection.prepareStatement(sql);

            statement.setString(1, null);
            statement.setString(2, claseVehiculo.getNombreClaseVehiculo());

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

    public List<ClaseVehiculo> obtenerClaseVehiculo() throws SQLException {

        ResultSet resultSet=null;
        List<ClaseVehiculo> listaClaseVehiculo = new ArrayList<>();


        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from clase_vehiculo";
            statement=connection.prepareStatement(sql);
            resultSet=statement.executeQuery(sql);
            while (resultSet.next()) {
                ClaseVehiculo claseVehiculo=new ClaseVehiculo();
                claseVehiculo.setIdClaseVehiculo(resultSet.getInt(1));
                claseVehiculo.setNombreClaseVehiculo(resultSet.getString(2));
                listaClaseVehiculo.add(claseVehiculo);
            }
            statement.close();
            resultSet.close();
            connection.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return listaClaseVehiculo;

    }

    public ClaseVehiculo obtenerClaseVehiculo(int idClaseVehiculo) throws SQLException {

        ResultSet resultSet=null;
        ClaseVehiculo claseVehiculo=new ClaseVehiculo();

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from clase_vehiculo where id_clase_vehiculo=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idClaseVehiculo);

            resultSet=statement.executeQuery();
            if (resultSet.next()) {

                claseVehiculo.setIdClaseVehiculo(resultSet.getInt(1));
                claseVehiculo.setNombreClaseVehiculo(resultSet.getString(2));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        connection.close();
        return claseVehiculo;

    }

    public boolean editar(ClaseVehiculo claseVehiculo) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="update clase_vehiculo set nombre_clase=? where id_clase_vehiculo=?";
            statement=connection.prepareStatement(sql);
            statement.setString(1, claseVehiculo.getNombreClaseVehiculo());
            statement.setInt(2, claseVehiculo.getIdClaseVehiculo());


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

    public boolean eliminar(int idClaseVehiculo) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="delete from clase_vehiculo where id_clase_vehiculo=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idClaseVehiculo);

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
