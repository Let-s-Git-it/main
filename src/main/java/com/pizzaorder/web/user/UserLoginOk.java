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
        System.out.println("userid: " + userid);
        System.out.println("userpw: " + userpw);

        if (udao.logincheck(userid, userpw)) {
            forward.setPath("/base/index.html");
        } else {
            forward.setPath("/login/loginview.jsp");
        }

        System.out.println("forward >>>>>>>>>>>>>>>>>>>>>>>>> " + forward.toString());

        return forward;
    }
}