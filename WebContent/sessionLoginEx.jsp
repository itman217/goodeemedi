<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
<h1>메인페이지</h1>
	<form action="SessionLoginServlet" method="post" onsubmit="return check();">
		<div>
			아이디 : <input type="text" id="userId" name="userId">
		</div>
		<div>
			패스워드 : <input type="password" id="userPw" name="userPw">
		</div>
		<div>
			<input type="submit" value="로그인">
		</div>
		<div>
			<input type="reset" value="취소">
		</div>
	</form>
	<script>
		function check() {
			let isCheck = false;
			let userId = document.getElementById("userId").value;
			let userPw = document.getElementById("userPw").value;

			if (userId != "" && userPw != "") {
				isCheck = true;
				return isCheck;
			}
			alert("아이디와 패스워드를 입력하세요.");
			return isCheck;
		}
	</script>

</body>
</html>