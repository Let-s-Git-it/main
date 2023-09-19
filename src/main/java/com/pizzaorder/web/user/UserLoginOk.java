package com.pizzaorder.web.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pizzaorder.web.user.action.Action;
import com.pizzaorder.web.user.action.ActionForward;
import com.pizzaorder.web.user.dao.UserDAO;
import com.pizzaorder.web.user.dao.UserDTO;

import java.io.IOException;
import java.io.PrintWriter;


public class UserLoginOk implements Action {
    @Override
    public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {

        ActionForward forward = new ActionForward();
        UserDAO udao = new UserDAO();
        String userid = req.getParameter("userid");
        String userpw = req.getParameter("userpw");
        HttpSession session = req.getSession();

        if (udao.UserLoginOk(userid, userpw)) {

            String welcomeMessage = userid + "님, 환영합니다.";
            try {
                resp.setContentType("text/html; charset=UTF-8");

                session.setAttribute("userid", userid);
                PrintWriter out = resp.getWriter();
                out.println("<script>alert('" + welcomeMessage + "');window.location.href='/base/index.jsp';</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            // Handle login failure
            try {
                resp.setContentType("text/html; charset=UTF-8");
                forward.setRedirect(false);
                PrintWriter out = resp.getWriter();
                out.println("<script>alert('로그인에 실패했습니다.');history.back();</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return forward;
    }
}