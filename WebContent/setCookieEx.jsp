<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.UUID"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 저장</title>
</head>
<body>
	<%
		// [1] 쿠키 객체 생성
		Cookie c = new Cookie("userNickName", "hkd"); // 쿠키이름과 값으로 쿠키 생성

		// GUID(Global Unique IDentifier) = UUID(Universally Unique IDentifier)

		Cookie uid = new Cookie("uid", UUID.randomUUID().toString());

		// [2] 쿠키 만료 시간 설정
		c.setMaxAge(365 * 24 * 60 * 60); // 쿠키 만료 시간 1년
		uid.setMaxAge(60 * 365 * 24 * 60 * 60);

		// [3] 클라이언트에 쿠키 전송
		response.addCookie(c);
		response.addCookie(uid);
	%>
</body>
</html>