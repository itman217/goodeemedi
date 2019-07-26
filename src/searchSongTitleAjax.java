

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator;

/**
 * Servlet implementation class searchSontTitleAjax
 */
@WebServlet({"/searchSontTitleAjax", "/searchSontTitl.do"})
public class searchSongTitleAjax extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchSongTitleAjax() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("search"));
		
		String search = request.getParameter("search");
		String[] contents = {"0번의 사랑", "첫 사랑", "7년간의 사랑", "고향만리", "결국 흔해 빠진 사랑얘기", "그 사람이 울고 있어요"
		, "그 아픔까지 사랑한거야", "거짓 이별", "갈증", "긴 이별", "날 위한 이별"};
		
		ArrayList<String> resultList = new ArrayList<String>();
		for (String s : contents) {
			if (s.contains(search)) {
				resultList.add(s);
			}
		}
		
		Gson gson = new Gson();
		gson.toJson(resultList);
		System.out.println(resultList);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		out.print(resultList);
		out.flush();
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
