package com.pizzaorder.web.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.pizzaorder.web.user.action.Action;
import com.pizzaorder.web.user.action.ActionForward;
import com.pizzaorder.web.user.dao.UserDAO;



public class Logoutok implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

        ActionForward forward = new ActionForward();

        // 세션에서 사용자 정보 삭제
        HttpSession session = request.getSession();
        String userid = (String)session.getAttribute("userid");
        
        
        if (session != null) {
            session.removeAttribute("userid");
            session.invalidate(); // 세션 무효화
            
         // 로그아웃 후 로그인 페이지로 이동
            forward.setPath("/base/index.jsp");
        }

        return forward;
    }
}