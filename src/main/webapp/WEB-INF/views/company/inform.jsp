<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ÀÌ·Â¼­°ü¸® »çÀÌÆ®</title>
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
			<h2>³» Á¤º¸ - ±â¾÷</h2>
			<div class="mb-3 mt-3">
				¡ß¾ÆÀÌµð <input id="userId" type="text" class="form-control" placeholder="¾ÆÀÌµð¸¦ ÀÔ·ÂÇØÁÖ¼¼¿ä." readonly>
				<button id="btnUsernameSameCheck" class="btn btn-warning" type="button">¾ÆÀÌµð Áßº¹Ã¼Å©</button>
			</div>
			<div class="mb-3">
				¡ßÀÌ¸§ <input id="username" type="text" class="form-control" placeholder="ÀÌ¸§À» ÀÔ·ÂÇØÁÖ¼¼¿ä" readonly>
			</div>
			<div class="mb-3">
				¡ßÀüÈ­¹øÈ£<input id="email" type="email" class="form-control" placeholder="ÀÌ¸ÞÀÏÀ» ÀÔ·ÂÇØÁÖ¼¼¿ä" readonly>
			</div>
			<div class="mb-3">
				¡ßÀÌ¸ÞÀÏ<input id="phonenumber" type="text" class="form-control" placeholder="ÀüÈ­¹øÈ£¸¦ ÀÔ·ÂÇØÁÖ¼¼¿ä" readonly>
			</div>
			<div class="mb-3">¡ßÁÖ¼Ò</div>
			<input id="member_post" type="text" placeholder="¿ìÆí¹øÈ£" readonly onclick="findAddr()" > 
			<button id="btnJoin" type="button" class="btn btn-primary">¿ìÆí¹øÈ£Ã£±â</button><br>
			<input id="member_addr" type="text" placeholder="ÁÖ¼Ò" style="width:645px;" readonly>
			<input type="text" placeholder="»ó¼¼ÁÖ¼Ò" style="width:645px;">
			<div class="mb-3"></div>
			<div class="mb-3">¡ß°ü½ÉºÐ¾ß</div>
			<div>
				<label><input type="checkbox" id="frontend">ÇÁ·±Æ®¿£µå</label><br /> 
				<label><input type="checkbox" value="backend">¹é¿£µå</label><br /> 
				<label><input type="checkbox" value="devops">µ¥ºê¿È½º</label><br /> 
				<label><input type="checkbox" value="etc">»ó°ü¾øÀ½</label>
			</div>
		</form>
		<div class="mb-5"></div>
		<div class="d-grid gap-1 col-2 mx-auto">
			<button id="btnJoin" type="button" class="btn btn-primary">Á¤º¸¼öÁ¤</button>
		</div>

<<<<<<< HEAD
=======
<div class="container">
	<form>
		
		<div class="mb-3 mt-3">
			â—†ì•„ì´ë”” <input id="userId" type="text" class="form-control" placeholder="ì•„ì´ë””ë¥¼ ìž…ë ¥í•´ì£¼ì„¸ìš”." readonly>
			<button id="btnUsernameSameCheck" class="btn btn-warning" type="button" style="margin-top: 10px;">ì•„ì´ë”” ì¤‘ë³µì²´í¬</button>
		</div>
		<div class="mb-3">
			â—†ì´ë¦„ <input id="username" type="text" class="form-control" placeholder="ì´ë¦„ì„ ìž…ë ¥í•´ì£¼ì„¸ìš”" readonly>
		</div>
		<div class="mb-3">
			â—†ì „í™”ë²ˆí˜¸<input id="phonenumber" type="text" class="form-control" placeholder="ì´ë©”ì¼ì„ ìž…ë ¥í•´ì£¼ì„¸ìš”" readonly>
		</div>
		<div class="mb-3">
			â—†ì´ë©”ì¼<input id="email" type="email" class="form-control" placeholder="ì „í™”ë²ˆí˜¸ë¥¼ ìž…ë ¥í•´ì£¼ì„¸ìš”" readonly>
		</div>
		<div class="mb-3">â—†ì£¼ì†Œ</div>
		<input id="member_post" type="text" placeholder="ìš°íŽ¸ë²ˆí˜¸" readonly >
		<br> <input id="member_addr" type="text" placeholder="ì£¼ì†Œ" style="width: 645px;" readonly> <input id="detailAddress" type="text" placeholder="ìƒì„¸ì£¼ì†Œ" style="width: 645px;">
		<div class="mb-3"></div>
		<div class="mb-3">â—†ê´€ì‹¬ë¶„ì•¼</div>
		<div>
			<label><input type="checkbox" id="frontend">í”„ëŸ°íŠ¸ì—”ë“œ</label><br /> <label><input type="checkbox" value="backend">ë°±ì—”ë“œ</label><br /> <label><input type="checkbox"
				value="devops">ë°ë¸Œì˜´ìŠ¤</label><br /> <label><input type="checkbox" value="etc">ìƒê´€ì—†ìŒ</label>
		</div>
	</form>
	<div class="mb-5"></div>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnSave" type="button" class="btn btn-primary">ì •ë³´ìˆ˜ì •</button>
>>>>>>> 52168b6 (ë©”ì¸ë©”ë‰´,ë¡œê·¸ì¸,ë‚´ì •ë³´,ìˆ˜ì •,íšŒì›ê°€ìž… validationë¹¼ê³  ì´ˆì•ˆìµœì¢…ì™„ë£Œ)
	</div>

	<script>
		function findAddr() {
			new daum.Postcode(
					{
						oncomplete : function(data) {

<<<<<<< HEAD
							console.log(data);

							// ÆË¾÷¿¡¼­ °Ë»ö°á°ú Ç×¸ñÀ» Å¬¸¯ÇßÀ»¶§ ½ÇÇàÇÒ ÄÚµå¸¦ ÀÛ¼ºÇÏ´Â ºÎºÐ.
							// µµ·Î¸í ÁÖ¼ÒÀÇ ³ëÃâ ±ÔÄ¢¿¡ µû¶ó ÁÖ¼Ò¸¦ Ç¥½ÃÇÑ´Ù.
							// ³»·Á¿À´Â º¯¼ö°¡ °ªÀÌ ¾ø´Â °æ¿ì¿£ °ø¹é('')°ªÀ» °¡Áö¹Ç·Î, ÀÌ¸¦ Âü°íÇÏ¿© ºÐ±â ÇÑ´Ù.
							var roadAddr = data.roadAddress; // µµ·Î¸í ÁÖ¼Ò º¯¼ö
							var jibunAddr = data.jibunAddress; // Áö¹ø ÁÖ¼Ò º¯¼ö
							// ¿ìÆí¹øÈ£¿Í ÁÖ¼Ò Á¤º¸¸¦ ÇØ´ç ÇÊµå¿¡ ³Ö´Â´Ù.
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
>>>>>>> 52168b6 (ë©”ì¸ë©”ë‰´,ë¡œê·¸ì¸,ë‚´ì •ë³´,ìˆ˜ì •,íšŒì›ê°€ìž… validationë¹¼ê³  ì´ˆì•ˆìµœì¢…ì™„ë£Œ)

<%@ include file="../layout/footer.jsp"%>