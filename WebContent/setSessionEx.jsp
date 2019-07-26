<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션에 값 설정하기</h1>
	<%
		session.setAttribute("userId", "hkd");
		session.setAttribute("userNickName", "동해번쩍서해번쩍");
	%>
	
	<a href="getSessionEx.jsp"> 세션 확인하러 가기;</a>
</body>
</html>