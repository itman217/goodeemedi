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
		pageContext.setAttribute("name", "page영역");
		request.setAttribute("name", "request영역");
		session.setAttribute("name", "session영역");
		application.setAttribute("name", "application영역");
	%>
	각 내장 객체 영역에 있는 속성을 EL로 출력해보자 <br />
	내장객체를 명시하지 않으면 pageScope 영역에서 속성을 찾아 출력한다 : ${name } <br />
	page 속성 : ${pageScope.name} <br />
	request 속성 : ${requestScope.name } <br />
	session 속성 : ${sessionScope.name } <br />
	application 속성 : ${applicationScope.name } <br />
</body>
</html>