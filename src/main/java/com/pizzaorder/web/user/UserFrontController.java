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

        if (requestURI.equals("/user/userJoin.us")) {
            forward = new UserjoinAction().execute(request, response);
        }
        if ("/user/UserLoginOk.us".equals(requestURI)) {
            forward = new UserLoginOk().execute(request, response);
            System.out.println(forward);
        } else {
            System.out.println("path 못 찾음 .... " + requestURI);
        }

        if (requestURI.equals("/user/Logoutok.us")) {
            forward = new Logoutok().execute(request, response);
        }


        switch (requestURI) {
            case "/user/BoardWrite.us":
                forward = new ActionForward(true, "/menu/review.jsp");
                break;
            // /board/BoardWriteOK.bo
            // insert, BoardWriteOkAction
            // DAO : insertBoard()
            case "/user/BoardWriteOK.us":
                forward = new BoardWriteOkAction().execute(request, response);
                break;
            // 글 목록보기
            // /board/BoardList.bo
            // /board/BoardList.jsp로 이동
            case "/menu/review.us":
                forward = new BoardListAction().execute(request, response);
                break;
//		forward = new ActionForward(true, "/board/boardList.jsp");
            //글 목록, 글 조회 올리기
            //BoardListAction().execute();
            // dao : 조회, getBoardList()
            // xml : 쿼리, getBoardList
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