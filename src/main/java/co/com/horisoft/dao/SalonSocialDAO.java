package co.com.horisoft.dao;

import co.com.horisoft.conexion.Conexion;
import co.com.horisoft.modelo.Mascota;
import co.com.horisoft.modelo.SalonSocial;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SalonSocialDAO {

    private Connection connection;
    private PreparedStatement statement;
    private boolean estadoOperacion;


    public boolean guardar(SalonSocial salonsocial) throws SQLException {
        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="insert into evento_salonsocial (fecha_pago,numero_comprobante,valor_deposito,id_inscripcion) values (?,?,?,?)";
            statement=connection.prepareStatement(sql);

            statement.setDate(1, salonsocial.getFechaPago());
            statement.setString(2, salonsocial.getNumeroComprobante());
            statement.setInt(3, salonsocial.getValorDeposito());
            statement.setInt(4, salonsocial.getIdInscripcion());

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


    public List<SalonSocial> obtenerReservasSalon() throws SQLException {

        ResultSet resultSet=null;
        List<SalonSocial> listaReservas = new ArrayList<>();


        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from evento_salonsocial";
            statement=connection.prepareStatement(sql);
            resultSet=statement.executeQuery(sql);
            while (resultSet.next()) {
                SalonSocial salonSocial=new SalonSocial();
                salonSocial.setFechaPago(resultSet.getDate(1));
                salonSocial.setNumeroComprobante(resultSet.getString(2));
                salonSocial.setValorDeposito(resultSet.getInt(3));
                salonSocial.setIdInscripcion(resultSet.getInt(4));
                listaReservas.add(salonSocial);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return listaReservas;

    }

    public SalonSocial obtenerResevasSalon(int idInscripcion) throws SQLException {

        ResultSet resultSet=null;
        SalonSocial salonSocial=new SalonSocial();

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from evento_salonsocial where id_inscripcion=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idInscripcion);


            resultSet=statement.executeQuery();
            if (resultSet.next()) {

                salonSocial.setFechaPago(resultSet.getDate(1));
                salonSocial.setNumeroComprobante(resultSet.getString(2));
                salonSocial.setValorDeposito(resultSet.getInt(3));
                salonSocial.setIdInscripcion(resultSet.getInt(4));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return salonSocial;

    }
    public boolean editar(SalonSocial salonSocial) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="update evento_salonsocial set fecha_pago=?, numero_comprobante=?, valor_deposito=? where id_inscripcion=?";
            statement=connection.prepareStatement(sql);
            statement.setDate(1, salonSocial.getFechaPago());
            statement.setString(2, salonSocial.getNumeroComprobante());
            statement.setInt(3, salonSocial.getValorDeposito());
            statement.setInt(4, salonSocial.getIdInscripcion());


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
            sql="delete from evento_salonsocial where id_inscripcion=?";
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
