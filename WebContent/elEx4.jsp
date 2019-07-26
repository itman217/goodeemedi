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
	 <form action="elEx4-1.jsp" method="get">
		이름 : <input type="text" name="name" /> <br />
		성별 : <input type="radio" name="gender" value="m" /> 남
			  <input type="radio" name="gender" value="f"/> 여 <br />
		a : <input type="text" name="varA"> <br />
		b : <input type="text" name="varB"> <br />
		
		<input type="submit" value="전송" />
	</form>
</body>
</html>