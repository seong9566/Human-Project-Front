<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

	<div class="container">
		<h2></h2>
		<form>
			<div class="mb-3 mt-3">
				<h3>◆아이디</h3>
<<<<<<< HEAD
				<input id="position" type="text" class="form-control" placeholder="Enter id">
			</div>
			<div class="mb-3 mt-3">
				<h3>◆비밀번호</h3>
				<input id="position" type="text" class="form-control" placeholder="Enter password">
=======
				<input id="id" type="text" class="form-control" placeholder="id를 입력하세요">
			</div>
			<div class="mb-3 mt-3">
				<h3>◆비밀번호</h3>
				<input id="password" type="text" class="form-control" placeholder="password를 입렵하세요">
>>>>>>> 52168b6 (메인메뉴,로그인,내정보,수정,회원가입 validation빼고 초안최종완료)
			</div>

			<div class="d-flex justify-content-around">
				<button id="btnInsert" type="button" class="btn btn-primary">로그인</button>
				<button id="btnInsert" type="button" class="btn btn-primary">회원가입</button>
			</div>
		</form>
	</div>
	
<%@ include file="../layout/footer.jsp"%>