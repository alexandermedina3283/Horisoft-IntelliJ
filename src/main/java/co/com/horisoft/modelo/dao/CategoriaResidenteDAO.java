package co.com.horisoft.modelo.dao;

import co.com.horisoft.util.Conexion;
import co.com.horisoft.modelo.beans.CategoriaResidente;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;




public class CategoriaResidenteDAO {

    private Connection connection;
    private PreparedStatement statement;
    private boolean estadoOperacion;

    public boolean guardar(CategoriaResidente categoriaResidente) throws SQLException {
        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="insert into categoria_residente (id_categoria,nombre_categoria) values (?,?)";
            statement=connection.prepareStatement(sql);

            statement.setString(1, null);
            statement.setString(2, categoriaResidente.getNombreCategoria());

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

    public List<CategoriaResidente> obtenerCategorias() throws SQLException {

        ResultSet resultSet=null;
        List<CategoriaResidente> listaCategorias = new ArrayList<>();


        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from categoria_residente";
            statement=connection.prepareStatement(sql);
            resultSet=statement.executeQuery(sql);
            while (resultSet.next()) {
                CategoriaResidente categoriaResidente=new CategoriaResidente();
                categoriaResidente.setIdCategoria(resultSet.getInt(1));
                categoriaResidente.setNombreCategoria(resultSet.getString(2));
                listaCategorias.add(categoriaResidente);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return listaCategorias;

    }

    public CategoriaResidente obtenerCategorias(int idCategoria) throws SQLException {

        ResultSet resultSet=null;
        CategoriaResidente categoriaResidente=new CategoriaResidente();

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {

            sql="select * from categoria_residente where id_categoria=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idCategoria);

            resultSet=statement.executeQuery();
            if (resultSet.next()) {

                categoriaResidente.setIdCategoria(resultSet.getInt(1));
                categoriaResidente.setNombreCategoria(resultSet.getString(2));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        connection.close();
        return categoriaResidente;

    }

    public boolean editar(CategoriaResidente categoriaResidente) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="update categoria_residente set nombre_categoria=? where id_categoria=?";
            statement=connection.prepareStatement(sql);
            statement.setString(1, categoriaResidente.getNombreCategoria());
            statement.setInt(2, categoriaResidente.getIdCategoria());


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

    public boolean eliminar(int idCategoria) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="delete from categoria_residente where id_categoria=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idCategoria);

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
