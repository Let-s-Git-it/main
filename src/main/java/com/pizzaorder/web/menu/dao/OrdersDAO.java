package com.pizzaorder.web.menu.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class OrdersDAO {

    private SqlSessionFactory sqlSessionFactory;

    public OrdersDAO(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }
    public void insertMenu(MenuDTO menu) {
        try (SqlSession session = sqlSessionFactory.openSession()) {
            session.insert("Cart.addmenu", menu);
            session.commit();
        }
    }
}