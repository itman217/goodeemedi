<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="register.do" method="post">
	아이디 : <input type="text" name="ID" /> <br />
	비번 : <input type="password" name="PW" /> <br />
	이름 : <input type="text" name="name" /> <br />
	성별 : <input type="radio" name="gender" value="m" checked /> 남 
		<input type="radio" name="gender" value="f" /> 여 <br />
	이메일 : <input type="email" name="email" /> <br />
	취미 : <input type="checkbox" name="hobby" value="read"> 독서
		<input type="checkbox" name="hobby" value="study"> 공부
		<input type="checkbox" name="hobby" value="nap"> 낮잠
		<input type="checkbox" name="hobby" value="eat"> 먹기
		<input type="checkbox" name="hobby" value="sleep"> 자기
		<input type="checkbox" name="hobby" value="paly"> 놀기
		<br />
		<input type="submit" value="전송" />
	
	</form>
	
</body>
</html>