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
		<form>
			<div class="mb-3 mt-3">
				<input id="userId" type="text" class="form-control"
					placeholder="아이디를 입력해주세요.">
				<button id="btnUsernameSameCheck" class="btn btn-warning"
					type="button">아이디 중복체크</button>
			</div>
			<div class="mb-3">
				<input id="password" type="password" class="form-control"
					placeholder="비밀번호를 입력해주세요">
			</div>
			<div class="mb-3">
				<input id="username" type="text" class="form-control"
					placeholder="이름을 입력해주세요">
			</div>
			<div class="mb-3">
				<input id="email" type="email" class="form-control"
					placeholder="이메일을 입력해주세요">
			</div>
			<div class="mb-3">
				<input id="phonenumber" type="text" class="form-control"
					placeholder="전화번호를 입력해주세요">
			</div>
			<div>
				<label><input type="checkbox" id="frontend">프런트엔드</label><br/> <label><input
					type="checkbox" value="backend">백엔드</label><br/> <label><input
					type="checkbox" value="devops">데브옴스</label><br/> <label><input
					type="checkbox" value="etc">상관없음</label> 
			</div>
			<button id="btnJoin" type="button" class="btn btn-primary">회원가입</button>
		</form>
	</div>
</body>
</html>