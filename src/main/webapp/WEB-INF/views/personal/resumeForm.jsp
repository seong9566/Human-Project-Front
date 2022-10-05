<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이력서 작성</title>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	width: 1200px;
	margin: 0 auto;
	position: relative;
}

.aside {
	display: flex;
	justify-content: flex-end;
	gap: 1rem;
}

.wrap {
	font-size: 30px;
	margin: 20px;
	width: 700px;
	position: relative;
	float: left;
	margin: 20px;
}

.picture {
	float: right;
	margin: 30px;
}

.image-preview {
	width: 300px;
	height: 300px;
	display: flex;
}

.resume {
	text-align: center;
}

li {
	list-style: none;
}

img {
	width: 300px;
	height: 300px;
}

.real-upload {
	display: none;
}
</style>
</head>

<body>
	<h2 class=resume>이력서 작성 페이지</h2>
	<div class=aside>
		<div class=wrap>
			<input id="id" type="hidden" value="${personal.Id}">
			<div id="userId">sopu5555</div>
			<br />
			<div id="userName">박동훈</div>
			<br />
			<div id="phonenumber">01024102957</div>
			<br />
			<div id="email">sop55544@gmail.com</div>
		</div>
		<div class=picture>
			<div class="upload"></div>
			<ul class="image-preview"></ul>
			<input type="file" class="real-upload" accept="image/*" required
				multiple>
		</div>
	</div>
	<form method="post">
		<textarea id="introduce" name="editordata"></textarea>
		<button id="btnSave" type="button" class="btn btn-primary">글쓰기완료</button>
	</form>
	<script>
    function getImageFiles(e) {
      const uploadFiles = [];
      const files = e.currentTarget.files;
      const imagePreview = document.querySelector('.image-preview');
      const docFrag = new DocumentFragment();

      if ([...files].length >= 2) {
        alert('이미지는 최대 1개 까지 업로드가 가능합니다.');
        return;
      }

      // 파일 타입 검사
      [...files].forEach(file => {
        if (!file.type.match("image/.*")) {
          alert('이미지 파일만 업로드가 가능합니다.');
          return
        }

        // 파일 갯수 검사
        if ([...files].length < 7) {
          uploadFiles.push(file);
          const reader = new FileReader();
          reader.onload = (e) => {
            const preview = createElement(e, file);
            imagePreview.appendChild(preview);
          };
          reader.readAsDataURL(file);
        }
      });
    }

    function createElement(e, file) {
      const li = document.createElement('li');
      const img = document.createElement('img');
      img.setAttribute('src', e.target.result);
      img.setAttribute('data-file', file.name);
      li.appendChild(img);
      return li;
    }
    const realUpload = document.querySelector('.real-upload');
    const upload = document.querySelector('.upload');

    upload.addEventListener('click', () => realUpload.click());

    realUpload.addEventListener('change', getImageFiles);
    $(document).ready(function() {
        $('#introduce').summernote({
            placeholder: '내용을 작성하세요',
            height: 400,
            maxHeight: 400
        });
    });
  </script>
</body>
</html>