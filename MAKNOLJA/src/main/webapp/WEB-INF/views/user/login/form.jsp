<!-- 상수 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- font Gowun Dodum-->
	<style>
	@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
	</style>
	
	<!-- Icons font CSS-->
    <link href="../../../resources/form/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="../../../resources/form/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="../../../resources/form/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link href="../../../resources/form/vendor/select2/select2.min.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../../../resources/form/css/main.css" rel="stylesheet" media="all">

<title>샘플 애플리케이션</title>

<style type="text/css">
.carousel-control-prev-icon { background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23000' viewBox='0 0 8 8'%3E%3Cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E"); }
.carousel-control-next-icon { background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23000' viewBox='0 0 8 8'%3E%3Cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E"); }
.card-body { background-color: antiquewhite; border-radius: 30px;}
.ft-main { justify-content: space-between; border-top: 1px solid #e4e4e4; padding-top: 32px; padding-bottom: 32px; display: flex;}
.ft-item { width: 20% !important; flex-direction:column; margin-left:50px; }
.ft-item a { text-align: center; color: black;font-weight: 600; padding-right: 5px; padding-left:0px; padding-top:10px; font-size:13px;}
.ft-list { list-style:none; padding-left:0px;}
.ft-award { justify-content: space-between; border-top: 1px solid #e4e4e4; padding-top: 32px; padding-bottom: 32px; display: flex; place-content:center;}
.ft-award-list { list-style:none; }
.ft-award-list li {color: black; font-weight: 600;}
.ft-license { border-top: 1px solid #e4e4e4; padding-top: 30px;text-align: center;font-size: 12px;line-height: 1.5;}
.ft-license-copy { color: black; font-weight: 600; list-style:none; }
.image-box { overflow:hidden;margin:0 auto; background-size:100% 100%; margin-top:50px;}
.image-thumbnail { width:100%;height:100%;object-fit:cover; position:relative}
.image-text { width: 1500px;margin: 0 auto;box-sizing: border-box;padding: 80px 0 0 900px;position: absolute;top: 1030px;z-index: 1;}
.image-text .title {font-weight: 700;font-size: 36px;line-height: 40px;margin-bottom: 20px; color: white;}
.image-text .text { font-size: 18px; color: white; line-height: 22px; margin-bottom: 25px; margin-top:30px; margin-left:80px;}
.btn-primary-w95 { color: #fff; background-color: #0d6efd; border-color: #0d6efd; width: 95%; margin-left:20px; font-size: 30px; margin-bottom: 30px;}
.modal-sns { width: 100%;height: 18px;line-height: 18px;text-align: center;position: relative;margin-top: 40px;font-size: 14px;color: #455873;}
.modal-header { display: flex;flex-shrink: 0;align-items: center;justify-content: space-between;padding: 1rem 1rem;border-bottom: none !important;border-top-left-radius: calc(.3rem - 1px);border-top-right-radius: calc(.3rem - 1px); margin-right:15px;}
.modal-body {margin-right:15px;}
.modal-body p { margin-top: 8px !important; margin-bottom: 8px !important; margin-left:20px; font-weight: 900; font-size:20px;}
.modal-body a { text-decoration: none !important; margin-left:20px !important; margin-top:5px; margin-bottom:10px; font-weight: 900;}
.modal-footer { margin-right: 15px;}
.modal-policy { margin-bottom : 30px;}
.modal-policy a { text-decoration: none !important; margin-left:0px !important;}
.modal-policy p { line-height: 11px; font-size:13px;}
.modal-header h3 { font-weight : 900 !important; margin-top:30px; margin-left:20px}
.modal-form-control { display: block; width: 95%;padding: .375rem .75rem;font-size: 1rem;font-weight: 400;line-height: 1.5;color: #212529;background-color: #fff;background-clip: padding-box;border-bottom: 1px solid #dadfe6;-webkit-appearance: none;-moz-appearance: none;appearance: none;border-radius: .25rem;transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;margin-left: 20px;}
.modal-outline {margin-right: 30px;}
.modal-footer {justify-content: center !important;}
.sns-list { }
.modal-sns-inform {width: 100%; text-align: center;}
.modal-last-footer { display: flex;flex-wrap: wrap;flex-shrink: 0;align-items: center;justify-content: flex-end;padding: .75rem;border-bottom-right-radius: calc(.3rem - 1px);border-bottom-left-radius: calc(.3rem - 1px); align-self: center; margin-bottom: 30px;}

   
</style>
</head>
<body>
<c:set var="menu" value="register"/>
<%@ include file="../../common/header.jsp" %>
<div class="container my-3">
	<main>
		<div class="row mb-3">
			<div class="col">
				<div class="row mb-3">
					<div class="col">
						<div class="border p-2 bg-dark text-white fw-bold">MACKNOLJA 회원가입</div>
					</div>
				</div>
				<c:if test="${not empty error }">
					<div class="row">
						<div class="col">
							<div class="alert alert-danger">
								<strong>${error.title }</strong> ${error.message }
							</div>
						</div>
					</div>
				</c:if>
				<div class="row mb-3">
					<div class="col">
						<div class="border p-2 bg-light">
							<form id="form-register" method="post" action="register" novalidate="novalidate">
								<div class="mb-3">
									<label class="form-label">아이디 이메일</label>
									<input type="text" class="form-control" id="user-id" name="id" />
								</div>
								<div class="mb-3">
									<label class="form-label">비밀번호</label>
									<input type="password" class="form-control" id="user-password" name="password" />
								</div>
								<div class="mb-3 text-end">
									<button type="submit" class="btn btn-primary">회원가입</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row ft-main">
			<div class="ft-item">
				<h3><strong>고객 문의</strong></h3>
				<ul class="ft-list">
					<li><a href="#">웹사이트 피드백</a></li>
					<li><a href="#">고객센터 피드백</a></li>
				</ul>
			</div>
			<div class="ft-item">
				<h3><strong>회사 소개</strong></h3>
				<ul class="ft-list">
					<li><a href="#">막놀자닷컴 소개</a></li>
					<li><a href="#">서비스 보장제</a></li>
					<li><a href="/news/main">뉴스룸</a></li>
					<li><a href="#">채용</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">개인정보 처리방침</a></li>
				</ul>
			</div>
			<div class="ft-item">
				<h3><strong>기타 서비스</strong></h3>
				<ul class="ft-list">
					<li><a href="#">IR</a></li>
					<li><a href="#">막놀자닷컴 리워드</a></li>
					<li><a href="#">막놀자닷컴 파트너제휴 플랫폼</a></li>
					<li><a href="#">호텔 등록</a></li>
					<li><a href="#">모든 호텔</a></li>
					<li><a href="#">엑티비티 제휴상품</a></li>
				</ul>
			</div>
			<div class="ft-item">
				<span>결제방법</span>
			</div>
		</div>
		<div class="ft-award">
			<img src="../../resources/images/reward/win2.png">
			<ul class="ft-award-list">
				<li>서울시 HTA 주관</li>
				<li>올해의파이널프로젝트대상 2년 연속 수상</li>
			</ul>
		</div>
		<div class="ft-license">
			<ul class="ft-license-copy">
				<li>Copyright © 2021 MAKNOLJA.com Travel Korea Pte. Ltd. All rights reserved.</li>
				<li>Site Operator: MAKNLOJA.com Travel Korea Pte. Ltd. (라이선스 No. 12345, 대표 3인(정규선,유상수,안준상))</li>
				<li>서울특별시 종로구 봉익동 율곡로10길 105 디아망</li>
				<li>고객센터: 한국 070-8240-3211 해외 +82 70-8240-3211</li>
			</ul>
		</div>
	</main>
</div>
<!-- Bootstrap5-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Jquery JS-->
<script src="../../../resources/form/vendor/jquery/jquery.min.js"></script>

<!-- Vendor JS-->
<script src="../../../resources/form/vendor/select2/select2.min.js"></script>
<script src="../../../resources/form/vendor/jquery-validate/jquery.validate.min.js"></script>
<script src="../../../resources/form/vendor/bootstrap-wizard/bootstrap.min.js"></script>
<script src="../../../resources/form/vendor/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
<script src="../../../resources/form/vendor/datepicker/moment.min.js"></script>
<script src="../../../resources/form/vendor/datepicker/daterangepicker.js"></script>

<!-- Main JS-->
<script src="../../../resources/form/js/global.js"></script>

<script type="text/javascript">
$(function() {
	$("#form-register").submit(function() {
		var id = $.trim($("#user-id").val());
		if (!id) {
			alert("이메일은 필수입력값입니다.");
			$("#user-id").focus();
			return false;
		}
		var password = $.trim($("#user-password").val());
		if (!password) {
			alert("비밀번호는 필수입력값입니다.");
			$("#user-password").focus();
			return false;
		}

		return true;	
	});
})
</script>
</body>
</html>