<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<%@ include file ="footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<meta charset="UTF-8">
<title>login</title>
<script></script>
</head>
<body>
	<!-- 여기에 form 태그를 이용하여 id와 pw를 입력받아 로그인 처리하는 부분 구현 -->
	<!-- 유저가 id와 pw를 입력하고, 로그인 버튼을 누르면 post 방식으로 ServeltLoginEx로 유저가 입력한 아이디, 패스워드 값이 전송-->
	<%
		out.print();
		
		String loginOk = (request.getParameter("loginOk") == null)? "" : request.getParameter("loginOk");
		if (loginOk.equals("success")){
	%>
		<script> alert("로그인 성공")</script>
		
	<%		
		} else if(loginOk.equals("fail")) {
			%>
			<script> alert("로그인  실패")</script>
			<%
			
		}
	%>
	
	<form action="ServeltLoginEx" method="post" onsubmit="return check();">
		<div>아이디 : <input type="text" id= "userId" name="userId"> </div>
		<div>패스워드 : <input type="password" id="userPw" name="userPw"> </div>
		<div><input type="submit" value="로그인"></div>
		<div><input type="reset" value="취소"></div>
	</form>
	<script>
		$(document).ready(function(){
			alert("!");
		});
	
		function check(){
			let isCheck = false;
			let userId = document.getElementById("userId").value;
			let userPw = document.getElementById("userPw").value;
			
			if (userId != "" && userPw != ""){
				isCheck = true;
				return isCheck;
			}
			alert('아이디와 패스워드를 입력해주세요');
			return isCheck;
		}
	</script>

</body>
</html>