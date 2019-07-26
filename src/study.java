

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class study
 */
@WebServlet("/study")
public class study extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public study() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id =request.getParameter("id");
		String pw =request.getParameter("pw");
	
		response.setContentType("text/html;charset=utf-8");
		if(id.equals("순용") && pw.equals("1234")) {
			System.out.println("회원가입됨");
			response.getWriter().println("<script>alert('회원가입완료')</script>");
		}else {
			System.out.println("회원가입 안됨");
			response.getWriter().println("<script>alert('회원가입안됨')</script>");
		}
	
	}

}
