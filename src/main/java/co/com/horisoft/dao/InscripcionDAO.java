package co.com.horisoft.dao;

import co.com.horisoft.conexion.Conexion;
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
            statement.setTime(3, inscripcion.getHoraEntrada());
            statement.setDate(4, inscripcion.getFechaSalida());
            statement.setTime(5, inscripcion.getHoraSalida());
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

    private Connection obtenerConexion() throws SQLException {

        return Conexion.getConnection();
    }

}
