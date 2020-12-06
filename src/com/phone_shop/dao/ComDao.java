package com.phone_shop.dao;

import com.phone_shop.model.Commodity;

import java.util.List;

public interface ComDao {
    /**
     * 数据接口类(只能声明代码)
     * 获取所有信息
     * @return
     */
    List<Commodity> getAllContacts();
    /**
     * 根据 id 获取指定 Computer 对象
     * @param com_id
     * @return
     */
    Commodity getCommodity(int com_id);
    /**
     * 搜索
     */
    List<Commodity> getsearch(String filter,int begin);
}
