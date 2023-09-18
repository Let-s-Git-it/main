package com.pizzaorder.web.user;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pizzaorder.web.user.action.Action;
import com.pizzaorder.web.user.action.ActionForward;
import com.pizzaorder.web.user.dao.UserDAO;


public class BoardListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDAO bdao = new UserDAO();
		int totalCnt = bdao.getBoardCnt();
		
		// 현재 페이지 넘겨 받기
		String temp = request.getParameter("page");
		int page = 0;
		
		// 삼항연산자 이용
		page = temp == null ?1:Integer.parseInt(temp);
		
		
		//페이지 처리
		int pageSize = 10;
		int endRow = page * 10; // 1페이지 : 10, 4페이지 : 40 (마지막 글)
		int startRow = endRow - 9; // 1페이지 : 1, 4페이지 : 31 (첫번째 글)
		
		//[1][2]...[10] : [11][12]...[20] : 페이지
		int startPage = (page-1)/pageSize*pageSize+1;
		//마지막 페이지
		int endPage = startPage + pageSize -1;
		int totalPage = (totalCnt-1)/pageSize + 1 ;
		
		endPage = endPage > totalPage?totalPage:endPage;
		
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("nowPage", page);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totalCnt", totalCnt);
		request.setAttribute("boardList", bdao.getBoardList(startRow, endRow));  
		forward.setRedirect(false);
		forward.setPath("/menu/review.jsp");
		
		
		
		return forward;
	}
	
}
