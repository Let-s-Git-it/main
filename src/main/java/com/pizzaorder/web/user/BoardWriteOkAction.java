package com.pizzaorder.web.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pizzaorder.web.user.action.Action;
import com.pizzaorder.web.user.action.ActionForward;
import com.pizzaorder.web.user.dao.UserDAO;
import com.pizzaorder.web.user.dao.UserDTO;



public class BoardWriteOkAction implements Action{
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDAO bdao = new UserDAO();
		UserDTO board = new UserDTO();
		
		board.setReviewtitle(request.getParameter("reviewtitle"));
		board.setReviewcontent(request.getParameter("reviewcontent"));
		board.setUsername(request.getParameter("username"));
		
		if(bdao.insertBoard(board)) {
			//성공시
			forward.setPath("/user/BoardWrite.us");
		}else {
			//실패시
			forward.setPath("/user/BoardWrite.us");
		}
		forward.setRedirect(true);
		return forward;
	}
		
}
