package co.com.horisoft.dao;

import co.com.horisoft.conexion.Conexion;
import co.com.horisoft.modelo.Comentario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ComentarioDAO {

    private Connection connection;
    private PreparedStatement statement;
    private boolean estadoOperacion;


    public boolean guardar(Comentario comentario) throws SQLException {
        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);

            sql="insert into comentario (id_comentario,descripcion,autor_comentario,id_inscripcion) values (?,?,?,?)";
            statement=connection.prepareStatement(sql);

            statement.setString(1, null);
            statement.setString(2, comentario.getDescripcionComentario());
            statement.setString(3, comentario.getAutorComentario());
            statement.setInt(4, comentario.getIdInscripcion());

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


    public List<Comentario> obtenerComentarios() throws SQLException {

        ResultSet resultSet=null;
        List<Comentario> listaComentarios = new ArrayList<>();


        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from comentario";
            statement=connection.prepareStatement(sql);
            resultSet=statement.executeQuery(sql);
            while (resultSet.next()) {
                Comentario comentario=new Comentario();
                comentario.setIdComentario(resultSet.getInt(1));
                comentario.setFechaComentario(resultSet.getString(2));
                comentario.setDescripcionComentario(resultSet.getString(3));
                comentario.setAutorComentario(resultSet.getString(4));
                comentario.setIdInscripcion(Integer.parseInt(resultSet.getString(5)));
                listaComentarios.add(comentario);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return listaComentarios;

    }

    public Comentario obtenerComentarios(int idComentario) throws SQLException {

        ResultSet resultSet=null;
        Comentario comentario=new Comentario();

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from comentario where id_comentario=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idComentario);

            resultSet=statement.executeQuery();
            if (resultSet.next()) {

                comentario.setIdComentario(resultSet.getInt(1));
                comentario.setFechaComentario(resultSet.getString(2));
                comentario.setDescripcionComentario(resultSet.getString(3));
                comentario.setAutorComentario(resultSet.getString(4));
                comentario.setIdInscripcion(resultSet.getInt(5));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return comentario;

    }
    public boolean editar(Comentario comentario) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="update comentario set descripcion=?, autor_comentario=? where id_comentario=?";
            statement=connection.prepareStatement(sql);
            statement.setString(1, comentario.getDescripcionComentario());
            statement.setString(2, comentario.getAutorComentario());
            statement.setInt(3, comentario.getIdComentario());


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
    public boolean eliminar(int idComentario) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="delete from comentario where id_comentario=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idComentario);

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
