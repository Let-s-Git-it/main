package com.pizzaorder.web.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pizzaorder.web.user.action.Action;
import com.pizzaorder.web.user.action.ActionForward;
import com.pizzaorder.web.user.dao.UserDAO;
import com.pizzaorder.web.user.dao.UserDTO;

public class UserjoinAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request,
                                 HttpServletResponse response) {
        ActionForward forward = new ActionForward();
        //DB연결, insert
        UserDAO udao = new UserDAO();
        //DTO
        UserDTO udto = new UserDTO();

        udto.setUserid(request.getParameter("userid"));
        udto.setUserpw(request.getParameter("userpw"));
        udto.setUsername(request.getParameter("username"));
        udto.setUserphone(request.getParameter("userphone"));
        udto.setZipcode(request.getParameter("zipcode"));
        udto.setAddr(request.getParameter("addr"));
        udto.setAddretc(request.getParameter("addretc"));
        udto.setAddrdetail(request.getParameter("addrdetail"));

        forward.setRedirect(true);
        if (udao.join(udto)) {
            //회원가입 성공
            forward.setPath("/login/loginview.jsp");
        } else {
            System.out.println(">>>>>>>>>>>>> joinActionforward : " + forward);
            //회원가입 실패
            forward.setPath("/base/index.jsp");
        }
        return forward;
    }
}