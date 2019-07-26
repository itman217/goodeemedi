
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NaverSearchBook
 */
@WebServlet({ "/NaverSearchBook", "/searchBook.do" })
public class NaversearchBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NaversearchBook() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String searchContent = request.getParameter("searchContent"); // 검색어
		String searchType = request.getParameter("searchType");
		String text = URLEncoder.encode(searchContent, "utf-8"); // 검색어를 URL_Encoder로 부터 UTF-8 인코딩

		String clientId = "LsUMY4mQfFRTajC4fx31"; // 애플리케이션 클라이언트 아이디값";
		String clientSecret = "uSIDfEBD_G"; // 애플리케이션 클라이언트 시크릿값";
		String apiURL = "https://openapi.naver.com/v1/search/book.json?query=" + text;

		// 네이버 api와의 통신 설정
		URL url = new URL(apiURL); // apiURL(문자열 타입)을 URL 주소타입의 객체로 생성
		HttpURLConnection con = (HttpURLConnection) url.openConnection(); // 네이버 api서버와 연결하기 위해 HttpURLConnection 객체 얻어옴
		con.setRequestMethod("GET");
		con.setRequestProperty("X-Naver-Client-Id", clientId);
		con.setRequestProperty("X-Naver-Client-Secret", clientSecret);

		// 통신을 시작하고 통신을 성공했을 때 데이터를 전송해옴
		int responseCode = con.getResponseCode(); // 응답코드

		// BufferedReader : 안정적으로 데이터를 읽을 수 있도록 해주는 객체
		StringBuffer res;
		try {
			BufferedReader br;
			if (responseCode == 200) { // 정상 호출
				// InputStreamReader : 데이터를 스트림으로부터 읽어주는 객체 (character 또는 byte 단위로 읽는다)
				// InputStreamReader로부터 byte 또는 character 단위로 읽은 데이터를 BufferedReader 객체를 이용하여
				// 조합하도록 한다
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else { // 에러 발생
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}

			String inputLine;
			res = new StringBuffer();
			while ((inputLine = br.readLine()) != null) { // json문서가 끝(null)이 아닌동안 한 라인씩 읽어서
				res.append(inputLine); // StringBuffer 객체에 추가
			}
			br.close(); // 스트림 객체 닫음
		} catch (IOException e) {
			res = null;
			e.printStackTrace();
		}
		System.out.println(res.toString());

		// 네이버 api로부터 받아온 json을 front-end로 넘겨줌
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");

//        PrintWriter out = response.getWriter();
//        out.print(res.toString());
//        out.flush();
//        out.close();
		response.getWriter().print(res.toString());
		response.getWriter().flush();
		response.getWriter().close();
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