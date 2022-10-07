<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

	<div class="container">
		<h2></h2>
		<form>
			<div class="mb-3 mt-3">
				<h3>◆아이디</h3>

				<input id="id" type="text" class="form-control" placeholder="id를 입력하세요">
			</div>
			<div class="mb-3 mt-3">
				<h3>◆비밀번호</h3>
				<input id="password" type="password" class="form-control" placeholder="password를 입력하세요">


			</div>

			<div class="d-flex justify-content-around">
				<button id="login" type="button" class="btn btn-primary">로그인</button>
				<button id="join" type="button" class="btn btn-primary">개인용 회원가입</button>
				<button id="join" type="button" class="btn btn-primary">기업용 회원가입</button>
			</div>
		</form>
	</div>

<%@ include file="../layout/footer.jsp"%>