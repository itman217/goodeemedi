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
		pageContext.setAttribute("pageName", "page영역");
		request.setAttribute("requestName", "request영역");
		session.setAttribute("sessionName", "session영역");
		application.setAttribute("applicationName", "application영역");
	%>
	
	<h1>firstPage.jsp</h1>
	page 영역 : <%=pageContext.getAttribute("pageName") %> <br />
	request 영역 : <%=request.getAttribute("requestName") %> <br />
	session 영역 : <%=session.getAttribute("sessionName") %> <br />
	application 영역 : <%=application.getAttribute("applicationName") %> <br />
	<%
		RequestDispatcher dispatcher = request.getRequestDispatcher("secondPage.jsp");
		dispatcher.forward(request, response);
	%>
</body>
</html>