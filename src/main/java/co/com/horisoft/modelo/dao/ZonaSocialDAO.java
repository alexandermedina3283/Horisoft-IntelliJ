package co.com.horisoft.modelo.dao;

import co.com.horisoft.modelo.beans.CategoriaResidente;
import co.com.horisoft.util.Conexion;
import co.com.horisoft.modelo.beans.ZonaSocial;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ZonaSocialDAO {

    private Connection connection;
    private PreparedStatement statement;
    private boolean estadoOperacion;

    public boolean guardar(ZonaSocial zonaSocial) throws SQLException {
        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="insert into zona_social (id_zona,nombre_zona) values (?,?)";
            statement=connection.prepareStatement(sql);

            statement.setString(1, null);
            statement.setString(2, zonaSocial.getNombreZona());

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

    public List<ZonaSocial> obtenerZonas() throws SQLException {

        ResultSet resultSet=null;
        List<ZonaSocial> listaZonas = new ArrayList<>();


        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from zona_social";
            statement=connection.prepareStatement(sql);
            resultSet=statement.executeQuery(sql);
            while (resultSet.next()) {
                ZonaSocial zonaSocial=new ZonaSocial();
                zonaSocial.setIdZona(resultSet.getInt(1));
                zonaSocial.setNombreZona(resultSet.getString(2));
                listaZonas.add(zonaSocial);
            }
            statement.close();
            resultSet.close();
            connection.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return listaZonas;

    }

    public ZonaSocial obtenerZonas(int idZona) throws SQLException {

        ResultSet resultSet=null;
        ZonaSocial zonaSocial=new ZonaSocial();

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from zona_social where id_zona=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idZona);

            resultSet=statement.executeQuery();
            if (resultSet.next()) {

                zonaSocial.setIdZona(resultSet.getInt(1));
                zonaSocial.setNombreZona(resultSet.getString(2));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        connection.close();
        return zonaSocial;

    }

    public boolean editar(ZonaSocial zonaSocial) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="update zona_social set nombre_zona=? where id_zona=?";
            statement=connection.prepareStatement(sql);
            statement.setString(1, zonaSocial.getNombreZona());
            statement.setInt(2, zonaSocial.getIdZona());


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

    public boolean eliminar(int idZona) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="delete from zona_social where id_zona=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idZona);

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
