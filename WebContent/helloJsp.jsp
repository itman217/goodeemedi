<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello, JSP</title>
<style type="text/css">
h1 {
	width: 300px;
	height: 200px;
	background-color: yellow;
}
</style>
</head>
<body>
	<%
		int age=0;
		try{
			age = Integer.parseInt(request.getParameter("age"));
		} catch(NumberFormatException e) {
			
		}
	%>
	<h1 onClick="alert('!');">
		Hello, JSP!
		<% out.print(age); %>
	</h1>

	<form action="FirstServlet" method="post">
		아이디 : <input type="text" name="userId"> <input type="submit"
			value="확인">
	</form>

</body>
</html>