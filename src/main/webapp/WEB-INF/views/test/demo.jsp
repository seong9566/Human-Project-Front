<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <style>
    li {
      list-style: none;
    }

    img {
      width: 200px;
      height: 200px;
    }

    .real-upload {
      display: none;
    }

    .upload {
      width: 100px;
      height: 50px;
      background-color: #6495ED;
    }

    .image-preview {
      width: 1300px;
      height: 200px;
      background-color: aquamarine;
      display: flex;
      gap: 20px;
    }
  </style>
</head>

<body>
  <input id=picture type="file" class="real-upload" accept="image/*" required multiple>
  <div class="upload" type="button" class="upload">���� �Է�</div>
  <ul class="image-preview"></ul>
  <script>
    function getImageFiles(e) {
      const uploadFiles = [];
      const files = e.currentTarget.files;
      const imagePreview = document.querySelector('.image-preview');
      const docFrag = new DocumentFragment();

      if ([...files].length >= 7) {
        alert('�̹����� �ִ� 6�� ���� ���ε尡 �����մϴ�.');
        return;
      }

      // ���� Ÿ�� �˻�
      [...files].forEach(file => {
        if (!file.type.match("image/.*")) {
          alert('�̹��� ���ϸ� ���ε尡 �����մϴ�.');
          return
        }

        // ���� ���� �˻�
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
  </script>
</body>
</html>