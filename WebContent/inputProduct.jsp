<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
	<form action="inputProduct.do" method="post">
		<div class="form-group">
			<label for="productNo">제품번호:</label> <input type="text"
				class="form-control" id="productNo" name="productNo"
				placeholder="제품번호 입력..." required >
		</div>
		<div class="form-group">
			<label for="productName">제품명:</label> <input type="text"
				class="form-control" id="productName" name="productName"
				placeholder="제품명 입력..." required>
		</div>
		<div class="form-group">
			<label for="prdductQty">제품수량:</label> <input type="text"
				class="form-control" id="prdductQty" name="prdductQty"
				placeholder="제품수량 입력..." >
		</div>
		<div class="form-group">
			<label for="productprice">제품가격</label> <input type="text"
				class="form-control" id="productprice" name="productprice"
				placeholder="제품가격 입력..." required>
		</div>
		<div class="form-group">
			<button type="reset" class="btn btn btn-outline-info">취소</button>
			<button type="submit" class="btn btn-outline-warning">제품저장</button>
		</div>
	</form>
</body>
</html>