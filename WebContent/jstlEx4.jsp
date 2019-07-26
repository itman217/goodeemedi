<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] marvleMovies = { "캡틴아메리카1", "아이언맨1", "헐크", "아이언맨2", "토르1", "시빌워", "어벤져스1" };

		// EL로 표현하기 위해서 속성으로 포장
		pageContext.setAttribute("marvles", marvleMovies);
	%>

	<%
		// for(String s : marvelMovies){
		// 	out.print(s + ", ") ;
		// }
	%>
	<ul>
		<c:forEach var="movie" items="${marvles }" varStatus="stat">
			<c:choose>
				<c:when test="${stat.count%2 ==0 }">
					<li style="color: red">count: ${stat.index}, count : ${stat.count} , content : ${movie }</li>
				</c:when>
				<c:when test="${stat.count%2 ==1 }">
					<li style="color: blue">count: ${stat.index}, count : ${stat.count} , content : ${movie }</li>
				</c:when>
			</c:choose>
		</c:forEach>
	</ul>
	
	<hr />
	
	<c:forEach var="i" begin="1" end="10" step="2"> 
		${i }
	</c:forEach>
	
	<c:redirect url="jstlEx1.jsp"></c:redirect>
</body>
</html>