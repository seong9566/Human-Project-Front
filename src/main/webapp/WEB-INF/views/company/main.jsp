<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

<style>
body {
	width: 1200px;
	margin: 0 auto;
	position: relative;
}

#block {
	display: inline-block;
	width: 300px;
	height: 120px;
	margin: 40px;
	background-color: #f9f9f9;
}
#find{
	float: right;
}
</style>
</head>
<body>
	<h2>기업 메이페이지</h2>

	<div class="container mt-3" style="border: 3px solid #000000">
		<span id="block" class="border border-2"></span> <span id="block" class="border border-2"></span>
		<span id="block" class="border border-2"></span>
	</div>
	<div class="mb-3"></div>

	<div class="dropdown">
		<button type="button" class="btn btn-primary dropdown-toggle"
			data-bs-toggle="dropdown">분야선택</button>
		<ul class="dropdown-menu">
			<li><a class="dropdown-item" href="#">프론트엔드</a></li>
			<li><a class="dropdown-item" href="#">서버</a></li>
			<li><a class="dropdown-item" href="#">백엔드</a></li>
		</ul>
		
		
		<span id="find"> <input class="float: right" type="text"
			placeholder="검색어 입력" aria-label="search"
			aria-describedby="button-addon2">
			<button class="btn btn-success" type="submit" id="button-addon2">검색</button>
		</span>
	</div>


	<div class="container p-5 my-4 border">이력서1</div>
	<div class="container p-5 my-4 border">이력서2</div>
	<div class="container p-5 my-4 border">이력서3</div>
	<div class="container p-5 my-4 border">이력서4</div>
	<div class="container p-5 my-4 border">이력서5</div>
	<div class="container p-5 my-4 border">이력서1</div>

</body>

</html>