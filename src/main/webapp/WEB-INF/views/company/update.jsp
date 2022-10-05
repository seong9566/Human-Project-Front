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
			<h2>내 정보 수정 - 기업</h2>
			<div class="mb-3 mt-3">
				◆아이디 <input id="userId" type="text" class="form-control"
					placeholder="아이디를 입력해주세요.">
				<button id="btnUsernameSameCheck" class="btn btn-warning"
					type="button">아이디 중복체크</button>
			</div>
			<div class="mb-3">
				◆비밀번호 <input id="password" type="password" class="form-control"
					placeholder="비밀번호를 입력해주세요">
			</div>
			<div class="mb-3">
				◆이름 <input id="username" type="text" class="form-control"
					placeholder="이름을 입력해주세요">
			</div>
			<div class="mb-3">
				◆전화번호<input id="email" type="email" class="form-control"
					placeholder="이메일을 입력해주세요">
			</div>
			<div class="mb-3">
				◆이메일<input id="phonenumber" type="text" class="form-control"
					placeholder="전화번호를 입력해주세요">
			</div>
			<div class="mb-3">◆관심분야</div>
			<div>
				<label> <input type="checkbox" id="frontend">포런트엔드
				</label> <label><input type="checkbox" value="backend">백엔드</label> <label><input
					type="checkbox" value="server">서버</label> <input id="etc"
					type="text" class="form-control" placeholder="보유한 다른 기술을 입력하세요.">
			</div>
		</form>
		<div class="mb-5"></div>
		<div class="d-grid gap-1 col-2 mx-auto">
			<button id="btnJoin" type="button" class="btn btn-primary">수정완료</button>
		</div>
	</div>
</body>
</html>