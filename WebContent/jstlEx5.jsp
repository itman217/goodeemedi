<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="now" value="<%=new java.util.Date() %>" />
	${now }<br/>
	
	date : <fmt:formatDate value="${now }" type="date" /><br/>
	time : <fmt:formatDate value="${now }" type="time" /><br/>
	both : <fmt:formatDate value="${now }" type="both" /><br/>
	
	default : <fmt:formatDate value="${now }" type="both" dateStyle="default" timeStyle="default" /><br/>
	long : <fmt:formatDate value="${now }" type="both" dateStyle="long" timeStyle="long" /><br/>
	medium : <fmt:formatDate value="${now }" type="both" dateStyle="medium" timeStyle="medium" /><br/>
	short : <fmt:formatDate value="${now }" type="both" dateStyle="short" timeStyle="short" /><br/>
	full : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full" /><br/>
	pattern : <fmt:formatDate value="${now }" pattern="yyyy년 mm월 dd일 hh시 mm분 ss초"  /><br/>
		
	
</body>
</html>