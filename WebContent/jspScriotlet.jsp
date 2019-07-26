<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%!
	// 선언부 : jsp에서 멤버 변수나 멤버 메서드를 선언하기 위한 부분
			//(서블릿으로 변환되어 컴파일 될 때 이곳에서 선언한 변수나 메서드는 서블릿 객체의 멤버가 된다.)
	String str = "아침부터 덥네요";
	int globalCnt = 0;
	
	int a = 3, b = 5;
	
	public int myAbs(int n){
		if (n<0){
			n = -n;
		}
		return n;
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 스크립트 릿에서 선언한 변수는 지역변수화 된다.
		int localCnt = 0;
		out.print("localCnt : " + localCnt + ", globalCnt : " + globalCnt);
		++localCnt;
		++globalCnt;
		//out.print(str + "<br/>");
		//out.print("-5 의 절대값 : " + myAbs(-5));
	%>
	<%=str%> <br/>
	-5의 절대값 <%=myAbs(-5) %>
	<br/>
	<%= new Date().toLocaleString()  %>
	<br/>
	<%
		Date curDate = new Date();
		out.print(curDate.toLocaleString());
	%>
	
	<%
		Calendar cal = Calendar.getInstance(); // Calendar 객체 생성 - 싱글톤
		SimpleDateFormat format = new SimpleDateFormat("yyyy년 MM월 dd일"); // SimpleDateFormat
		SimpleDateFormat curTime = new SimpleDateFormat("hh시 mm분 ss초");
	%>
	
	<div>오늘은<b><%= format.format(cal.getTime()) %></b></div>
	<div>현재시간은 <i><%= curTime.format(cal.getTime()) %></i></div>
</body>
</html>