package com.pizzaorder.web.menu.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

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



    public List<OrdersDTO> getOrderHistory(String userid) {
        try (SqlSession session = sqlSessionFactory.openSession()) {
            return session.selectList("Cart.getOrders");
        }
    }
}