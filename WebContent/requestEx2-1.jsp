<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사 결과</title>
</head>
<body>
	<h1>설문조사 결과 페이지</h1>
	
	<%
		request.setCharacterEncoding("utf-8");
	
		String name = request.getParameter("name");
		
		String gender = "";
		if (request.getParameter("gender").equals("m")){
			gender = "남자";
		} else if(request.getParameter("gender").equals("f")){
			gender = "여자";
		}
		
		String[] fruits = request.getParameterValues("favoriteFruits");
		String outfruits ="";
		
		for(String s : fruits) {
			outfruits += s + ", ";	
		}
		
		String job = request.getParameter("job");

	%>
	
	설문자 : <%=name %> <br />
	설문자의 성별 : <%=gender %> <br />
	좋아하는 과일 : <%=outfruits %> <br />
	설문자의 직장 : <%=job %><br />
	
	<a href="javascript:history.go(-1)">다시 설문에 응하기</a>
</body>
</html>