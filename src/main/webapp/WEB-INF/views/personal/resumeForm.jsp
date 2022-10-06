<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�̷¼� �ۼ�</title>

    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
    <link rel="stylesheet" href="/css/style1.css">
</head>

<body>
    <h2 class=resume>�̷¼� �ۼ� ������</h2>
    <div class="wrap"> <input id="id" type="hidden" value="${personal.Id}">
        <input id="resumeTitle" type="text" placeholder="�̷¼� ������ �Է����ּ���">
        <div id="userId">sopu5555</div>
        <br />
        <div id="userName">�ڵ���</div>
        <br />
        <div id="phonenumber">01024102957</div>
        <br />
        <div id="email">sop55544@gmail.com</div>
    </div>
    <div class="aside">
        <input type="file" id="fileUpload" accept='image/*' />
        <img id="previewImg" alt="�������" />
    </div>
    <div id="summernote">�ڱ�Ұ��� �ۼ�</div>
    <button id="btnSave" type="button" class="btn btn-primary">�۾���Ϸ�</button>
</body>
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

    $(document).ready(function () {
        $('#summernote').summernote({
            height: 400,
            maxHeight: 400
        });
    });
</script>

</html>