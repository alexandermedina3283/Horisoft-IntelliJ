package co.com.horisoft.util;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

public class Conexion {

    private static BasicDataSource dataSource=null;


    private static DataSource getDataSource() {


        if (dataSource == null) {
            dataSource = new BasicDataSource();
            dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
            dataSource.setUsername("root");
            dataSource.setPassword("");
            dataSource.setUrl("jdbc:mysql://localhost:3306/horisoft?useTimezone=true&serverTimezone=UTC");
            dataSource.setMaxIdle(10);
            dataSource.setMaxTotal(10);
            dataSource.setMaxWaitMillis(5000);

        }

        return dataSource;
    }
    public static Connection getConnection() throws SQLException {

        return getDataSource().getConnection();
    }
}
