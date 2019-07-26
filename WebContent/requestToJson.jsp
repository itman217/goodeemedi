<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<h1>서블릿에 json요청하기</h1>
	<input type="button" id="requestJson" value="json요청">
	
	<script>
		$(document).ready(function(){
			$('#requestJson').click(function() {
				$.ajax({
					type : "GET",
					url : "outputJson.do",
					dataType : "json",
					success : function(data){
						console.log(data)
					},
					error : function(res) {
						console.log(res.responseText);
					},
					complete : function() {
						
					},
				})
			})
		})
	</script>
</body>
</html>