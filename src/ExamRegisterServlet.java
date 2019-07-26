
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ExamRegisterServlet
 */
@WebServlet("/exam.do")
public class ExamRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ExamRegisterServlet() {
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
		request.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");
		String userID = request.getParameter("userID");
		String PW = request.getParameter("PW");
		String PWCheck = request.getParameter("PWCheck");
		String frontAddNum = request.getParameter("frontAddNum");
		String backAddNum = request.getParameter("backAddNum");
		String Add = request.getParameter("Add");

		String frontPhoneNum = request.getParameter("frontPhoneNum");
		String middlePhoneNum = request.getParameter("middlePhoneNum");
		String backPhoneNum = request.getParameter("backPhoneNum");
		
		String frontCellPhoneNum = request.getParameter("frontCellPhoneNum");
		String middleCellPhoneNum = request.getParameter("middleCellPhoneNum");
		String backCellPhoneNum = request.getParameter("backCellPhoneNum");

		String email = request.getParameter("email");

		String mailingJoin = "";
		if (request.getParameter("mailingJoin").equals("yes")) {
			mailingJoin = "메일링 리스트 가입";
		} else {
			mailingJoin = "메일링 리스트 가입 거부";
		}

		request.setAttribute("name", name);
		request.setAttribute("userID", userID);
		request.setAttribute("PW", PW);
		request.setAttribute("frontAddNum", frontAddNum);
		request.setAttribute("backAddNum", backAddNum);
		request.setAttribute("Add", Add);
		request.setAttribute("frontPhoneNum", frontPhoneNum);
		request.setAttribute("middlePhoneNum", middlePhoneNum);
		request.setAttribute("backPhoneNum", backPhoneNum);
		request.setAttribute("frontCellPhoneNum", frontCellPhoneNum);
		request.setAttribute("middleCellPhoneNum", middleCellPhoneNum);
		request.setAttribute("backCellPhoneNum", backCellPhoneNum);
		request.setAttribute("email", email);
		request.setAttribute("mailingJoin", mailingJoin);

		RequestDispatcher dispatcher = request.getRequestDispatcher("examResult.jsp");
		dispatcher.forward(request, response);

	}

}
