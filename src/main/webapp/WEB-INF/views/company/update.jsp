<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
	<div class="container">
		<form> 
			<h2></h2>
			<div class="mb-3 mt-3">
				◆아이디 <input id="userId" type="text" class="form-control" placeholder="아이디를 입력해주세요." >
				<button id="btnUsernameSameCheck" class="btn btn-warning" type="button" style="margin-top:10px;">아이디 중복체크</button>
			</div>
			<div class="mb-3">
				◆이름 <input id="username" type="text" class="form-control" placeholder="이름을 입력해주세요" >
			</div>
			<div class="mb-3">
				◆전화번호<input id="email" type="email" class="form-control" placeholder="이메일을 입력해주세요" >
			</div>
			<div class="mb-3">
				◆이메일<input id="phonenumber" type="text" class="form-control" placeholder="전화번호를 입력해주세요" >
			</div>
			<div class="mb-3">◆주소</div>
			<input id="member_post" type="text" placeholder="우편번호" readonly onclick="findAddr()" > 
			<button id="btnJoin" type="button" class="btn btn-primary">우편번호찾기</button><br>
			<input id="member_addr" type="text" placeholder="주소" style="width:645px;" readonly>
			<input type="text" placeholder="상세주소" style="width:645px;">
			<div class="mb-3"></div>
			<input type="file" id="fileUpload" accept='image/*' /> <img
               id="previewImg" style="height:250px;" />
			
			<div class="mb-3">◆관심분야</div>
			<div>
				<label><input type="checkbox" id="frontend">프런트엔드</label><br /> 
				<label><input type="checkbox" value="backend">백엔드</label><br /> 
				<label><input type="checkbox" value="devops">데브옴스</label><br /> 
				<label><input type="checkbox" value="etc">상관없음</label>
			</div>
		</form>
		<div class="mb-5"></div>
		<div class="d-grid gap-1 col-2 mx-auto">
			<button id="btnJoin" type="button" class="btn btn-primary">수정완료</button>
		</div>
<<<<<<< HEAD

=======
		<div class="mb-3">
			◆비밀번호 <input id="password1" type="password" class="form-control" placeholder="비밀번호를 입력해주세요">
		</div>
		<div class="mb-3">
			◆비밀번호 확인 <input id="password2" type="password" class="form-control" placeholder="비밀번호를 입력해주세요">
		</div>
		<button id="confirm" type="button" class="btn btn-primary" onclick="test()">비밀번호 확인</button>
		<div class="mb-3"></div>
		<div class="mb-3">
			◆이름 <input id="username" type="text" class="form-control" placeholder="이름을 입력해주세요">
		</div>
		<div class="mb-3">
			◆전화번호<input id="phonenumber" type="text" class="form-control" placeholder="이메일을 입력해주세요">
		</div>
		<div class="mb-3">
			◆이메일<input id="email" type="email" class="form-control" placeholder="전화번호를 입력해주세요">
		</div>
		<div class="mb-3">◆주소</div>
		<input type="text" placeholder="우편번호" readonly onclick="findAddr()">
		<button id="address" type="button" class="btn btn-primary" onclick="findAddr()">우편번호찾기</button>
		<br> <input type="text" placeholder="주소" style="width: 645px;" readonly> <input id="detailAddress" type="text" placeholder="상세주소" style="width: 645px;">
		<div class="mb-3"></div>
		<div class="mb-3"></div>
		<img id="previewImg" style="height: 250px;" /><br /> <input type="file" id="fileUpload" accept='image/*' />
		<div class="mb-3" style="margin-top: 30px">◆관심분야</div>
		<div>
			<label><input type="checkbox" id="frontend">프런트엔드</label><br /> <label><input type="checkbox" id="backend">백엔드</label><br /> <label><input type="checkbox" id="devops">데브옴스</label><br />
			<label><input type="checkbox" id="etc">상관없음</label>
		</div>
	</form>
	<div class="mb-5"></div>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnSave" type="button" class="btn btn-primary">수정완료</button>
>>>>>>> 52168b6 (메인메뉴,로그인,내정보,수정,회원가입 validation빼고 초안최종완료)
	</div>

	<script>
		function findAddr() {
			new daum.Postcode(
					{
						oncomplete : function(data) {

							console.log(data);

							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
							// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var roadAddr = data.roadAddress; // 도로명 주소 변수
							var jibunAddr = data.jibunAddress; // 지번 주소 변수
							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('member_post').value = data.zonecode;
							if (roadAddr !== '') {
								document.getElementById("member_addr").value = roadAddr;
							} else if (jibunAddr !== '') {
								document.getElementById("member_addr").value = jibunAddr;
							}
						}
					}).open();
		}
		
		
		
		const fileInput = document.getElementById("fileUpload");
	       const handleFiles = (e) => {
	           const selectedFile = [...fileInput.files];
	           const fileReader = new FileReader();
	           fileReader.readAsDataURL(selectedFile[0]);
	           fileReader.onload = function () {
	               document.getElementById("previewImg").src = fileReader.result;
	           };
	       };
	       fileInput.addEventListener("change", handleFiles);
		
	</script>
<<<<<<< HEAD
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
</body>
</html>
=======
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<%@ include file="../layout/footer.jsp"%>
>>>>>>> 52168b6 (메인메뉴,로그인,내정보,수정,회원가입 validation빼고 초안최종완료)
