package co.com.horisoft.dao;

import co.com.horisoft.conexion.Conexion;
import co.com.horisoft.modelo.Invitado;
import co.com.horisoft.modelo.Mascota;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InvitadoDAO {

    private Connection connection;
    private PreparedStatement statement;
    private boolean estadoOperacion;

    public boolean guardar(Invitado invitado) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="insert into invitado_externo (id_invitado,nombre_invitado,apellido_invitado,identificacion_invitado,id_inscripcion) values (?,?,?,?,?)";
            statement=connection.prepareStatement(sql);

            statement.setString(1, null);
            statement.setString(2, invitado.getNombreInvitado());
            statement.setString(3, invitado.getApellidoInvitado());
            statement.setString(4, invitado.getIdentificacionInvitado());
            statement.setInt(5, invitado.getIdInscripcion());

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


    public List<Invitado> obtenerInvitados() throws SQLException {

        ResultSet resultSet=null;
        List<Invitado> listaInvitados = new ArrayList<>();


        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from invitado_externo";
            statement=connection.prepareStatement(sql);
            resultSet=statement.executeQuery(sql);
            while (resultSet.next()) {
                Invitado invitado=new Invitado();
                invitado.setIdInvitado(resultSet.getInt(1));
                invitado.setNombreInvitado(resultSet.getString(2));
                invitado.setApellidoInvitado(resultSet.getString(3));
                invitado.setIdentificacionInvitado(resultSet.getString(4));
                invitado.setIdInscripcion(Integer.parseInt(resultSet.getString(5)));
                listaInvitados.add(invitado);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return listaInvitados;

    }
    public Invitado obtenerInvitados(int idInvitado) throws SQLException {

        ResultSet resultSet=null;
        Invitado invitado=new Invitado();

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from invitado_externo where id_invitado=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idInvitado);


            resultSet=statement.executeQuery();
            if (resultSet.next()) {

                invitado.setIdInvitado(resultSet.getInt(1));
                invitado.setNombreInvitado(resultSet.getString(2));
                invitado.setApellidoInvitado(resultSet.getString(3));
                invitado.setIdentificacionInvitado(resultSet.getString(4));
                invitado.setIdInscripcion(Integer.parseInt(resultSet.getString(5)));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return invitado;

    }
    public boolean editar(Invitado invitado) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="update invitado_externo set nombre_invitado=?, apellido_invitado=?, identificacion_invitado=?, id_inscripcion=? where id_invitado=?";
            statement=connection.prepareStatement(sql);
            statement.setString(1, invitado.getNombreInvitado());
            statement.setString(2, invitado.getApellidoInvitado());
            statement.setString(3, invitado.getIdentificacionInvitado());
            statement.setInt(4, invitado.getIdInscripcion());
            statement.setInt(5, invitado.getIdInvitado());


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

    public boolean eliminar(int idInvitado) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="delete from invitado_externo where id_invitado=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idInvitado);

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
