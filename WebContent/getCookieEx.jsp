<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 얻어오기</title>
</head>
<body>
	<h1>모든 쿠키 출력</h1>
	<%
		Cookie[] cookies = request.getCookies();
	
		out.print("모든 쿠키 출력<br />");
		
		for(Cookie c : cookies) {
			out.print(c.getName() + " : " + c.getValue() + "<br />");
		}
		
		out.print("쿠키이름이 uid 쿠키의 값 출력<br />");
		for(Cookie c : cookies){
			if(c.getName().equals("uid")){
				out.print(c.getValue());
			}
		}
	
	%>
</body>
</html>