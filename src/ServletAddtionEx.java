
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletAddtionEx
 */
@WebServlet({ "/SAE", "/main.do" })
// url mapping 
// 서블릿은 클래스 이름이기도 하다. URL에 클래스 이름이 노출이 되는 것은 보안에 취약점이 남겨지므로
// url mapping을 통해서 클래스 명을 숨기는데 의미가 있다.
public class ServletAddtionEx extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletAddtionEx() {
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
		System.out.println("doGet 요청");

		int num1 = 30;
		int num2 = 50;
		int add = num1 + num2;

//		------------------<방식 1 번 : 요청한 곳에서 그대로 response > --------------------
//		response.setContentType("text/html; charset=utf-8");
//		PrintWriter out = response.getWriter();
//		out.print("<!DOCTYPE html>\r\n" + 
//				"<html>\r\n" + 
//				"<head>\r\n" + 
//				"    <title>Untitled Document</title>\r\n" + 
//				"    <meta charset=\"UTF-8\">\r\n" + 
//				"    <meta name=\"description\" content=\"\">\r\n" + 
//				"    <meta name=\"keywords\" content=\"\">\r\n" + 
//				"</head>\r\n" + 
//				"<body>");
//		out.println("<div>" + num1 + "+" + num2 + "=" + add + "</div>");
//		out.print("</body>\r\n" + 
//				"</html>");
//		
//		out.close();

//		------------------<방식 2 번 : 결과를  jspAdditionExFromServlet.jsp 파일로 보내어 출력 > --------------------
		// 결과적으로 방식2가 프로그램 로직(num1 + num2 = add)과 출력을 구분하여 프로그래밍 한 방식이므로
		// 이 방식으로 Model2나 MVC 패턴을 구현한다.
		request.setAttribute("num1", num1); // "num1"이라는 속성에 num1 변수의 값 세팅
		request.setAttribute("num2", num2);
		request.setAttribute("add", add);
		// 위 3문장의 결과로 request 객체에 num1, num2, add 라는 이름의 속성이 생기게 되고, 각각 세팅된 값이 저장 된다.

		RequestDispatcher rd = request.getRequestDispatcher("jspAdditionExFromServlet.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
