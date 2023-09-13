package com.pizzaorder.web.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pizzaorder.web.user.action.Action;
import com.pizzaorder.web.user.action.ActionForward;
import com.pizzaorder.web.user.dao.UserDAO;

public class UserLoginOk implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

        ActionForward forward = new ActionForward();
        UserDAO udao = new UserDAO();
        String userid = request.getParameter("userid");
        String userpw = request.getParameter("userpw");

        if (udao.logincheck(userid, userpw)) {
            forward.setPath("/base/index.jsp");
        } else {
            request.setAttribute("loginError", "아이디 또는 비밀번호가 올바르지 않습니다.");
            forward.setPath("/login/loginview.jsp");
        }

//        System.out.println("forward >>>>>>>>>>>>>>>>>>>>>>>>> " + forward.toString());

        return forward;


    }


}