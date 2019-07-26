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
	<c:set var="now" value="<%=new java.util.Date()%>" />
	${now }<br />
	
	<hr/>
	톰캣 서버의 기본 로케일 : <%=response.getLocale() %> <br/>
	날짜 : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/> <br/>
	통화 : <fmt:formatNumber value="10000" type="currency"> </fmt:formatNumber> <br/>
	
	<hr/>
	<fmt:setLocale value="ja_JP"/>
	톰캣 서버의 기본 로케일 : <%=response.getLocale() %> <br/>
	날짜 : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/> <br/>
	통화 : <fmt:formatNumber value="10000" type="currency"> </fmt:formatNumber> <br/>
	
	<hr/>
	<fmt:setLocale value="en_US"/>
	톰캣 서버의 기본 로케일 : <%=response.getLocale() %> <br/>
	날짜 : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/> <br/>
	통화 : <fmt:formatNumber value="10000" type="currency"> </fmt:formatNumber> <br/>
	
	<hr/>
	<fmt:setLocale value="de_CH"/>
	톰캣 서버의 기본 로케일 : <%=response.getLocale() %> <br/>
	날짜 : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/> <br/>
	통화 : <fmt:formatNumber value="10000" type="currency"> </fmt:formatNumber> <br/>
</body>
</html>