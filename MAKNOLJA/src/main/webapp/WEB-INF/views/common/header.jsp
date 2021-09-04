<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8"%>
<div class="container" style="background-color:white;">
	<header>
		<a href="/"><img alt="Brand" src="../../../resources/images/logo/logo5.png" /></a>
	<div class="nav-upper">
		<ul class="nav-container justify-content-end">
			<li class="nav-item"><a href="#">고객센터</a></li>
			<li class="nav-item"><a href="#">예약 확인</a></li>
            <%--상수--%>
            <c:if test="${not empty LOGINED_USER}">
			<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="my-menu-link" role="button" data-bs-toggle="dropdown" aria-expanded="false">마이 메뉴 </a>
				<ul class="dropdown-menu" aria-labelledby="my-menu-link">
					<li><a class="dropdown-item" href="/my/order">My예약</a>
					<li><a class="dropdown-item" href="">막놀자코인</a>
					<li><a class="dropdown-item" href="">할인코드</a>
					<li><a class="dropdown-item" href="">프로필</a>
					<li><a class="dropdown-item" href="">즐겨찾기</a>
					<li><a class="dropdown-item" href="">항공권 가격 알리미</a>
					<li><a class="dropdown-item" href="">회원등급</a> <!-- 빈줄하나 -->
					<li><a class="dropdown-item" href="">로그아웃</a>
				</ul>
			</li>
            </c:if>
			<c:if test="${empty LOGINED_USER}">
				<li class="nav-item" id="login-register"><a href="#">로그인/회원가입</a></li>
			</c:if>
			<c:if test="${not empty LOGINED_USER}">
				<li class="nav-item"><a href="/logout">로그아웃</a></li>
			</c:if>
		</ul>
	</div>

	</header>
	<div class="nav-lower">
		<ul class="nav-container">
			<li class="nav-item"> <a href="#">호텔</a></li>
			<li class="nav-item"> <a href="#">항공권</a></li>
			<li class="nav-item"> <a href="#">Activity</a></li>
			<li class="nav-item"> <a href="#">MAKNOLJA Guide</a></li>
			<li class="nav-item"> <a href="#">MAKNOLJA Reward</a></li>
			<li class="nav-item"> <a href="#">MAKNOLJA Promotion</a></li>
		</ul>
	</div>
</div>

<div class="nav-error">
	<div class="container">
		<span> 코로나19 관련 최신 여행정보 안내 </span>
		<a href="/info/corona">코로나19 해외여행자안전가이드</a>
		<img alt="icon-2" src="../../../resources/images/header/icon-2.png">
		<a href="/info/coronaList">코로나19 관련 여행제한 안내</a>
		<img alt="icon-1" src="../../../resources/images/header/icon-1.png">
		<a href="/info/healthFlight">안전한 비행을 위한 노력</a>
		<img alt="icon-2" src="../../../resources/images/header/icon-2.png">
	</div>
</div>