package com.pizzaorder.web.menu;

import com.pizzaorder.web.menu.dao.OrdersDAO;
import com.pizzaorder.web.menu.dao.OrdersDTO;
import com.pizzaorder.web.mybatis.SqlMapConfig;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/order-history")
public class OrderHistoryServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // ?? ??? ???????? ??
        String userid = req.getParameter("userid");
        OrdersDAO ordersDAO = new OrdersDAO(SqlMapConfig.getFactory());
        List<OrdersDTO> orderHistory = ordersDAO.getOrderHistory(userid);

        // ?? ??? req ??? ??
        req.setAttribute("orderHistory", orderHistory);

        // ?? ?? ?? ????
        req.getRequestDispatcher("/ordercheck.jsp").forward(req, resp);
    }
}