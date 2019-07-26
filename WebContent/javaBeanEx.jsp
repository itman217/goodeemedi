<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.gd.jyh.javabean.MemberBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		MemberBean mb = new MemberBean("hkd", "홍길동", "동서번쩍", "1234", "번쩍@gmail.com", "010-1234-5678");
		out.print(mb.toString() + "<br />");
	%>

	<jsp:useBean id="mb2" class="com.gd.jyh.javabean.MemberBean"></jsp:useBean>
	<jsp:setProperty property="userId" name="mb2" value="dooly" />
	mb2객체의 userid 멤버변수에 dooly 값을 setting
	<jsp:setProperty property="name" name="mb2" value="둘리" />
	<jsp:setProperty property="nickName" name="mb2" value="호이" />
	<%
		out.print(mb2.toString() + "<br />");
	%>
	
	<hr />
	이름 :
	<jsp:getProperty property="name" name="mb2" />
	<br /> 닉네임 :
	<jsp:getProperty property="nickName" name="mb2" />

	<hr />
	<h3>EL을 이용하여 출력 </h3>
	mb2.toString()의 결과
	
	MemberBean을 이용하여 도우너 객체(mbDowner)를 액션태그로 생성하시고, 그 객체의 값을 setProperty를
	이용항 할당하시고 그 객체의 값을 getProperty를 이용하여 출력해보세요.

	<jsp:setProperty property="userId" name="mb2" value="mbDowner" />
	mb2객체의 userid 멤버변수에 mbDowner 값을 setting
	<jsp:setProperty property="name" name="mb2" value="도우너" />
	<jsp:setProperty property="nickName" name="mb2" value="호우" />

	<%
		out.print(mb2.toString() + "<br />");
	%>
	<hr />
	이름 :
	<jsp:getProperty property="name" name="mb2" />
	<br /> 닉네임 :
	

</body>
</html>