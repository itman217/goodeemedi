

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register
 */
@WebServlet({ "/register", "/register.do" })
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("registerEx.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		String PWcheck = request.getParameter("PWcheck");
		if (!PW.equals(PWcheck)) {
			
		}
		
		String name = request.getParameter("name");
		String gender = "";
		if(request.getParameter("gender").equals("m")) {
			gender = "남자";
		} else {
			gender = "여자";
		}
		
		String email = request.getParameter("email");
		String[] hobbys = request.getParameterValues("hobby");
		String outhobbys = "";
				
		for (String s : hobbys) {
			outhobbys += s + "," ;
		}
		
		System.out.println(ID + ", " + PW + "," + name + ", " + gender + ", " + email + ", " + outhobbys);
		
		request.setAttribute("ID", ID);
		request.setAttribute("PW", PW);
		request.setAttribute("name", name);
		request.setAttribute("gender", gender);
		request.setAttribute("email", email);
		request.setAttribute("outhobby", outhobbys );
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("registerExOut.jsp");
		dispatcher.forward(request, response);
		
	}

}
