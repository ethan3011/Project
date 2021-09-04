<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="../../resources/navbar/navbarStyle.css" rel="stylesheet">
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
	<style type="text/css">
		.nav-container-info { display: flex;flex-direction: row;width: 100%;padding: 0;list-style-type: none;top: 0;margin:0; justify-content: center; border-bottom: 1px solid #dadfe6; background-color:white;}
		.info-body-title {text-align: center; margin-top: 10px;}
		.info-body-title div { font-size: 25px;font-weight: 900; margin-top:40px;}
		.top80{ padding-top:80px;}
		.nav-item-info {padding: 15px;cursor: pointer;font-size: 20px;font-weight: 900;}
		.nav-item-info:hover {color:navajowhite}
		.info-body-image a { box-shadow: 0 8px 20px 0 rgb(15 41 77 / 8%); margin-bottom: 20px; border-radius: 2px; border: none; width: 804px; height: 169px;}
		.second-image { margin-bottom: 10px; border-radius: 2px; border: none;}
		.infi-tt { text-align: left;margin-left: 250px;margin-bottom: 10px;}
		.headerFixed { position:fixed; top:0px; right:0px;}
		.nav-item-info-selected {background-color:rgb(164 169 238);}
	</style>

<title>MAKNOLJA</title>
</head>
<body>
<%@include file="../common/header.jsp" %>

				<div class="info-header-image">
					<img src="../../../../resources/images/info/corona.png">
				</div>
<!-- Body 시작 Container -->
<div class="container my-5 mt-5">
	<div class="row mt-1">
		<div class="col-12">
			<div class="info-container">
				<div class="info-body">
					<div class="info-body-wrapper">
						<div class="nav-container-info" id="callInfo">
							<div class="nav-item-info">
								여행 정보
							</div>
							<div class="nav-item-info" id="callHelp">
								도움말 및 안내
							</div>
							<div class="nav-item-info" id="callDone">
								막놀자닷컴 구호 활동
							</div>
						</div>
						<div class="info-body-title">
							<div class="infi-tt" id="tripInfo">여행정보</div>
							<div class="info-body-image">
								<a href="/info/coronaList" >
									<img src="../../../resources/images/info/corona-info-1.png" >
								</a>
								<a href="/info/healthFlight" >
									<img src="../../../resources/images/info/corona-info-2.png" >
								</a>
								<a href="https://corona-live.com/" target="_blank">
									<img src="../../../resources/images/info/corona-info-3.png" >
								</a>
							</div>
						</div>
						<div class="info-body-title">
							<div class="infi-tt" id="helpAndInfo">도움말 및 안내</div>
							<div class="info-body-image">
								<a href="#" class="second-image">
									<img src="../../../resources/images/info/image-1.png" >
								</a>
								<a href="#" class="second-image">
									<img src="../../../resources/images/info/image-2.png" >
								</a>
								<a href="#" class="second-image">
									<img src="../../../resources/images/info/image-3.png" >
								</a>
								<a href="#" class="second-image">
									<img src="../../../resources/images/info/image-4.png" >
								</a>
							</div>
							<div class="infi-tt" id="donationInfo">막놀자닷컴 구호 활동</div>
							<div class="info-body-image">
								<a href="#" class="second-image">
									<img src="../../../resources/images/info/image-5.png" >
								</a>
							</div>
						</div>
						<div class="info-body-content">
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>	
<!-- 이미지박스 -->
<div class="image-box">
	<img class="image-thumbnail" src="../../resources/images/background/background.png" >
	<div class="image-text">
		<div class="title">여행이 필요할 때, 막놀자닷컴</div>
		<div class="text">막놀자닷컴 앱으로 전 세계 항공권, 호텔, 기차표, 렌터카, 공항픽업 예약을 단 몇 초만에! 실시간 운항조회 및 유용한 여행정보, 회원전용 시크릿 특가, 프로모션, 막놀자코인 적립까지 모두 앱에서 만나보세요. 막놀자코인 30% 추가적립은 오직 앱에서만 가능합니다.</div>
	</div>
</div>
<!-- footer -->
<div class="container">
	<div class="row my-5">
		<div class="col-12">
			<div class="text-left">
				<p><strong>막놀자닷컴에서 거품없는 가격으로 여행하세요!</strong></p>
				<br />
				<p>세계적인 온라인 여행사 막놀자닷컴에서 여러분의 완벽한 여행을 설계해드립니다. 휴가 계획이나 출장 준비, 혹은 기업 지정 여행사를 알아보고 계시다면, 막놀자닷컴에서 전 세계의 가장 저렴한 항공권 및 할인 호텔, 중국 기차표를 예약하실 수 있습니다. 다음 여행을 위한 특가 상품이나 경비를 최소화할 방법을 찾고 계신가요? 막놀자닷컴에서 가능합니다. 손쉽게 사용할 수 있는 웹사이트 및 모바일앱 그리고 24시간 고객센터와 함께라면, 다음 여행 예약이 한층 더 수월해집니다. 막놀자닷컴과 함께 고품질의 여행 서비스를 다양한 언어로 누리세요. 영어, 중국어, 광둥어, 일본어, 한국어, 독일어, 프랑스어, 스페인어까지, 전화 한 통이나 클릭 한 번이면 가능합니다.</p>
				<br />
				<p><strong>베스트 호텔과 항공권으로 맞춤 여행을 계획하세요!</strong></p>
				<br />
				<p>막놀자닷컴만의 탄탄한 항공 및 호텔 검색 필터링과, 항공권 가격 알림, 특가 달력, 얼리버드 특가 등을 활용하시면, 보다 쉽게 나만의 맞춤 여행을 만들 수 있습니다. 막놀자닷컴의 보안 결제 시스템은 신용카드 및 직불카드, 유니온페이 등의 다양한 옵션을 제공하고 있어 간편한 결제가 가능합니다. 한국 발행 카드 또는 네이버페이로 결제할 경우 해외 원화 결제 (DCC, Dynamic currency conversion) 수수료 없이 결제가 가능하며, 카드사에서 제공하는 무이자 할부 혜택도 받을 수 있습니다. (* 무이자 할부 혜택은 카드사의 제공 내역에 따라 변경 또는 중단될 수 있습니다.)</p>
				<br />
				<p><strong>파트너 링크</strong></p>
				<p>HTA THREE HEROS</p>
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
<script>
	$(function(){

		let header = $("#callInfo").offset();
		$(window).scroll(function(){
			if($(document).scrollTop() > header.top) {
				$("#callInfo").addClass('headerFixed');
			}else {
				$("#callInfo").removeClass('headerFixed');
			}
		})
		// 여행 정보를 클릭하였을 때 이동될 곳
		$("#callInfo").click(function(e){
			e.stopPropagation();
			/*$('.nav-item-info').removeClass('nav-item-info-selected');
			$("#callInfo :first").addClass('nav-item-info-selected');*/
			let trip = $("#tripInfo").offset();
			$('html').animate({
				scrollTop: trip.top
			});
		})
		// 도움말 및 안내를 클릭하였을때 이동될 곳
		$("#callHelp").click(function(e){
			e.stopPropagation();
			/*$('.nav-item-info').removeClass('nav-item-info-selected');
			$(this).addClass('nav-item-info-selected');*/
			let help = $("#helpAndInfo").offset();
			$('html').animate({
				scrollTop: help.top
			});
		})
		// 막놀자닷컴 구호활동을 클릭하였을 때 이동될 곳
		$("#callDone").click(function(e){
			e.stopPropagation();
			/*$('.nav-item-info').removeClass('nav-item-info-selected');
			$(this).addClass('nav-item-info-selected');*/
			let dona = $("#donationInfo").offset();
			$('html').animate({
				scrollTop: dona.top
			});
		})



	})

</script>
</body>
</html>