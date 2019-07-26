// 전송되어 온 아이디, 패스워드가 
// id = "uiux"
// pw = "cheerup" 과 같은지 다른지를 비교하고, 로그인 성공 / 실패를 구분한다.
// 그리고 로그인 성공 실패의 결과를 현재 서블릿에 출력하세요. html파일로 alert이용해서 출력!.

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServeletLoginEx
 */
@WebServlet({ "/ServeltLoginEx", "/login.do" })
public class ServeltLoginEx extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServeltLoginEx() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		 TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		
		response.setContentType("text/html; charset=utf-8");
		
		if(userId.equals("uiux") && userPw.equals("cheerup")) {
//			response.getWriter().println("<script>alert('로그인 성공')</script>");
//			request.setAttribute("loginOk", "success");
			// 세션영역에 로그인 정보를 기록 해야 함.
			
			// 페이지 이동 : sendRedirect() 는 페이지 이동 후 새로운 request, response가 만들어 진다.
			// 그렇기 때문에 로그인 성공 / 실패 여부를 get 방식으로 다시 보내줘야 한다.
			response.sendRedirect("loginEx.jsp?loginOk=success");
		} else {
//			response.getWriter().println("<script>alert('로그인 실패')</script>");
//			request.setAttribute("loginOk", "fail"); 
			response.sendRedirect("loginEx.jsp?loginOk=fail");
		}
		// 페이지 이동 : RequestDispatcher는 현재 request, response를 살려서 간다.
//		RequestDispatcher dispatcher = request.getRequestDispatcher("loginEx2.jsp");
//		dispatcher.forward(request, response);
		
		// 페이지 이동 : Redirect 는 페이지 이동 후 새로운 request, response가 만들어 진다.
		
		
	}	

}
