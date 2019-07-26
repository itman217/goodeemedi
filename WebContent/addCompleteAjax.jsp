<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
.autoComplete {
	border: 1px solid gray;
	width: 300px;
}
</style>
</head>
<body>
	<div>
		검색 : <input type="text" id="userID" name="search" autocomplete="off" />
	</div>
	<div class="autoComplete"></div>
	<script>
		$(document).ready(function() {
			$(".autoComplete").hide(); // 텍스트 박스 아이디에 키 입력을 할때 마다
			
			//오토컴플리트 되어 나오는 항목을 클릭시에 텍스트박스에 자동 입력
			$(document).on('click', '.searchItem', function()){
				$('#search').val($(this).text());
				$('.autoComplete').hide();
			});
		
			// 키보드를 두드리면
			$('#search').keyup(function() {
				var search = $('#search').val();
				var output = "";
				if (search.length >= 2) {
					$.ajax({
						type : "GET",
						url : "searchSongTitle.do?search=" + search,
						dataType : "json",
						success : function(data) {
							console.log(data);
							// 검색된 결과를 선택 할 수 있도록 ul~li 태그로 만듦
							output = "<ul>";
							for (var i = 0; i < data.length; i++) {
								tempArr = data[i].split(search);
								output += "<li><span class='searchItem'>" + tempArr[0] + "<em style='color: #f542aa'>"
								+ search + "</em>" + tempArr[1] + "</span></li>";
							}
							output += "</ul>";
							$('.autoComplete').html(output);
							// 검색 결과가 있을 때만 오토컴플리트를 보여줌
							if(data.length >=1){
								$('.autoComplete').show();
							}
						},
						error : function(res) {
							console.log(res.responseText);
						},
						complete : function() {
						}
					});
				}
			});
		});
	</script>

</body>
</html>