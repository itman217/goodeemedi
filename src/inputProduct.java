
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gd.jyh.javabean.Product;

/**
 * Servlet implementation class inputProduct
 */
@WebServlet({ "/inputProduct", "/inputProduct.do" })
public class inputProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public inputProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("inputProduct.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		Product p = new Product(request.getParameter("productNo"), request.getParameter("productName"),
				Integer.parseInt(request.getParameter("productQty")),
				Integer.parseInt(request.getParameter("productprice")));
		
		request.setAttribute("product", p);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("outputProduct.jsp");
		dispatcher.forward(request, response);
	}

}
