<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	userType이라는 파라메터의 값이 'admin'이면 관리자라고 출력, userType 파라메터 값이 'member'라면 일반 회원이라 출력하고
	아무값도 없으면 '비 회원' 이라 출력
	
	<c:choose>
		<c:when test="${ param.userType=='admin' }">
			<div>관리자</div>
		</c:when>
		<c:when test="${param.userType=='member' }">
			<div>일반회원</div>
		</c:when>
		<c:otherwise>
			<div>비 회원</div>
		</c:otherwise>
	</c:choose>
</body>
</html>