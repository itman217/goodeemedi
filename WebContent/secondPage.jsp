<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>secondPage.jsp</h1>
	page 영역 : <%=pageContext.getAttribute("pageName") %> <br />
	request 영역 : <%=request.getAttribute("requestName") %> <br />
	session 영역 : <%=session.getAttribute("sessionName") %> <br />
	application 영역 : <%=application.getAttribute("applicationName") %> <br />
	
	<a href="thirdPage.jsp">세번째 페이지로 이동</a>
</body>
</html>