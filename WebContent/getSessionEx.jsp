<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메인페이지</h1>

	<%
		String userId = (String) session.getAttribute("userId");
		if (userId != null) {
			out.print("<div><b>" + session.getAttribute("userNickName") + "</b>님 반갑습니다.</div>");
			out.print("<div><a href='logout.jsp'>로그아웃</a>");
		} else {
			// out.print("<div>로그인 되어있지 않습니다.</div>");
	%>
	<a href="sessionLoginEx.jsp">로그인</a>
	<a href="회원가입.jsp">회원가입 하기</a>
	<%
		}
	%>
</body>
</html>