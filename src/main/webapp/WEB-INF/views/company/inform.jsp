<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�̷¼����� ����Ʈ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
#btnUsernameSameCheck {
	margin-top: 10px;
}
</style>
</head>
<body>
	<div class="container">
		<form> 
			<h2>�� ���� - ���</h2>
			<div class="mb-3 mt-3">
				�߾��̵� <input id="userId" type="text" class="form-control" placeholder="���̵� �Է����ּ���." readonly>
				<button id="btnUsernameSameCheck" class="btn btn-warning" type="button">���̵� �ߺ�üũ</button>
			</div>
			<div class="mb-3">
				���̸� <input id="username" type="text" class="form-control" placeholder="�̸��� �Է����ּ���" readonly>
			</div>
			<div class="mb-3">
				����ȭ��ȣ<input id="email" type="email" class="form-control" placeholder="�̸����� �Է����ּ���" readonly>
			</div>
			<div class="mb-3">
				���̸���<input id="phonenumber" type="text" class="form-control" placeholder="��ȭ��ȣ�� �Է����ּ���" readonly>
			</div>
			<div class="mb-3">���ּ�</div>
			<input id="member_post" type="text" placeholder="�����ȣ" readonly onclick="findAddr()" > 
			<button id="btnJoin" type="button" class="btn btn-primary">�����ȣã��</button><br>
			<input id="member_addr" type="text" placeholder="�ּ�" style="width:645px;" readonly>
			<input type="text" placeholder="���ּ�" style="width:645px;">
			<div class="mb-3"></div>
			<div class="mb-3">�߰��ɺо�</div>
			<div>
				<label><input type="checkbox" id="frontend">����Ʈ����</label><br /> 
				<label><input type="checkbox" value="backend">�鿣��</label><br /> 
				<label><input type="checkbox" value="devops">����Ƚ�</label><br /> 
				<label><input type="checkbox" value="etc">�������</label>
			</div>
		</form>
		<div class="mb-5"></div>
		<div class="d-grid gap-1 col-2 mx-auto">
			<button id="btnJoin" type="button" class="btn btn-primary">��������</button>
		</div>

<<<<<<< HEAD
=======
<div class="container">
	<form>
		
		<div class="mb-3 mt-3">
			◆아이디 <input id="userId" type="text" class="form-control" placeholder="아이디를 입력해주세요." readonly>
			<button id="btnUsernameSameCheck" class="btn btn-warning" type="button" style="margin-top: 10px;">아이디 중복체크</button>
		</div>
		<div class="mb-3">
			◆이름 <input id="username" type="text" class="form-control" placeholder="이름을 입력해주세요" readonly>
		</div>
		<div class="mb-3">
			◆전화번호<input id="phonenumber" type="text" class="form-control" placeholder="이메일을 입력해주세요" readonly>
		</div>
		<div class="mb-3">
			◆이메일<input id="email" type="email" class="form-control" placeholder="전화번호를 입력해주세요" readonly>
		</div>
		<div class="mb-3">◆주소</div>
		<input id="member_post" type="text" placeholder="우편번호" readonly >
		<br> <input id="member_addr" type="text" placeholder="주소" style="width: 645px;" readonly> <input id="detailAddress" type="text" placeholder="상세주소" style="width: 645px;">
		<div class="mb-3"></div>
		<div class="mb-3">◆관심분야</div>
		<div>
			<label><input type="checkbox" id="frontend">프런트엔드</label><br /> <label><input type="checkbox" value="backend">백엔드</label><br /> <label><input type="checkbox"
				value="devops">데브옴스</label><br /> <label><input type="checkbox" value="etc">상관없음</label>
		</div>
	</form>
	<div class="mb-5"></div>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnSave" type="button" class="btn btn-primary">정보수정</button>
>>>>>>> 52168b6 (메인메뉴,로그인,내정보,수정,회원가입 validation빼고 초안최종완료)
	</div>

	<script>
		function findAddr() {
			new daum.Postcode(
					{
						oncomplete : function(data) {

<<<<<<< HEAD
							console.log(data);

							// �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
							// ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� ǥ���Ѵ�.
							// �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
							var roadAddr = data.roadAddress; // ���θ� �ּ� ����
							var jibunAddr = data.jibunAddress; // ���� �ּ� ����
							// �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
							document.getElementById('member_post').value = data.zonecode;
							if (roadAddr !== '') {
								document.getElementById("member_addr").value = roadAddr;
							} else if (jibunAddr !== '') {
								document.getElementById("member_addr").value = jibunAddr;
							}
						}
					}).open();
		}
	</script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
=======
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
>>>>>>> 52168b6 (메인메뉴,로그인,내정보,수정,회원가입 validation빼고 초안최종완료)

<%@ include file="../layout/footer.jsp"%>