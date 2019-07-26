<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기술 방식 - 스크립트릿(scriptlet)</title>
</head>
<body>
	<!-- 스크립트릿 - 자바 문법을 <% %>에 기술 -->
	
	<%
		int num1 = 30;
		int num2 = 50;
		int add = num1 + num2;
	%>
	
	<div>...................</div>
	
	<%
		out.println(add);
	%>
	
	<div>스크립트릿 안에서의 =은 out.print()의 의미이다</div>
	
	<%=num1%> + <%=num2%> = <%=add%>
	
	
</body>
</html>