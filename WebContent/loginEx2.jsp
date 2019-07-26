<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<script></script>
</head>
<body>
	<h1>loginEx2.jsp</h1>

	<!-- 여기에 form 태그를 이용하여 id와 pw를 입력받아 로그인 처리하는 부분 구현 -->
	<!-- 유저가 id와 pw를 입력하고, 로그인 버튼을 누르면 post 방식으로 ServeltLoginEx로 유저가 입력한 아이디, 패스워드 값이 전송-->
	
	<%
		request.setAttribute("loginOk", "");
	
		//if(request.getAttribute("loginOk").toString() != null || request.getAttribute("loginOk").toString() != "") {
			// eequest 객체에 login 이라는 속성의 값이 있을 때
			if (request.getAttribute("loginOk") != "" && request.getAttribute("loginOk").toString().equals("success")) {
	%>
				<script>
					alert('로그인 성공')
				</script>
	<% 
			} else if (request.getAttribute("loginOk") !="" && request.getAttribute("loginOk").toString().equals("fail")){
	%>
				<script>
					alert('로그인 실패')
				</script>
	<%			
			}
	%>
	
	
	<form action="ServeltLoginEx" method="post">
		ID : <input type="text" name="id"> 
		PW : <input type="password" name="pw">
		<input type="submit" value="로그인">
		<input type="reset" value="취소">
		
	</form>

</body>
</html>