/*
package com.pizzaorder.web.menu;

import com.pizzaorder.web.menu.dao.OrdersDAO;
import com.pizzaorder.web.menu.dao.MenuDTO;
import com.pizzaorder.web.mybatis.SqlMapConfig;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/order")
public class MenuServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 사용자로부터 주문 정보를 받아옴
        String category_id = request.getParameter("category_id");
        String idx = request.getParameter("idx");
        String menu_name = request.getParameter("menu_name");
        String menu_size = request.getParameter("menu_size");
        int menu_count = Integer.parseInt(request.getParameter("menu_count"));
        int menu_price = Integer.parseInt(request.getParameter("menu_price"));

        // MenuDTO 객체 생성
        MenuDTO menu = new MenuDTO(category_id, menu_name, menu_size, idx, menu_count, menu_price);


        // OrderDAO를 통해 주문 정보를 DB에 저장
        OrdersDAO ordersDAO = new OrdersDAO(SqlMapConfig.getFactory());
        ordersDAO.insertMenu(menu);

        // 주문 완료 페이지로 리다이렉트
        response.sendRedirect("${pageContext.request.contextPath}/base/index.jsp");
    }
}*/
package com.pizzaorder.web.menu;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.pizzaorder.web.menu.dao.OrdersDAO;
import com.pizzaorder.web.menu.dao.MenuDTO;
import com.pizzaorder.web.mybatis.SqlMapConfig;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;

@WebServlet("/order")
public class MenuServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 주문 정보를 받아옴
        BufferedReader reader = request.getReader();
        StringBuilder requestData = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            requestData.append(line);
        }

        // JSON 데이터를 MenuDTO 객체로 파싱
        ObjectMapper objectMapper = new ObjectMapper();
        MenuDTO[] menuArray = objectMapper.readValue(requestData.toString(), MenuDTO[].class);

        // OrderDAO를 통해 주문 정보를 DB에 저장
        OrdersDAO ordersDAO = new OrdersDAO(SqlMapConfig.getFactory());
        for (MenuDTO menu : menuArray) {
            ordersDAO.insertMenu(menu);
        }

        // 주문 완료 페이지로 리다이렉트
        response.sendRedirect(request.getContextPath() + "/base/index.jsp");
    }
}