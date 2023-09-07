<%@ page import="com.pizzaorder.web.user.dao.UserDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%
    String userid = request.getParameter("userid");

    UserDAO udao = new UserDAO();

    if (!udao.checkId(userid)) {
        out.print("ok");

    } else {
        // 회원가입 불가한 상태
        out.print("not-ok");

    }

%>