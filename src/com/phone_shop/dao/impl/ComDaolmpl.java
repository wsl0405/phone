package com.phone_shop.dao.impl;

import com.phone_shop.dao.ComDao;
import com.phone_shop.db.DBConnection;
import com.phone_shop.model.Commodity;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ComDaolmpl implements ComDao {
    DBConnection db = new DBConnection();
    /*获取所有信息*/
    @Override
    public List<Commodity> getAllContacts() {
        try {
            //获取数据库连接
            Connection con = db.getConnection();

            //执行查询
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select  * from commodity");

            //处理结果集
            List<Commodity> contacts = new ArrayList<>();
            while (rs.next()) {
                //将行数据加入通讯录封装类
                Commodity commodity = new Commodity();
                commodity.setCom_id(rs.getInt("com_id"));
                commodity.setType_id(rs.getInt("type_id"));
                commodity.setCom_name(rs.getString("com_name"));
                commodity.setCom_price(rs.getFloat("com_price"));
                commodity.setCom_url(rs.getString("com_url"));
                commodity.setCom_inven(rs.getInt("com_inven"));
                commodity.setCom_sell(rs.getInt("com_sell"));
                commodity.setCom_intro(rs.getString("com_intro"));
                commodity.setCom_ftime(rs.getDate("com_ftime"));

                contacts.add(commodity);//将对象加入列表
            }
            //关闭连接,释放资源
            rs.close();
            st.close();
            con.close();
            return contacts;
        } catch (
                SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    /*详情*/
    @Override
    public Commodity getCommodity(int com_id) {
        Commodity commodity = new Commodity();
        try {
            Connection  con = db.getConnection();

            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from commodity where com_id=" + com_id);
            if (rs.next()) {
                commodity.setCom_id(rs.getInt("com_id"));
                commodity.setType_id(rs.getInt("type_id"));
                commodity.setCom_name(rs.getString("com_name"));
                commodity.setCom_price(rs.getFloat("com_price"));
                commodity.setCom_url(rs.getString("com_url"));
                commodity.setCom_inven(rs.getInt("com_inven"));
                commodity.setCom_sell(rs.getInt("com_sell"));
                commodity.setCom_intro(rs.getString("com_intro"));
                commodity.setCom_ftime(rs.getDate("com_ftime"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return commodity;
    }

    @Override
    public List<Commodity> getsearch(String filter,int begin) {
        List<Commodity> commodities = new ArrayList<Commodity>();
        try {
            Connection con = db.getConnection();
            String sql = "select * from commodity where com_name like ?";
            sql+="  limit ?,6";
            PreparedStatement pst = con.prepareStatement(sql);
            String filters = "%" + filter + "%";
            pst.setString(1,filters);
            pst.setInt(2,begin);

            ResultSet rs = pst.executeQuery();
            while (rs.next()){
                Commodity commodity = new Commodity();
                commodity.setCom_id(rs.getInt("com_id"));
                commodity.setType_id(rs.getInt("type_id"));
                commodity.setCom_name(rs.getString("com_name"));
                commodity.setCom_price(rs.getFloat("com_price"));
                commodity.setCom_url(rs.getString("com_url"));
                commodity.setCom_inven(rs.getInt("com_inven"));
                commodity.setCom_sell(rs.getInt("com_sell"));
                commodity.setCom_intro(rs.getString("com_intro"));
                commodity.setCom_ftime(rs.getDate("com_ftime"));
                commodities.add(commodity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return commodities;
    }
}

