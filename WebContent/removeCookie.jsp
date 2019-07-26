<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제하기</title>
</head>
<body>
	<h1>쿠키 삭제</h1>
	<%
		Cookie c = new Cookie("UserNickName", "");
		c.setMaxAge(0);
		response.addCookie(c);
		
		out.print("쿠키가 삭제 됐습니다.");
		%>		
		<a href="getCookieEx.jsp">쿠키 확인해 보기</a>
		

</body>
</html>