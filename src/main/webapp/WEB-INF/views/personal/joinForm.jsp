<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�̷¼����� ����Ʈ</title>
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
					placeholder="���̵� �Է����ּ���.">
				<button id="btnUsernameSameCheck" class="btn btn-warning"
					type="button">���̵� �ߺ�üũ</button>
			</div>
			<div class="mb-3">
				<input id="password" type="password" class="form-control"
					placeholder="��й�ȣ�� �Է����ּ���">
			</div>
			<div class="mb-3">
				<input id="username" type="text" class="form-control"
					placeholder="�̸��� �Է����ּ���">
			</div>
			<div class="mb-3">
				<input id="email" type="email" class="form-control"
					placeholder="�̸����� �Է����ּ���">
			</div>
			<div class="mb-3">
				<input id="phonenumber" type="text" class="form-control"
					placeholder="��ȭ��ȣ�� �Է����ּ���">
			</div>
			<div>
				<label><input type="checkbox" id="frontend">����Ʈ����</label><br/> <label><input
					type="checkbox" value="backend">�鿣��</label><br/> <label><input
					type="checkbox" value="devops">����Ƚ�</label><br/> <label><input
					type="checkbox" value="etc">�������</label> 
			</div>
			<button id="btnJoin" type="button" class="btn btn-primary">ȸ������</button>
		</form>
	</div>
</body>
</html>