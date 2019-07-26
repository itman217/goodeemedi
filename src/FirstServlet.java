import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstServlet
 */
@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstServlet() {
        super();
        System.out.println("서블릿 객체 생성!");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GET방식으로 이 서블릿을 요청할 때 호출되는 메서드
		System.out.println("GET방식으로  이 서블릿을 요청"); // 콘솔창에 출력
		// request : 이 메서드가  호출(이 서블릿을 요청) 전달받은 매개변수
		// response : 이 메서드가 호출되어 응답해줄 매개변수
		String name = "JYH";
		
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter writer = response.getWriter(); // response할 곳으로 출력할 수 있는 객체
		writer.println("<!DOCTYPE html>\r\n" + 
				"<html>\r\n" + 
				"<head>\r\n" + 
				"    <title>첫 서블릿 페이지</title>\r\n" + 
				"    <meta charset=\"UTF-8\">\r\n" + 
				"    <meta name=\"description\" content=\"\">\r\n" + 
				"    <meta name=\"keywords\" content=\"\"></head>\r\n" + 
				"<body>");
		writer.println("<h1 class='head'>" + name + "</h1>");
		writer.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// POST 방식으로 이 서블릿을 요청할 때 호출되는 메서드
		System.out.println("POST방식으로 이 서블릿을 요청!");
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("userID");
		System.out.println("유저가 입력한 아이디 : " + userId + "여기서 회원 가입");
		// 회원 가입 처리되는 부분
		
		// ------ 유저가 요청했던 곳으로 회원가입 처리 결과를 출력하는 부분
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print("<script>alert('회원가입 성공!');</script>");
	}
}
