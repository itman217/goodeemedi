<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${6 div 3 } <br />
	${3 mod 2} <br />
	${100 eq 100 } <br />
	${100 eq 101? "참" : "거짓"}<br />
	<%
		String input = "100";
	%>		
	${empty input }
	
	
</body>
</html>