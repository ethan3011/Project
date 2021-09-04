<%@ page contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="../../resources/navbar/navbarStyle.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- 수정사항 입니다 -->
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


	<title>MAKNOLJA</title>

</head>
<body>
<%@include file="common/header.jsp" %>

<!-- 모달 로그인/회원가입 을 눌렀을때 나오는 로그인 창 -->
<div class="modal-outline">
	<div class="modal fade" id="login-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">로그인</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form id="modal-login" method="post" action="login">
						<div class="row px-2 mb-2">
							<p>아이디</p>
							<input type="email" class="modal-form-control" id="loginUserId" name="id" placeholder="이메일 주소" />
						</div>
						<div class="row px-2 mb-2">
							<p>비밀번호</p>
							<input type="password" class="modal-form-control" id="loginUserPwd" name="password" placeholder="비밀번호를 입력하세요" minlength="1"/>
						</div>
						<div class="row px-2 mb-2">
							<a href="#">아이디 찾기</a>
							<a href="#" class="getForgetPwdNow">비밀번호 찾기</a>
						</div>
						<button type="button" class="btn btn-primary-w95 mb-5" id="btn-login">로그인</button>
					</form>
				</div>
				<div class="modal-footer">
					<div class="modal-sns-inform">
						<p>또는 SNS 계정 사용하기</p>
					</div>
					<div class="sns-list">
						<a class="sns-item" href="#">Naver</a>
						<a class="sns-item" href="#">Kakao</a>
						<a class="sns-item" href="#">Google</a>
					</div>
				</div>
				<div class="modal-last-footer">
					<p>아직 막놀자닷컴 회원이 아니세요? <a href="#" class="modal2-register">회원가입 ></a></p>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 모달 로그인/회원가입 을 눌렀을때 나오는 회원가입 창 -->
<div class="modal-outline">
	<div class="modal fade" id="register-modal" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel2">막놀자닷컴 회원가입</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form id="modal-register" method="post" action="register">
						<div class="row px-2 mb-2">
							<p>이메일</p>
							<input type="text" class="modal-form-control" id="registerUserId" name="id" placeholder="이메일 주소">
						</div>
						<div class="row px-2 mb-2">
							<p>비밀번호</p>
							<input type="password" class="modal-form-control" id="registerUserPwd" name="password" placeholder="비밀번호를 입력하세요">
						</div>
						<div class="row px-2 mb-2">
							<div class="modal-policy-login">
								<input type="checkbox" name="agreePolicy" value="agree" checked/><span>막놀자닷컴 회원 가입 시 <a href="#">이용약관</a> 및 <a href="#">개인정보정책</a>에 동의하는 것으로 간주합니다.</span>
							</div>
						</div>
						<button type="button" class="btn btn-primary-w95 mb-5" id="btn-register">회원가입</button>
					</form>
				</div>
				<div class="modal-last-footer">
					<p>막놀자닷컴 회원이신가요? <a href="#" id="modal2-login">로그인 ></a></p>
				</div>
			</div>
		</div>
	</div>
</div>

<!--임시비밀번호 모달 -->
<div class="modal-outline">
	<div class="modal fade" id="forgetPwd-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title">비밀번호 찾기</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form id="modal-forgetPwd" method="post" action="forgetPwd">
						<div class="row px-2 mb-2">
							<p>아이디(이메일주소)</p>
							<input type="email" class="modal-form-control" id="forgetPwd" name="id" placeholder="이메일 주소를 입력해 주세요" />
						</div>
						<button type="button" class="btn btn-primary-w95 mb-5" id="sendTemPwd">임시비밀번호 전송하기</button>
					</form>
				</div>
				<div class="modal-last-footer">
					<p>아직 막놀자닷컴 회원이 아니세요? <a href="#" class="modal2-register">회원가입 ></a></p>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Body 시작 Container -->
<div class="container my-5 mt-5">
	<div class="row mt-1">
		<div class="col-12">
			<div class="card-border-white">
				<div class="card-body">
					<ul class="tab-list">
						<li class="tab-list__item active">
							<a class="tab-list__link" href="#tab1" data-toggle="tab">호텔</a>
						</li>
						<li class="tab-list__item">
							<a class="tab-list__link" href="#tab3" data-toggle="tab">항공권</a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab1">
							<form action="hotel/main" method="POST" id="hotelSearchForm">
								<div class="input-group">
									<label class="label">목적지 :</label>
									<div id="search-picker" class="search-box">
										<div class="search-area">
											<p class="search-box-title">국내 지역</p>
											<ul>
												<c:choose>
													<c:when test="${empty names }">
														<li class="cityName"><span>현재 이용 가능한 도시가 존재하지 않습니다.</span></li>
													</c:when>
													<c:otherwise>
														<c:forEach var="area" items="${names }">
															<li class="cityName"><span>
																<c:choose>
																	<c:when test="${area.areaCode eq 1}">
																		서울
																	</c:when>
																	<c:when test="${area.areaCode eq 2}">
																		인천
																	</c:when>
																	<c:when test="${area.areaCode eq 3}">
																		대전
																	</c:when>
																	<c:when test="${area.areaCode eq 4}">
																		대구
																	</c:when>
																	<c:when test="${area.areaCode eq 5}">
																		광주
																	</c:when>
																	<c:when test="${area.areaCode eq 6}">
																		부산
																	</c:when>
																	<c:when test="${area.areaCode eq 7}">
																		울산
																	</c:when>
																	<c:when test="${area.areaCode eq 8}">
																		세종특별자치시
																	</c:when>
																	<c:when test="${area.areaCode eq 31}">
																		경기도
																	</c:when>
																	<c:when test="${area.areaCode eq 32}">
																		강원도
																	</c:when>
																	<c:when test="${area.areaCode eq 33}">
																		충청북도
																	</c:when>
																	<c:when test="${area.areaCode eq 34}">
																		충청남도
																	</c:when>
																	<c:when test="${area.areaCode eq 35}">
																		경상북도
																	</c:when>
																	<c:when test="${area.areaCode eq 36}">
																		경상남도
																	</c:when>
																	<c:when test="${area.areaCode eq 37}">
																		전라북도
																	</c:when>
																	<c:when test="${area.areaCode eq 38}">
																		전라남도
																	</c:when>
																	<c:when test="${area.areaCode eq 39}">
																		제주
																	</c:when>
																</c:choose>
															</span></li>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</ul>
										</div>
									</div>
									<input class="input--style-1 input--style-1-small--search" type="text" name="areaName" placeholder="도시명 혹은 호텔명" required="required" id="input-box" style="overflow:hidden" autocomplete="off">
									<div class="search-box-drop-list">
										<c:choose>
											<c:when test="${empty hotels }">
												<div class="associative-item">
													<div class="left-part">
														<div>
															<p class="hotel-name"><strong>에러, 현재 이용 가능한 예약지가 존재하지 않습니다.</strong></p>
														</div>
													</div>
												</div>
											</c:when>
											<c:otherwise>
												<c:forEach var="hotel" items="${hotels }" varStatus="loop">
													<div class="associative-item">
														<div class="left-part">
															<div>
																<p class="hotel-name">
																	<strong>
																		<c:choose>
																			<c:when test="${hotel.areaCode eq 1}">
																				서울
																			</c:when>
																			<c:when test="${hotel.areaCode eq 2}">
																				인천
																			</c:when>
																			<c:when test="${hotel.areaCode eq 3}">
																				대전
																			</c:when>
																			<c:when test="${hotel.areaCode eq 4}">
																				대구
																			</c:when>
																			<c:when test="${hotel.areaCode eq 5}">
																				광주
																			</c:when>
																			<c:when test="${hotel.areaCode eq 6}">
																				부산
																			</c:when>
																			<c:when test="${hotel.areaCode eq 7}">
																				울산
																			</c:when>
																			<c:when test="${hotel.areaCode eq 8}">
																				세종특별자치시
																			</c:when>
																			<c:when test="${hotel.areaCode eq 31}">
																				경기도
																			</c:when>
																			<c:when test="${hotel.areaCode eq 32}">
																				강원도
																			</c:when>
																			<c:when test="${hotel.areaCode eq 33}">
																				충청북도
																			</c:when>
																			<c:when test="${hotel.areaCode eq 34}">
																				충청남도
																			</c:when>
																			<c:when test="${hotel.areaCode eq 35}">
																				경상북도
																			</c:when>
																			<c:when test="${hotel.areaCode eq 36}">
																				경상남도
																			</c:when>
																			<c:when test="${hotel.areaCode eq 37}">
																				전라북도
																			</c:when>
																			<c:when test="${hotel.areaCode eq 38}">
																				전라남도
																			</c:when>
																			<c:when test="${hotel.areaCode eq 39}">
																				제주
																			</c:when>
																		</c:choose>
																	</strong>
																</p>
																<p class="hotel-title">${hotel.name }</p>
															</div>
														</div>
													</div>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<div class="input-group">
									<label class="label">키워드 :</label>
									<input class="input--style-1 input--style-1-small--search" type="text" name="hotelName" placeholder="공항, 역, 지역, 호텔 이름" id="hotel-box" style="overflow:hidden">
								</div>
								<div class="input-group">
									<label class="label">체크인:</label>
									<input class="input--style-1 input--style-1-small" type="text" name="check-in" placeholder="yyyy/mm/dd" id="input-start" readonly>
									<label class="label">체크아웃:</label>
									<input class="input--style-1 input--style-1-small" type="text" name="check-out" placeholder="yyyy/mm/dd" id="input-end" readonly>
									<label class="label">인원수:</label>
									<div class="input-group-icon" id="js-select-special">
										<input class="input--style-1 input--style-1-small" type="text" name="traveler" value="객실1개,성인1명,아이1명" id="info" readonly>
										<i class="zmdi zmdi-chevron-down input-icon"></i>
									</div>
									<div class="dropdown-select">
										<ul class="list-room">
											<li class="list-room__item">
												<span class="list-room__name">방 1</span>
												<ul class="list-person">
													<li class="list-person__item">
														<span class="name">성인</span>
														<div class="quantity quantity1">
															<span class="minus">-</span>
															<input class="inputQty" type="number" min="0" value="1">
															<span class="plus">+</span>
														</div>
													</li>
													<li class="list-person__item">
														<span class="name">아이</span>
														<div class="quantity quantity2">
															<span class="minus">-</span>
															<input class="inputQty" type="number" min="0" value="1">
															<span class="plus">+</span>
														</div>
													</li>
												</ul>
											</li>
										</ul>
										<div class="list-room__footer">
											<a href="#" id="btn-add-room">방 추가</a>
										</div>
									</div>
								</div>
								<div class="row row-space">
									<div class="col-12">
										<button class="btn-submit" id="submitButton" type="button">검색</button>
									</div>
								</div>
							</form>
						</div>
						<div class="tab-pane" id="tab3">
							<form method="POST" action="flight">
								<div class="input-group">
									<label class="label">출발지:</label>
									<div class="rs-select2 js-select-simple select">
										<select name="startCode">
											<c:choose>
												<c:when test="${empty startNames }">
													<option value="">현재 이용 가능한 항공편이 존재하지 않습니다.</option>
												</c:when>
												<c:otherwise>
													<c:forEach var="flight" items="${startNames }">
														<option value="${flight.startAirPortCode }">${flight.startCityName }(${flight.startAirPortCode })</option>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</select>
										<div class="select-dropdown"></div>
									</div>
								</div>
								<div class="input-group">
									<label class="label">도착지:</label>
									<div class="rs-select2 js-select-simple select">
										<select name="arriveCode">
											<c:choose>
												<c:when test="${empty arriveNames }">
													<option value="">현재 이용 가능한 항공편이 존재하지 않습니다.</option>
												</c:when>
												<c:otherwise>
													<c:forEach var="flight" items="${arriveNames }">
														<option value="${flight.arriveAirportCode }">${flight.arriveCityName }(${flight.arriveAirportCode })</option>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</select>
										<div class="select-dropdown"></div>
									</div>
								</div>
								<div class="row row-space">
									<div class="col-2">
										<div class="input-group">
											<label class="label">가는날:</label>
											<input class="input--style-1" type="text" name="startday" placeholder="가는날" id="input-start-2">
										</div>
									</div>
									<div class="col-2">
										<div class="input-group">
											<label class="label">오는날:</label>
											<input class="input--style-1" type="text" name="comebackday" placeholder="오는날" id="input-end-2">
										</div>
									</div>
								</div>
								<div class="radio-row">
									<label class="radio-container m-r-45">일등석
										<input type="radio" name="class" value="3600000">
										<span class="radio-checkmark"></span>
									</label>
									<label class="radio-container m-r-45">비지니스석
										<input type="radio" name="class" value="1800000">
										<span class="radio-checkmark"></span>
									</label>
									<label class="radio-container">이코노미석
										<input type="radio" checked="checked" name="class" value="300000">
										<span class="radio-checkmark"></span>
									</label>
								</div>
								<button class="btn-submit m-t-35" type="submit">검색</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row mt-5">
		<div class="col-12">
			<div class="row">
				<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner">
						<a class="carousel-item active" href="#">
							<img src="../../resources/images/banners/event1.PNG" alt="..." style="width: 33%">
							<img src="../../resources/images/banners/event1.PNG" alt="..." style="width: 33%">
							<img src="../../resources/images/banners/event1.PNG" alt="..." style="width: 33%">
						</a>
						<div class="carousel-item">
							<img src="../../resources/images/banners/event2.PNG" alt="..." style="width: 33%">
							<img src="../../resources/images/banners/event2.PNG" alt="..." style="width: 33%">
							<img src="../../resources/images/banners/event2.PNG" alt="..." style="width: 33%">
						</div>
						<div class="carousel-item">
							<img src="../../resources/images/banners/event3.PNG" alt="..." style="width: 33%">
							<img src="../../resources/images/banners/event3.PNG" alt="..." style="width: 33%">
							<img src="../../resources/images/banners/event3.PNG" alt="..." style="width: 33%">
						</div>
					</div>
					<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col-4 text-center">
				<img alt="banner-1" src="../../resources/images/banners/banner-1.PNG">	<br />
				<h3><strong>4억 회원이 만드는 진짜 여행</strong>	</h3>
				<span>
					전 세계 회원의 생생한 후기 7천만 개!
					120만 호텔과 5천여 도시의 항공권 특가를 만나보세요.
				</span>
			</div>
			<div class="col-4 text-center">
				<img alt="banner-2" src="../../resources/images/banners/banner-2.PNG">	<br />
				<h3><strong>보이는 가격 그대로 빠르게 결제</strong></h3>
				<span>
					네이버페이 등 간편 결제 수단으로 이중 환전 수수료 없이 여행하세요.
				</span>
			</div>
			<div class="col-4 text-center">
				<img alt="banner-3" src="../../resources/images/banners/banner-3.PNG">	<br />
				<h3><strong>언제나 곁에 있는 고객센터</strong></h3>
				<span>
					전 세계 어디든, 365일 24시간 쉽고 빠르게 고객 지원 상담사에게 문의하세요.
				</span>
			</div>
		</div>
	</div>
</div>
<!-- 이미지박스 -->
<div class="image-box">
	<img class="image-thumbnail" alt="배경화면" src="../../resources/images/background/background.png" >
	<div class="image-text">
		<div class="title">여행이 필요할 때, 막놀자닷컴</div>
		<div class="text">막놀자닷컴 앱으로 전 세계 항공권, 호텔, 기차표, 렌터카, 공항픽업 예약을 단 몇 초만에! 실시간 운항조회 및 유용한 여행정보, 회원전용 시크릿 특가, 프로모션, 막놀자코인 적립까지 모두 앱에서 만나보세요. 막놀자코인 30% 추가적립은 오직 앱에서만 가능합니다.</div>
	</div>
</div>`
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
		<img src="../../resources/images/reward/win2.png" alt="왕관이미지">
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

<script type="text/javascript">
	$(function() {

		let requestMethod = "POST";

		// 로그인 모달 띄우기 & 닫기
		let loginModal = new bootstrap.Modal(document.getElementById("login-modal"), {
			keyboard : false
		})

		$("#login-register").click(function() {
			requestMethod = "POST";
			loginModal.show();
		});

		// 회원가입 모달 띄우기 & 닫기
		let registerModal = new bootstrap.Modal(document.getElementById("register-modal"), {
			keyboard : false
		})

		// 비밀번호 찾기 모달 띄우기 & 닫기
		let forgetPwdModal = new bootstrap.Modal(document.getElementById("forgetPwd-modal"), {
			keyboard : false
		})

		$(".modal2-register").click(function() {
			requestMethod = "POST";
			forgetPwdModal.hide();
			loginModal.hide();
			registerModal.show();
		});

		$("#modal2-login").click(function(){
			registerModal.hide();
			forgetPwdModal.hide();
			loginModal.show();
		})

		$(".getForgetPwdNow").click(function(){
			loginModal.hide();
			registerModal.hide();
			forgetPwdModal.show();
		})

		// 회원가입 유효성 검사
		$('#btn-register').click(function(){
			var registerUserId = $("#registerUserId").val();
			if(!registerUserId || registerUserId.indexOf('@') == -1){
				alert('아이디(이메일 형식)는 필수 입력값 입니다.');
				$("#registerUserId").focus();
				return false;
			}
			var registerUserPwd = $("#registerUserPwd").val();
			if(!registerUserPwd){
				alert('비밀번호는 필수 입력값 입니다.');
				$("#registerUserPwd").focus();
				return false;
			}
			$('#modal-register').submit();
		})

		// 로그인 유효성 검사
		$("#btn-login").click(function(){
			var loginUserId = $('#loginUserId').val();
			if(!loginUserId || loginUserId.indexOf('@') == -1){
				alert('아이디(이메일 형식)는 필수 입력값 입니다.');
				$("#loginUserId").focus();
				return false;
			}
			var loginUserPwd = $('#loginUserPwd').val();
			if(!loginUserPwd){
				alert('비밀번호는 필수 입력값 입니다.');
				$('#loginUserPwd').focus();
				return false;
			}

			$('#modal-login').submit();

		})

		// 임시비밀번호 전송 유효성 검사
		$('#sendTemPwd').click(function(){
			var forgetPwd = $('#forgetPwd').val();
			if(!forgetPwd || forgetPwd.indexOf('@') == -1) {
				alert('아이디(이메일 형식)는 필수 입력값 입니다.');
				$('#forgetPwd').focus();
				return false;
			}
			alert('임시비밀번호가 입력하신 이메일로 전송되었습니다. 이메일이 없는 경우 메일이 전달되지 않습니다.')
			$('#modal-forgetPwd').submit();
		})


		// 지역 목록을 보여주는 이벤트
		$("#input-box").on('click',function(e) {
			e.preventDefault();
			let picker = $("#search-picker").show();
			$(".search-box-drop-list").hide();
			$(".cityName").mouseover(function(){

				$(this).css('background-color','#A4C4EE');

				$($(this)).on('click',function(f) {
					f.preventDefault();
					var textData = $.trim($(this).text());
					console.log(textData);

					$("#input-box").val(textData);
					picker.hide();
					$("#input-start").focus();
				})

				$($(this)).mouseleave(function(){
					$(".cityName").css('background-color','white');
				})
			})
		})

		// 지역목록에 hover 기능
		$(".associative-item").mouseover(function() {
			$(this).css('background-color','#A4C4EE');

			$($(this)).mouseleave(function() {
				$(this).css('background-color','white')
			})
		})

		// 지역목록이 아닌 다른곳을 클릭하면 기존 보기창이 사라지게 함
		$('html').on('click',function(e) {
			if(!$(e.target).hasClass("input--style-1 input--style-1-small--search")) {
				$("#search-picker").hide();
			}
		});

		// 호텔리스트 검색 기능
		$("#input-box").keyup(delay(function(){

			$("#search-picker").hide();

			let value, name, item, name2;

			value = $(this).val();
			item = $(".left-part");
			let maxCount = 0;
			$.each(item,function(index,paki) {
				name = $.trim($(paki).find("div p:first").text());
				name2 = $(paki).find("div p:eq(1)").text();
				$(paki).hide();

				if(maxCount < 10) {
					if(name.indexOf(value) > -1 ||
							name2.indexOf(value) > -1) {
						$('.search-box-drop-list').css('display','block');
						$(paki).show();
						maxCount++;
					}
				}
			})
		}, 500));

		$('.left-part').on('click',function(){
			console.log($(this).find("div p:eq(0)").text());
			$('#input-box').val($.trim($(this).find("div p:eq(0)").text()));
			$('#hotel-box').val($(this).find("div p:eq(1)").text());

			$('.search-box-drop-list').css('display','none');
		})

		// 호텔목록이 아닌 다른곳을 클릭하면 기존 보기창이 사라지게 함
		$('html').on('click',function(e) {
			if(!$(e.target).hasClass("search-box-drop-list")) {
				$(".search-box-drop-list").hide();
			}
		});

		// keyup 시간 지연 메소드
		function delay(callback, ms) {
			let timer = 0;
			return function() {
				let context = this, args = arguments;
				clearTimeout(timer);
				timer = setTimeout(function () {
					callback.apply(context, args);
				}, ms || 0);
			};
		}
		/*호텔 submit 페이지 유효성 검사*/
		$("#submitButton").click(function(){
			var destination = $("#input-box").val();
			if(!destination){
				alert('검색하실 목적지를 입력 또는 선택 해주세요.')
				$(destination).focus();
				return false;
			}

			var checkInDate = $("#input-start").val();
			if(!checkInDate){
				alert('체크인 날짜를 선택해주세요.');
				$(checkInDate).focus();
				return false;
			}

			var checkOutDate = $("#input-end").val();
			if(!checkOutDate){
				alert('체크아웃 날짜를 선택해 주세요.');
				$(checkInDate).focus();
				return false;
			}

			$("#hotelSearchForm").submit();
		})
	})
</script>

</body>
</html>