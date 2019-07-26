<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<body>
   <h2>네이버 책 검색 예제</h2>
   <form action="searchBook.do" method="get">
   <input type="text" id="searchContent" name="searchContent"/>
   <select id="searchType">
      <option value="d_titl">책 제목</option>
      <option value="d_auth">저자명</option>
      <option value="d_isbn">ISBN</option>
      <option value="d_publ">출판사</option>
   </select>
   <input type="submit" value="검색" id="searchBtn"/>
   </form>
   
   <script type="text/javascript">
      $(document).ready(function(){
         $("#searchBtn").click(function(){
            var searchContent = $("#searchContent").val();
            var searchType = document.getElementById("searchType"); //select 박스에서 선택한 value값 가져오기
            var st = searchType[searchType.selectedIndex].value;
            console.log(searchType);
            
            $.ajax({
                   type : "GET",
                   url : "searchBook.do?searchContent="+searchContent+"&searchType=" + st,
                   dataType : "json",
                   success : function(data){
                      console.log(data);

                   },
                   error : function(res) {
                      console.log(res.responseText);
                   },
                   complete : function() {
                                  
                   },
                });
         });
      });
   </script>
   
   <div id="result"></div>
</body>
</html>