<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 스크립트 립 방식
		out.print("이름 : " + request.getParameter("name") + "<br/>");
		out.print("성별 : " + request.getParameter("gender") + "<br/>");
		
		// request.getParameter의 반환값 타입이 String이기 때문에 형변환을 직접 해야 한다.
		int sum = Integer.parseInt(request.getParameter("varA")) + 
				Integer.parseInt(request.getParameter("varB"));
		out.print(sum);
	%>
	
	<hr/>
	
	<!-- EL 방식 : null처리, 형변환 필요 없음-->
	이름 : ${param.name } <br/>
	성별 : ${param.gender } <br/>
	${param.varA } + ${param.varB } = ${param.varA + param.varB }
	
</body>
</html>