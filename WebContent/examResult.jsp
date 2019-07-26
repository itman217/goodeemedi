<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.redStar {
	color: red;
}
</style>
</head>
<body>
	<span class="redStar">*</span>는 필수입력 항목입니다.
	<table border="1">
		<h4>회원가입 결과</h4>
		<tr>
			<td><span class="redStar">*</span>이름 :</td>
			<td>${name }</td>
		</tr>

		<tr>
			<td><span class="redStar">*</span>아이디 :</td>
			<td>${userID }</td>
		</tr>

		<tr>
			<td><span class="redStar">*</span>패스워드 :</td>
			<td>${PW }</td>
		</tr>

		<tr>
			<td>주소 :</td>
			<td>${frontAddNum }-${backAddNum}<br /> ${Add}
			</td>
		</tr>

		<tr>
			<td>전화번호 :</td>
			<td>${frontPhoneNum }-${middlePhoneNum }-${backPhoneNum }</td>
		</tr>

		<tr>
			<td>휴대폰 :</td>
			<td>${frontPhoneNum }-${middlePhoneNum }-${backPhoneNum }</td>
		</tr>

		<tr>
			<td><span class="redStar">*</span>이메일 :</td>
			<td>${email }</td>
		</tr>

		<tr>
			<td>메일링 리스트 가입 여부:</td>
			<td>${mailingJoin }</td>
		</tr>



	</table>
</body>
</html>