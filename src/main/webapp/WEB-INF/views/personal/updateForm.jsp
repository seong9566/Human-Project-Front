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
		<button id="btnDelete" class="btn btn-danger">ȸ��Ż��</button>
		<form>
			<input id="id" type="hidden" value="${personal.Id}">
			<div class="mb-3">
				<input id="userId" type="text" class="form-control"
					placeholder="���̵� ����" value="${personal.userId}">
			</div>
			<div class="mb-3">
				<input id="password" type="password" class="form-control"
					placeholder="�ٹй�ȣ ����" value="${personal.password}">
			</div>
			<div class="mb-3 mt-3">
				<input type="text" class="form-control" placeholder="�̸� ����"
					value="${personal.username}">
			</div>
			<div class="mb-3">
				<input id="phonenumber" type="text" class="form-control"
					placeholder="��ȭ��ȣ ����" value="${personal.phonenumber}">
			</div>
			<div class="mb-3">
				<input id="email" type="email" class="form-control"
					placeholder="�̸��� ����" value="${personal.email}">
			</div>
			<button id="btnUpdate" type="button" class="btn btn-primary">ȸ�������Ϸ�</button>
			<button id="resumeUpdate" type="button" class="btn btn-primary">�̷¼� ���/����</button>
		</form>
	</div>
</body>
</html>