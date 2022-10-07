<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<div id="main">
	<br /> <input id="resume_title" type="text" class="form-control"
		placeholder="이력서 제목을 입력해주세요.">
	<div class="tool">
		<div class="left">
			<br />
			<h3>개인정보 입력</h3>
			<div class="left_input">
				<div id="userId">sopu5555</div>
				<br />
				<div id="userName">박동훈</div>
				<br />
				<div id="phonenumber">01024102957</div>
				<br />
				<div id="email">sop55544@gmail.com</div>

			</div>
		</div>

		<div class="right">
						<div>좋아요수 : 👍</div>
			<img id="previewImg" />
		</div>
	</div>
	<input type="file" Id="fileUpload" accept='image/*' /> <br /> <br />
	<div class="form">
		<h2>자기소개서 작성</h2>
		<div id="summernote"></div>
	</div>

	<div class="btn-update">
		<button id="btnlike" type="button" class="btn btn-primary">좋아요</button>
		<button id="btnapply" type="button" class="btn btn-primary">연락하기</button>
	</div>

</div>


<script>
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
	    $('#summernote').summernote({
	        placeholder: 'Hello stand alone ui',
	        tabsize: 2,
	        height: 120,
	        toolbar: [
	          ['style', ['style']],
	          ['font', ['bold', 'underline', 'clear']],
	          ['color', ['color']],
	          ['para', ['ul', 'ol', 'paragraph']],
	          ['table', ['table']],
	          ['insert', ['link', 'picture', 'video']],
	          ['view', ['fullscreen', 'codeview', 'help']]
	        ]
	      });
   </script>

</body>
</html>