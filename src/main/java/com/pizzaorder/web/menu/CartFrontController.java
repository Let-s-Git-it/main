import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CartFrontController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 클라이언트로부터 주문 정보를 받아온다
        String selectedMenu = request.getParameter("menu");
        int quantity = Integer.parseInt(request.getParameter("quantity"));



        // 주문 성공 메시지를 클라이언트에 보낸다
        response.getWriter().write("주문이 완료되었습니다.");
    }
}