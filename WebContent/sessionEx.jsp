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
		out.print("getId : " + session.getId() + "<br />");
	
		long sessionCreationTime = session.getCreationTime();
		java.sql.Date d = new java.sql.Date(sessionCreationTime);
		
		out.print("getCreationTime : " + session.getCreationTime());
		out.print("getCreationTime : " + d.toLocaleString() + "<br />");
		out.print("lastAccessedTime : " +new java.sql.Date(session.getLastAccessedTime()).toLocaleString() + "<br />");
		
		if (session.isNew()){
			out.print("새로운 세션이 만들어졌다!");
		} else {
			out.print("새로운 세션이 만들어지지 않았습니다. 기존 세션입니다.");
		}
	%>

</body>
</html>