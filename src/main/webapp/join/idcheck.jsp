<%@ page import="com.pizzaorder.web.user.dao.UserDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%
    String userid = request.getParameter("userid");

    UserDAO udao = new UserDAO();
    System.out.println("checkID : "+userid);
    System.out.println(request.getServletPath());
    if (!udao.checkId(userid)) {
        out.print("ok");

    } else {
        // 로그인 불가한 상태
        out.print("not-ok");

    }

%>