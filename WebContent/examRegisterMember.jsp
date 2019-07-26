<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<title>회원가입</title>
<style>
.redStar {
	color: red;
}
</style>

</head>
<body>
	<span class="redStar">*</span>는 필수입력 항목입니다.
	<table border="1">
		<h4>회원가입 정보 입력</h4>
		<form action="exam.do" method="post" onsubmit="return check();">
			<tr>
				<td><span class="redStar">*</span>이름</td>
				<td><input type="text" name="name" id="name"></td>
			</tr>

			<tr>
				<td><span class="redStar">*</span>사용자아이디</td>
				<td><input type="text" name="userID" id="userID"><input
					type="button" value="ID중복확인" onclick="click();"></td>
			</tr>

			<tr>
				<td><span class="redStar">*</span>패스워드</td>
				<td><input type="password" name="PW" id="PW"></td>
			</tr>

			<tr>
				<td><span class="redStar">*</span>패스워드 확인</td>
				<td><input type="password" name="PWCheck" id="PWCheck"></td>
			</tr>

			<tr>
				<td>주소</td>
				<td><input type="number" name="frontAddNum"> - <input
					type="number" name="backAddNum"> <input type="button"
					value="우편번호찾기" onclick="click();"><br /> <input
					type="text" name="Add"></td>
			</tr>

			<tr>
				<td>전화번호</td>
				<td><input type="number" name="frontPhoneNum"> - <input
					type="number" name="middlePhoneNum"> - <input type="number"
					name="backPhoneNum"></td>
			</tr>

			<tr>
				<td>휴대폰</td>
				<td><input type="number" name="frontCellPhoneNum"> - <input
					type="number" name="middleCellPhoneNum"> - <input
					type="number" name="backCellPhoneNum"></td>
			</tr>

			<tr>
				<td><span class="redStar">*</span>이메일</td>
				<td><input type="email" name="email" id="email"></td>
			</tr>

			<tr>
				<td>메일링 리스트 가입</td>
				<td>메일링리스트에 가입하시면 WebCafe의 뉴스레터를 받아보실 수 있습니다<br /> <input
					type="radio" name="mailingJoin" value="yes" checked> 예 <input
					type="radio" name="mailingJoin" value="no"> 아니오
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="회원가입"> <input
					type="reset" value="취소"></td>
			</tr>

		</form>

	</table>
	<script>
		function click() {
			alert("구현중입니다..!");
		}

		function check() {
			let isCheck = false;
			let name = document.getElementById("name").value;
			let userID = document.getElementById("userID").value;
			let PW = document.getElementById("PW").value;
			let PWCheck = document.getElementById("PWCheck").value;
			let email = document.getElementById("email").value;

			//if (!(PW.length >= 4 && PW.length <=10 && PWCheck.length >=4 && PWCheck.length <= 10){
			//	alert("패스워드는 4~10자 이내로 기입 되어야 합니다!");
			//}

			if (PW != PWCheck) {
				alert("패스워드가 일치 하지 않습니다!");
			}

			if (name != "" && userID != "" && PW != "" && PWCheck != ""
					&& email != "") {
				isCheck = true;
				return isCheck;
			}
			alert("필수 입력 항목은 반드시 기입하셔야 합니다!");
			return isCheck;

		}
	</script>
</body>
</html>