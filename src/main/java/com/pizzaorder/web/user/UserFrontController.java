package com.pizzaorder.web.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pizzaorder.web.user.action.ActionForward;

@WebServlet("*.us")
public class UserFrontController extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(req.getRequestURI());
        System.out.println(req.getContextPath());
        System.out.println(req.getServletPath());
        System.out.println(req.getPathInfo());
        super.service(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp) throws ServletException, IOException {
        doProcess(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp) throws ServletException, IOException {
        doProcess(req, resp);
    }

    protected void doProcess(HttpServletRequest request,
                             HttpServletResponse response) throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String responseURI = null;
        ActionForward forward = null;

//	System.out.println(">>>>>>>>>>>>> requestURI : " + requestURI);

        if (requestURI.equals("/user/userJoin.us")) {
            forward = new UserjoinAction().execute(request, response);
//		System.out.println(">>>>>>>>>>>>> requestURI : " + requestURI);
        }
        if ("/user/UserLoginOk.us".equals(requestURI)) {
//		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>> /user/UserLoginOK.us 호출 ...");
            forward = new UserLoginOk().execute(request, response);
            System.out.println(forward);
        } else {
            System.out.println("path 못 찾음 .... " + requestURI);
        }

        //일괄처리
        if (forward != null) {
            if (forward.isRedirect()) {
                //redirect방식으로 페이지 이동
                response.sendRedirect(forward.getPath());
            } else {
                //forward방식으로 페이지 이동
                System.out.println("forward.getPath()" + forward.getPath());
                RequestDispatcher disp = request.getRequestDispatcher(forward.getPath());
                disp.forward(request, response);
            }
        }
    }
}