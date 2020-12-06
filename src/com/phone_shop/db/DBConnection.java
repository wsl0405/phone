package com.phone_shop.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    /**
     * 获取数据库连接
     * @throws SQLException
     */
    public Connection getConnection() throws SQLException {
        //注册驱动类
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        //获取连接
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/phone_shop?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=Asia/Shanghai&&"
                + "user=root&password=123456");

        return con;

        //执行查询
    }

//    public static void main(String[] args) throws SQLException {
//        DBConnection db = new DBConnection();
//        Connection con = db.getConnection();
//
//        //执行查询（测试）
//        Statement st = con.createStatement(); //Statement获取数据接口
//        ResultSet rs = st.executeQuery("select  * from contact");
//        while (rs.next()){  //rs指向的是第零行，rs.next指向第一行（直接rs会报错）
//            String name = rs.getString("name");
//            System.out.println("姓名: "+name);
//            String stuid = rs.getString("stuid");
//            System.out.println("学号: "+stuid);
//        }
//        //后开的先关闭
//        rs.close();
//        st.close();
//        con.close();
//    }
}

