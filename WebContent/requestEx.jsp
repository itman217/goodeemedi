<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request내장 객체</title>
</head>
<body>
	getContextPath() 정보 : <%=request.getContextPath() %> <br />
	getMethod()      : <%=request.getMethod() %> <br />
	getRequestURL()  : <%=request.getRequestURL() %> <br />
	getRequestURI()  : <%=request.getRequestURI() %><br />
	getQueryString() : <%=request.getQueryString() %><br />
	서버이름		     : <%=request.getServerName() %><br />
	호스트 주소		     : <%=request.getRemoteAddr() %><br />
	포로토콜			 : <%=request.getProtocol() %><br />
</body>
</html>