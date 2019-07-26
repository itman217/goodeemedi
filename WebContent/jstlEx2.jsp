<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// if (request.getParameter("color").equals("1")) {
	%>
	<!--  <div style="color: red">빨강</div> -->
	<%
		// } else if (request.getParameter("color").equals("2")){
	%>
	<!-- <div style="color: blue">파랑</div> -->
	<%
		// }
	%>
	<c:if test="${param.color == 1}">
		<div style="color: red">빨강</div>
	</c:if>
	<c:if test="${param.color ==2 }">
		<div style="color: blue">파랑</div>
	</c:if>

</body>
</html>