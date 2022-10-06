<<<<<<< HEAD
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
			<h2>³» Á¤º¸ - ±â¾÷¼öÁ¤</h2>
			<div class="mb-3 mt-3">
				¡ß¾ÆÀÌµğ <input id="userId" type="text" class="form-control" placeholder="¾ÆÀÌµğ¸¦ ÀÔ·ÂÇØÁÖ¼¼¿ä.">
				<button id="btnUsernameSameCheck" class="btn btn-warning" type="button">¾ÆÀÌµğ Áßº¹Ã¼Å©</button>
			</div>
			<div class="mb-3">
				¡ßºñ¹Ğ¹øÈ£ <input id="password" type="text" class="form-control" placeholder="ºñ¹Ğ¹øÈ£¸¦ ÀÔ·ÂÇØÁÖ¼¼¿ä">
			</div>
			<div class="mb-3">
				ºñ¹Ğ¹øÈ£ È®ÀÎ <input id="pw2" type="text" class="form-control" placeholder="ºñ¹Ğ¹øÈ£¸¦ ÀÔ·ÂÇØÁÖ¼¼¿ä">
			</div>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<form>
		<h2></h2>
		<div class="mb-3 mt-3">
			â—†ì•„ì´ë”” <input id="userId" type="text" class="form-control" placeholder="ì•„ì´ë””ë¥¼ ì…ë ¥í•´ì£¼ì„¸ìš”.">
			<button id="btnUsernameSameCheck" class="btn btn-warning" type="button" style="margin-top: 10px;">ì•„ì´ë”” ì¤‘ë³µì²´í¬</button>
		</div>
		<div class="mb-3">
			â—†ë¹„ë°€ë²ˆí˜¸ <input id="password1" type="password" class="form-control" placeholder="ë¹„ë°€ë²ˆí˜¸ë¥¼ ì…ë ¥í•´ì£¼ì„¸ìš”">
		</div>
		<div class="mb-3">
			â—†ë¹„ë°€ë²ˆí˜¸ í™•ì¸ <input id="password2" type="password" class="form-control" placeholder="ë¹„ë°€ë²ˆí˜¸ë¥¼ ì…ë ¥í•´ì£¼ì„¸ìš”">
		</div>
		<button id="confirm" type="button" class="btn btn-primary" onclick="test()">ë¹„ë°€ë²ˆí˜¸ í™•ì¸</button>
		<div class="mb-3"></div>
		<div class="mb-3">
			â—†ì´ë¦„ <input id="username" type="text" class="form-control" placeholder="ì´ë¦„ì„ ì…ë ¥í•´ì£¼ì„¸ìš”">
		</div>
		<div class="mb-3">
			â—†ì „í™”ë²ˆí˜¸<input id="phonenumber" type="text" class="form-control" placeholder="ì „í™”ë²ˆí˜¸ë¥¼ ì…ë ¥í•´ì£¼ì„¸ìš”">
		</div>
		<div class="mb-3">
			â—†ì´ë©”ì¼<input id="email" type="email" class="form-control" placeholder="ì´ë©”ì¼ì„ ì…ë ¥í•´ì£¼ì„¸ìš”">
		</div>
		<div class="mb-3">â—†ì£¼ì†Œ</div>
		<input type="text" placeholder="ìš°í¸ë²ˆí˜¸" readonly onclick="findAddr()">
		<button id="address" type="button" class="btn btn-primary" onclick="findAddr()">ìš°í¸ë²ˆí˜¸ì°¾ê¸°</button>
		<br> <input type="text" placeholder="ì£¼ì†Œ" style="width: 645px;" readonly> 
		<input id="detailAddress" type="text" placeholder="ìƒì„¸ì£¼ì†Œ" style="width: 645px;">
		<div class="mb-3"></div>
		<img id="previewImg" style="height: 250px;" /><br /> <input type="file" id="fileUpload" accept='image/*' />
>>>>>>> 52168b6 (ë©”ì¸ë©”ë‰´,ë¡œê·¸ì¸,ë‚´ì •ë³´,ìˆ˜ì •,íšŒì›ê°€ì… validationë¹¼ê³  ì´ˆì•ˆìµœì¢…ì™„ë£Œ)

			<div class="mb-3">
				¡ßÀÌ¸§ <input id="username" type="text" class="form-control" placeholder="ÀÌ¸§À» ÀÔ·ÂÇØÁÖ¼¼¿ä">
			</div>
			<div class="mb-3">
				¡ßÀüÈ­¹øÈ£<input id="email" type="email" class="form-control" placeholder="ÀÌ¸ŞÀÏÀ» ÀÔ·ÂÇØÁÖ¼¼¿ä">
			</div>
			<div class="mb-3">
				¡ßÀÌ¸ŞÀÏ<input id="phonenumber" type="text" class="form-control" placeholder="ÀüÈ­¹øÈ£¸¦ ÀÔ·ÂÇØÁÖ¼¼¿ä">
			</div>
			<div class="mb-3">¡ßÁÖ¼Ò</div>
			<input id="member_post" type="text" placeholder="¿ìÆí¹øÈ£" readonly onclick="findAddr()">
			<button id="btnJoin" type="button" class="btn btn-primary">¿ìÆí¹øÈ£Ã£±â</button>
			<br> <input id="member_addr" type="text" placeholder="ÁÖ¼Ò" style="width: 645px;" readonly> <input type="text" placeholder="»ó¼¼ÁÖ¼Ò" style="width: 645px;">
			<div class="mb-3"></div>
			<div class="mb-3">¡ß°ü½ÉºĞ¾ß</div>
			<div>
				<label><input type="checkbox" id="frontend">ÇÁ·±Æ®¿£µå</label><br /> <label><input type="checkbox" value="backend">¹é¿£µå</label><br /> <label><input type="checkbox"
					value="devops">µ¥ºê¿È½º</label><br /> <label><input type="checkbox" value="etc">»ó°ü¾øÀ½</label>
			</div>
		</form>
		<div class="mb-5"></div>
		<div class="d-grid gap-1 col-2 mx-auto">
			<button id="btnJoin" type="button" class="btn btn-primary">¼öÁ¤¿Ï·á</button>
		</div>
<<<<<<< HEAD

=======
	</form>
	<div class="mb-5"></div>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnSave" type="button" class="btn btn-primary">ìˆ˜ì •ì™„ë£Œ</button>
>>>>>>> 52168b6 (ë©”ì¸ë©”ë‰´,ë¡œê·¸ì¸,ë‚´ì •ë³´,ìˆ˜ì •,íšŒì›ê°€ì… validationë¹¼ê³  ì´ˆì•ˆìµœì¢…ì™„ë£Œ)
	</div>

	<script>
		function findAddr() {
			new daum.Postcode(
					{
						oncomplete : function(data) {

							console.log(data);

							// ÆË¾÷¿¡¼­ °Ë»ö°á°ú Ç×¸ñÀ» Å¬¸¯ÇßÀ»¶§ ½ÇÇàÇÒ ÄÚµå¸¦ ÀÛ¼ºÇÏ´Â ºÎºĞ.
							// µµ·Î¸í ÁÖ¼ÒÀÇ ³ëÃâ ±ÔÄ¢¿¡ µû¶ó ÁÖ¼Ò¸¦ Ç¥½ÃÇÑ´Ù.
							// ³»·Á¿À´Â º¯¼ö°¡ °ªÀÌ ¾ø´Â °æ¿ì¿£ °ø¹é('')°ªÀ» °¡Áö¹Ç·Î, ÀÌ¸¦ Âü°íÇÏ¿© ºĞ±â ÇÑ´Ù.
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

			$(function() {//ºñ¹Ğ¹øÈ£ È®ÀÎ	
				$('#pw2').blur(function() {
					if ($('#pw').val() != $('#pw2').val()) {
						if ($('#pw2').val() != '') {
							alert("ºñ¹Ğ¹øÈ£°¡ ÀÏÄ¡ÇÏÁö ¾Ê½À´Ï´Ù.");
							$('#pw2').val('');
							$('#pw2').focus();
						}
					}
				})
			});

		}
	</script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<%@ include file="../layout/footer.jsp"%>