
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class essionLoginServlet
 */
@WebServlet("/SessionLoginServlet")
public class SessionLoginServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SessionLoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		if (userId.equals("hkd") && userPw.equals("1234")) {
			// 로그인 성공시 세션영역에 유저 아이디를 저장
			// 로그인 요청을 한 페이지의 세션을 얻어옴 왜? 로그인 요청한 브라우저에 세션을 보낼거니깐
			HttpSession session = request.getSession();
			session.setAttribute("userId", userId); // 그 세션영역에 로그인 정보 남김
			response.sendRedirect("getSessionEx.jsp");

		} else {
			out.print("<script>alert('로그인 실패'); location.href='sessionLoginEx.jsp';</script>");
			
			// 이문장이 있으면 클라이언트 언어인 자바스크림트보다 우쉬이므로 자바스크립트 문장이 실행 안됨
			// resopnse.sendRedirect("sessionLoginEx.jsp");
		}

	}

}
