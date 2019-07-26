<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hi hellow</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<form method="post" action="isDuplicateAjax.do" onsubmit="check();">
		<div>
			아이디 : <input type="text" id="userId" name="userId" /><span id="error" style="color: red"></span>
		</div>
		비밀번호 : <input type="password" id="userPwd" name="userPwd" /><br /> 이름
		: <input type="text" id="userName" name="userName" /> <br /> <input
			type="submit" value="회원가입" /> <input type="reset" value="취소" />

	</form>
	<script>
		function errorEmpty() {
			$("#error").html('');
		}

		// {"abcd","hkd","webs","ball","caution"}
		$(document).ready(function() {
			$("#userId").keyup(function() { // 텍스트 박스 아이디에 키 입력을 할때 마다
				console.log($(this).val());//입력된 아이디 값을 가져와
				let myId = $(this).val();
				//서블릿에 전송하여 아이디가 중복인지 아닌지 결과를 가져와야 한다.(백 엔드 와의 비동기 통신)
				$.ajax({
					type : "GET",
					url : "isDuplicateAjax.do?q=" + myId,//url mapping주소 입력
					dataType : "json",
					success : function(data) {
						//console.log(data)
						console.log(data.isDuplicate);
						if (data.isDuplicate === true) {
							$("#error").html("아이디가 중복 됩니다!");
							setTimeout(errorEmpty, 500);
						}
					},
					error : function(res) {
						console.log(res.responseText);
					},
					complete : function() {

					},
				});
			});
		});
		function check() {
			//회원가입  유효성 검사
		}
	</script>
</body>
</html>