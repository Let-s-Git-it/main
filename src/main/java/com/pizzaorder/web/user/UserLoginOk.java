package com.pizzaorder.web.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
        HttpSession session = request.getSession();

        // 사용자 로그인 확인
        if (udao.logincheck(userid, userpw)) {

            session.setAttribute("userid", userid);

            // 로그인 성공 시 홈 페이지로 이동
            forward.setPath("/base/index.jsp");
        } else {
            // 로그인 실패 시 에러 메시지 설정
            request.setAttribute("loginError", "아이디 또는 비밀번호가 올바르지 않습니다.");
            forward.setPath("/login/loginview.jsp");
        }
//        System.out.println("forward >>>>>>>>>>>>>>>>>>>>>>>>> " + forward.toString());
        return forward;
    }
}