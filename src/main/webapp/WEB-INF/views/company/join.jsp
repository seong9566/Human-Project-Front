<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form>
		<h2></h2>
		<div class="mb-3 mt-3">
			◆아이디 <input id="userId" type="text" class="form-control"
				placeholder="아이디를 입력해주세요.">
			<button id="btnUsernameSameCheck" class="btn btn-warning"
				type="button">아이디 중복체크</button>
		</div>
		<div class="mb-3">
			◆비밀번호 <input id="password1" type="password" class="form-control"
				placeholder="비밀번호를 입력해주세요">
		</div>
		<div class="mb-3">
			◆비밀번호 확인 <span id="span_valcheck"
				style="visibility: hidden; color: tomato;">-----비밀번호가 같지
				않습니다!</span><input id="password2" type="password" class="form-control"
				placeholder="비밀번호를 입력해주세요">
		</div>
		<button type="button" class="btn btn-primary" onclick="test()">비밀번호
			확인</button>
		<div class="mb-3"></div>
		<div class="mb-3">
			◆이름 <input id="username" type="text" class="form-control"
				placeholder="이름을 입력해주세요">
		</div>
		<div class="mb-3">
			◆전화번호<input id="phonenumber" type="text" class="form-control"
				placeholder="전화번호를 입력해주세요">
		</div>
		<div class="mb-3">
			◆이메일<input id="email" type="email" class="form-control"
				placeholder="이메일을 입력해주세요">
		</div>
		<div class="mb-3">◆사진</div>
		<div class="mb-3"></div>
		<img id="previewImg" style="height: 250px;" /><br /> <input
			type="file" id="fileUpload" accept='image/*' />

		<div class="mb-3">◆주소</div>
		<input id="post" type="text" placeholder="우편번호" readonly
			onclick="findAddr()">
		<button id="detailAddress" type="button" class="btn btn-primary"
			onclick="findAddr()">우편번호찾기</button>
		<br> <input id="addr" type="text" placeholder="주소"
			style="width: 620px;" readonly><input type="text"
			placeholder="상세주소" style="width: 620px;">

		<div class="mb-3" style="margin-top: 30px">◆관심분야</div>
		<div>
			<label><input type="checkbox" id="frontend">프런트엔드</label><br />
			<label><input type="checkbox" id="backend">백엔드</label><br />
			<label><input type="checkbox" id="devops">데브옴스</label><br />
			<label><input type="checkbox" id="etc">상관없음</label>
		</div>
	</form>
	<div class="mb-5"></div>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnSave" type="button" class="btn btn-primary"
			onclick="joinform_check();">작성완료</button>
	</div>

</div>

<script>
	function test() {
		var p1 = document.getElementById('password1').value;
		var p2 = document.getElementById('password2').value;
		if (p1 != p2) {
			alert("비밀번호가 일치 하지 않습니다");
			return false;
		} else {
			alert("비밀번호가 일치합니다");
			return true;
		}
		
		
	}
	
	  $("#pw2").keyup((event) => {
          event.preventDefault();
          if ($("#password").val() != $("#pw2").val()) {
             $("#span_valcheck").css("visibility", "visible");
             $("#btnJoin").attr(`disabled`, true);
          } else {
             $("#span_valcheck").css("visibility", "hidden");
             $("#btnJoin").removeAttr(`disabled`);
          }
       });
	
	
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
	                     document.getElementById('post').value = data.zonecode;
	                     if (roadAddr !== '') {
	                        document.getElementById("addr").value = roadAddr;
	                     } else if (jibunAddr !== '') {
	                        document.getElementById("addr").value = jibunAddr;
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
      
	
	$('#etc').click(function() {
		var checked = $('#etc').is(':checked');
		if (checked)
			$('input:checkbox').prop('checked', true);
	});
	
	
	
	//유효성겁사
	function joinform_check() {
		  //변수에 담아주기
		  var userId = document.getElementById("userId");
		  var password1 = document.getElementById("password1");
		  var username = document.getElementById("username");
		  var phonenumber = document.getElementById("phonenumber");
		  var email = $("#email").val();	  
		  var addr = document.getElementById("addr");
	  
		  //아이디 입력하지 않았을때
		  if ((userId.value) == ""){
	            alert("아이디를 입력하지 않았습니다.");
	            userId.focus();
	            return false;
	        }
		  
	  
		  //비밀번호
		  var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
		  
		  if (!pwdCheck.test(password1.value)) {
		    alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
		    password1.focus();
		    return false;
		  };
		  
		  if (!pwdCheck.test(password2.value)) {
			    alert("비밀번호 확인을 입력하지 않았습니다.");
			    password2.focus();
			    return false;
			  };
		 
		  
		  //이름 입력하지 않았을때
		  if ((username.value) == ""){
		       alert("이름을 입력하지 않았습니다.");
		       username.focus();
		       return false;
		   }
		  
			  
			  
			  
		 	  
		  var reg = /^[0-9]+/g; //숫자만 입력하는 정규식
		  
		  //전화번호 입력하지 않았을때
		  if ((phonenumber.value) == ""){
	            alert("전화번호를 입력하지 않았습니다.");
	            phonenumber.focus();
	            return false;
	        }
		  
		  //전화번호 유효성
		  if (!reg.test(phonenumber.value)) {
		    alert("전화번호는 숫자만 입력할 수 있습니다.");
		    phonenumber.focus();
		    return false;
		  }
		  
		  
		  //이메일 유효성 검사
		  var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	  
		  if (email.match(regExp) != null) {			  
			  }
			  else {
			    alert("이메일 형식으로 입력해야 합니다.");
			    return false;
			  }
		  
		  
		  if ((addr.value) == ""){
		       alert("주소를 입력하지 않았습니다.");
		       addr.focus();
		       return false;
		   }

		  document.join_form.submit();
	  	  
	}
		  
		  
	
</script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<%@ include file="../layout/footer.jsp"%>