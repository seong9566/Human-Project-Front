<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이력서관리 사이트</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<button id="btnDelete" class="btn btn-danger">회원탈퇴</button>
		<form>
			<input id="id" type="hidden" value="${personal.Id}">
			<div class="mb-3">
				<input id="userId" type="text" class="form-control"
					placeholder="아이디 수정" value="${personal.userId}">
			</div>
			<div class="mb-3">
				<input id="password" type="password" class="form-control"
					placeholder="바밀번호 수정" value="${personal.password}">
			</div>
			<div class="mb-3 mt-3">
				<input type="text" class="form-control" placeholder="이름 수정"
					value="${personal.username}">
			</div>
			<div class="mb-3">
				<input id="phonenumber" type="text" class="form-control"
					placeholder="전화번호 수정" value="${personal.phonenumber}">
			</div>
			<div class="mb-3">
				<input id="email" type="email" class="form-control"
					placeholder="이메일 수정" value="${personal.email}">
			</div>
			<button id="btnUpdate" type="button" class="btn btn-primary">회원수정완료</button>
			<button id="resumeUpdate" type="button" class="btn btn-primary">이력서 등록/수정</button>
		</form>
	</div>
</body>
</html>