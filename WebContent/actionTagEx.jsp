<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>액션태그 연습</h1>
	<%
		//request.setAttribute("name", "hkd");
		
		//RequestDispatcher rd = request.getRequestDispatcher("loginEx,jsp");
		//rd.forward(request, response);
		
	%>
	<jsp:forward page="loginEx.jsp">
		<jsp:param value="hkd" name="name" />
	
	<jsp:include page="footer.jsp">
		</jsp:include>
		
</body>
</html>