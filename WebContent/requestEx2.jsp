<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사</title>
</head>
<body>
	<h1> 설 문 조 사 </h1>
	<!-- <form action="requestEx2-1.jsp" method="get"> -->
	 <form action="research.do" method="post">
		이름 : <input type="text" name="name" /> <br />
		성별 : <input type="radio" name="gender" value="m" checked /> 남
			  <input type="radio" name="gender" value="f"/> 여 <br />
		좋아하는 과일 :
		<input type="checkbox" name="favoriteFruits" value="apple" > 사과
		<input type="checkbox" name="favoriteFruits" value="watermelon"> 수박
		<input type="checkbox" name="favoriteFruits" value="Melon"> 참외
		<input type="checkbox" name="favoriteFruits" value="Jadu"> 자두
		<br />
		
		직업 : <select name="job">
			<option value="student">학생</option>
			<option value="programmer">개발자</option>
			<option value="worker">직장인</option>
		</select>
		<input type="submit" value="전송" />
	</form>
</body>
</html>