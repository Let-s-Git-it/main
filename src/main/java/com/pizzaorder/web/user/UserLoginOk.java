package com.pizzaorder.web.user;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
public class UserLoginOk implements Action {
	

	    @Override
	    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
	        ActionForward forward = new ActionForward();
	        UserDAO udao = new UserDAO();
	        String userid = request.getParameter("customer_id");
	        String userpw = request.getParameter("customer_pw");
	        udao.login(userid,userpw);

	        if (udao.login(userid, userpw)) {
	            forward.setPath("/base/index.html");
	        }
	        else{
	            forward.setPath("/login/loginview.jsp");
	        };

	        return forward;
	    }
	}


