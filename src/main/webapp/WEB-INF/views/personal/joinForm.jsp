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
				<label><input type="radio" name="choose" id="company_id">기업용</label> 
				<label><input type="radio" name="choose" id="personal_id">개인용</label>
				<div>
				<label><input type="checkbox" id="frontend">포런트엔드</label>
				<label><input type="checkbox" value="backend">백엔드</label>
				<label><input type="checkbox" value="server">서버</label>
				<input id="etc" type="text" class="form-control" placeholder = "보유한 다른 기술을 입력하세요.">
				</div> 
			<button id="btnJoin" type="button" class="btn btn-primary">회원가입</button>
		</form>
	</div>
</body>
</html>