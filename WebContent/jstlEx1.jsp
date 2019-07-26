<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:out value="Hello JSTL!" />
	
	<%
		//pagecontext.setAttribute("name", "홍길동");
	%>
	<c:set var="name" value="홍길동" />
	
	<!-- <c:renove var="name" /> -->
	${name } <br />
	
	<c:set var="monitor" value="<%=new Product(\"m32\C", "\32인치 컬러 모니터\", 1, 30000) %>" />
	
</body>
</html>