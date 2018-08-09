package cn.sun.util;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * 数据源工具类
 */

public class C3P0Util {

    private static ComboPooledDataSource ds = new ComboPooledDataSource();

//    得到连接池
    public static DataSource getDataSource(){
        return ds;
    }

//    得到连接对象
    public static Connection getConnection(){
        try {
            return ds.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据源获得连接对象失败");
        }
        return null;
    }

}
