
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestEx2Servlet
 */
@WebServlet({ "/research.do", "/rs.do" })
public class RequestEx2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RequestEx2Servlet() {
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
		request.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");

		String gender = "";
		if (request.getParameter("gender").equals("m")) {
			gender = "남자";
		} else if (request.getParameter("gender").equals("f")) {
			gender = "여자";
		}

		String[] fruits = request.getParameterValues("favoriteFruits");
		String outfruits = "";

		for (String s : fruits) {
			outfruits += s + ", ";
		}

		String job = request.getParameter("job");
		System.out.println(name + ", " + gender + ", " + outfruits + ", " + job);
		
		request.setAttribute("name", name);
		request.setAttribute("gender", gender);
		request.setAttribute("outFruit", outfruits);
		request.setAttribute("job", job);
		
		//requestEx2-2.jsp에 출력(RequestDispathcher 이용)
		RequestDispatcher dispatcher = request.getRequestDispatcher("requestEx2-2.jsp");
		dispatcher.forward(request, response);
	}

}
