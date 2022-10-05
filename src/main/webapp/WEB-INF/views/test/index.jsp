<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>사진업로드테스트</h1>
<img src="/upload/KakaoTalk_20221003_223408862.jpg"/>
<hr/>
<h1>index Page</h1>
<form method="post" action="/upload" enctype="multipart/form-data">
<input type="file" name="file"/>
<button type="submit">파일전송</button>
</form>
</body>
</html>