<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// String num1 = request.getParameter("num1");
	
		int num1 = (Integer)request.getAttribute("num1");
	%>
	스트립트릿 방식 : <%=num1 %> <br />
	
	EL 방식 : ${num1 }
	
</body>
</html>