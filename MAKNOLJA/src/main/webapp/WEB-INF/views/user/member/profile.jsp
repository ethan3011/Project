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

<title>내 정보</title>
<link rel="SHORTCUT ICON" href="/trip.ico" type="image/x-icon">
<link rel="ICON" href="/trip.ico">
<link rel="stylesheet"
	href="//webresource.tripcdn.com/resaresenglish/ibu/ibucommon/stylesheets/global.9f8fc8b5.css">
<link rel="stylesheet"
	href="//webresource.tripcdn.com/resaresenglish/basebiz/membersinfo/css/membercenter.97ec675f.css">
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=AW-789926500&amp;l=dataLayer&amp;cx=c"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://stats.g.doubleclick.net/dc.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-T2SD"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<style type="text/css">
#use-cookie {width: 100%;background-color: #f5f6f7;border-bottom: 1px solid #ccc;height: 40px}
@media screen and (max-width:768px) {#use-cookie {height: inherit;box-sizing: border-box;padding: 6px}}
#use-cookie .wrap {position: relative;max-width: 1180px;overflow: hidden;margin: 0 auto}
#use-cookie .wrap table {width: 100%}
#use-cookie .wrap table td:first-child {width: auto;text-align: left}
#use-cookie .wrap table .online-close-icon {display: block;width: 16px;height: 16px;background:	url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAAAXNSR0IArs4c6QAAAixJREFUWAm92LtOAkEUBmAGAj1P4RNQWdEQEwwFGhJJKDQEngkKKU0IWhhpbKysbH0PCjss8P8nHsJldnduO5Msy57dnfNxdthZUBW0+Xzew2q02+2G0+n0l7FUDbmvkfe+2WzeDQaDrSIGgRUAdaXUK97fpkIRg7zPyNnAeg1Uv4o3I2KwVLCjB9RqNpvpbcbKaicYpuluNpunKhBDVkYSp0DhA3eRTyqjU8OwxbJQ3GJFWBli9F68EInt6JePGPT9gr55mXTD9hZvbiaTyZsGMZoCVYShg2NINw5kVoSVkRgrhu0oYyoLgxx9VkZy7iskgTIqlYdBIdaSm+szEIMxUS6YTFAslCsmFxSK8sEUgnxRvhgrkCsqBGMNskWFYpxARSjs75juwLzPnH612VdWM37tsw5mHFUwTTOf2NVC8qPpwBXD/p1BPMmEYlwa5yYfDM/3AvHEf9QHEl9yW1oIhn3s5zLp0GHdwbEtw/FfiL0b4lYhL5Dp2yTZWLGQCdkZZMLwMmHhwNYNKO+nBCdQFgaAPpY2UMGPLtaDOg8j9xkcY7olOD15WoFsMHK5QlGFIBdMDFQuyAcTisoEhWBCUEZQDIwv6gwUE+ODOgKVgXFF7UFlYlxQGpQCY4tSKTE2KM5lD5iHgp/0JJnN2vSzHee1a7XaRZX/XGFD/5zlrM2JUuYmm859jzlEIe8P+rkaj8ffegwtl8sG/yxC8DEF5vBDYMjUWRliGP8Dn0XL5i+AXrwAAAAASUVORK5CYII=)50% no-repeat;	background-size: 16px 16px;cursor: pointer}
#use-cookie .wrap table .word-cookie {line-height: 40px;display: inline}
#use-cookie .wrap table .word-cookie a {cursor: pointer;border-bottom: 1px solid #464646;text-decoration: none}
#use-cookie .wrap table .word-cookie a:hover {text-decoration: none;color: #333}
@media screen and (max-width:768px) {#use-cookie .wrap table .word-cookie {	line-height: 20px}}
#use-cookie .wrap table .ok-btn {padding: 2px 15px;margin-left: 20px;border-radius: 4px;background-color: #fff;color: #000;cursor: pointer;border: 1px solid #464646}
#use-cookie .wrap table .ok-btn:focus {outline: none}
.main {float: right;width: 810px !important;}
</style>
<script src="//webresource.tripcdn.com/code/cquery/cQuery_110421.js"
	type="text/javascript" charset="utf-8"></script>
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/827436400/?random=1629305186885&amp;cv=9&amp;fst=1629305186885&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=900&amp;u_w=1600&amp;u_ah=860&amp;u_aw=1600&amp;u_cd=24&amp;u_his=35&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=2oa8g0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fkr.trip.com%2Fmembersinfo%2Fprofile%3Flocale%3Dko-KR&amp;ref=https%3A%2F%2Fkr.trip.com%2Forder%2Fall&amp;tiba=%ED%94%84%EB%A1%9C%ED%95%84&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/789926500/?random=1629305186905&amp;cv=9&amp;fst=1629305186905&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=900&amp;u_w=1600&amp;u_ah=860&amp;u_aw=1600&amp;u_cd=24&amp;u_his=35&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=2oa8g0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fkr.trip.com%2Fmembersinfo%2Fprofile%3Flocale%3Dko-KR&amp;ref=https%3A%2F%2Fkr.trip.com%2Forder%2Fall&amp;tiba=%ED%94%84%EB%A1%9C%ED%95%84&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
</head>

<body>
<c:set var="menu" value="mypage2"/>
<%--<%@ include file="../../common/header.jsp" %>--%>
	<container	style="position: absolute; top: 0px; left: 0px; width: 0px; height: 0px; z-index: 100;"></container>
	<div class="container">
		<div class="main">
			<div class="model information_box">
				<ul class="filed_area">
					<li><label class="keyName">성</label>
					<div class="filed_con" id="surnameValue">${LOGINED_USER.korLastName }</div></li>
					<li><label class="keyName">이름</label>
					<div class="filed_con" id="givennameValue">${LOGINED_USER.korFirstName }</div></li>
					<li><label class="keyName">생년월일</label>
					<div class="filed_con" id="birthValue">${LOGINED_USER.birth }</div></li>
					<li><label class="keyName">성별</label>
					<div class="filed_con" id="genderValue">${LOGINED_USER.gender }</div></li>
					<li><label class="keyName">이메일 주소</label>
					<div class="filed_con" id="oldemail">${LOGINED_USER.id }</div></li>
					<li><button class="btn_normal" type="button"
							onclick="javascript:jQuery('#editlist').show();">수정</button></li>
				</ul>
				<form method="post" action="profilemodify">
					<ul class="filed_area" id="editlist" style="display: none">
						<li><label class="keyName">성</label>
							<div class="filed_con">
								<input type="text" id="surname" name="surname" value=""
									class="ipt" placeholder="Surname" maxlength="60">
							</div></li>
						<li><label class="keyName">이름</label>
							<div class="filed_con">
								<input type="text" id="givenname" name="givenname" value=""
									class="ipt" placeholder="Givenname" maxlength="60">
							</div></li>
						<li><label class="keyName">생년월일</label>
							<div class="filed_con">
								<select class="selt selt_ws" id="dobMonth" name="dobMonth">
									<option value="">---월---</option>
									<option value="1">01</option>
									<option value="2">02</option>
									<option value="3">03</option>
									<option value="4">04</option>
									<option value="5">05</option>
									<option value="6">06</option>
									<option value="7">07</option>
									<option value="8">08</option>
									<option value="9">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select> 
								<select class="selt selt_ws" id="dobDay" name="dobDay">
									<option value="">---일---</option>
									<option value="1">01</option>
									<option value="2">02</option>
									<option value="3">03</option>
									<option value="4">04</option>
									<option value="5">05</option>
									<option value="6">06</option>
									<option value="7">07</option>
									<option value="8">08</option>
									<option value="9">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>
								</select> 
								<select class="selt selt_ws" id="dobYear" name="dobYear">
									<option value="">---년---</option>
									<option value="1930">1930</option>
									<option value="1931">1931</option>
									<option value="1932">1932</option>
									<option value="1933">1933</option>
									<option value="1934">1934</option>
									<option value="1935">1935</option>
									<option value="1936">1936</option>
									<option value="1937">1937</option>
									<option value="1938">1938</option>
									<option value="1939">1939</option>
									<option value="1940">1940</option>
									<option value="1941">1941</option>
									<option value="1942">1942</option>
									<option value="1943">1943</option>
									<option value="1944">1944</option>
									<option value="1945">1945</option>
									<option value="1946">1946</option>
									<option value="1947">1947</option>
									<option value="1948">1948</option>
									<option value="1949">1949</option>
									<option value="1950">1950</option>
									<option value="1951">1951</option>
									<option value="1952">1952</option>
									<option value="1953">1953</option>
									<option value="1954">1954</option>
									<option value="1955">1955</option>
									<option value="1956">1956</option>
									<option value="1957">1957</option>
									<option value="1958">1958</option>
									<option value="1959">1959</option>
									<option value="1960">1960</option>
									<option value="1961">1961</option>
									<option value="1962">1962</option>
									<option value="1963">1963</option>
									<option value="1964">1964</option>
									<option value="1965">1965</option>
									<option value="1966">1966</option>
									<option value="1967">1967</option>
									<option value="1968">1968</option>
									<option value="1969">1969</option>
									<option value="1970">1970</option>
									<option value="1971">1971</option>
									<option value="1972">1972</option>
									<option value="1973">1973</option>
									<option value="1974">1974</option>
									<option value="1975">1975</option>
									<option value="1976">1976</option>
									<option value="1977">1977</option>
									<option value="1978">1978</option>
									<option value="1979">1979</option>
									<option value="1980">1980</option>
									<option value="1981">1981</option>
									<option value="1982">1982</option>
									<option value="1983">1983</option>
									<option value="1984">1984</option>
									<option value="1985">1985</option>
									<option value="1986">1986</option>
									<option value="1987">1987</option>
									<option value="1988">1988</option>
									<option value="1989">1989</option>
									<option value="1990">1990</option>
									<option value="1991">1991</option>
									<option value="1992">1992</option>
									<option value="1993">1993</option>
									<option value="1994">1994</option>
									<option value="1995">1995</option>
									<option value="1996">1996</option>
									<option value="1997">1997</option>
									<option value="1998">1998</option>
									<option value="1999">1999</option>
									<option value="2000">2000</option>
									<option value="2001">2001</option>
									<option value="2002">2002</option>
									<option value="2003">2003</option>
									<option value="2004">2004</option>
									<option value="2005">2005</option>
									<option value="2006">2006</option>
									<option value="2007">2007</option>
									<option value="2008">2008</option>
									<option value="2009">2009</option>
									<option value="2010">2010</option>
									<option value="2011">2011</option>
									<option value="2012">2012</option>
									<option value="2013">2013</option>
									<option value="2014">2014</option>
									<option value="2015">2015</option>
									<option value="2016">2016</option>
									<option value="2017">2017</option>
									<option value="2018">2018</option>
									<option value="2019">2019</option>
									<option value="2020">2020</option>
									<option value="2021">2021</option>
								</select>
	
							</div>
						</li>
						<li><label class="keyName">성별</label>
							<div class="filed_con">
								<label class="sel_label"><input id="genderM"
									name="gender" value="M" class="input_radio" type="radio">남성</label>
								<label class="sel_label"><input id="genderF"
									name="gender" value="F" class="input_radio" type="radio">여성</label>
							</div>
						</li>
						<li><label class="keyName">이메일 주소</label>
							<div class="filed_con" id="newemail"> </div>
						</li>
						<li>
							<button class="btn_normal" type="submit" id="btnsave">저장</button>
							<input type="hidden" id="ModifyToken" name="ModifyToken"
							value="985b9138-52d2-4328-9aff-ba2bc8fc6ab6">
						</li>
						<li><button class="btn_normal" type="button"
								onclick="javascript:jQuery('#editlist').hide();">취소</button>
						</li>
					</ul>
				</form>
			</div>
		</div>
		<div id="leftNavWrapper" menutype="3" menuid="multi_account_profile"
			local="ko-KR">
			<div id="sideNavCss">
				<style>
				.sidebar {float: left;float: left;display: inline-block;width: 280px;font: 14px/1.5 Arial-BoldMT, arial, sans-serif;color: #223344}
				.user_info {margin-bottom: 10px;padding: 10px;background-color: #fff}
				.user_info .user_name {margin-bottom: 5px;font-size: 16px}
				.user_info .user_level a {display: inline-block;color: #06c}
				.a-icon {display: inline-block;font-size: 0;vertical-align: middle;*display: inline;*zoom: 1;background-image:url(//pic.tripcdn.com/pic/platform/ibu/ibucommon/account-sprite.png);background-repeat: no-repeat;background-position: 1024px 1024px;margin-right: 5px}
				.icon-member-normal {width: 28px;height: 28px;background-position: -1px -2px}
				.icon-member-gold {width: 24px;height: 32px;background-position: -45px 0}
				.icon-member-platinum {width: 24px;height: 32px;background-position: -84px 0}
				.icon-member-diamond {width: 28px;height: 28px;background-position: -122px -2px}
				.icon-app-only {width: 22px;height: 44px;background-position: -1px -42px}
				.icon-member-change {width: 36px;height: 36px;background-position: 0px -100px}
				.icon-member-locked {width: 12px;height: 16px;background-position: -50px -99px}
				.sidebar-nav {padding: 20px 0;background: #fff}
				.nav-side {margin: 0;color: #223344}
				.nav-side a {position: relative;z-index: 1;display: block;padding: 10px 0;color: #223344;line-height: 16px;text-decoration: none}
				.nav-side a:hover {color: #2681FF;	text-decoration: none}
				.nav-side .ico_arr {display: inline-block;width: 0;height: 0;border: 5px solid #fff;border-top-color: #223344;border-bottom: 0 none;font-size: 0;line-height: 0;overflow: hidden;vertical-align: 1px;margin-left: 5px;-webkit-transition: -webkit-transform .2s ease-in;transition: -webkit-transform .2s ease-in;transition: transform .2s ease-in;transition: transform .2s ease-in, -webkit-transform .2s ease-in}
				.nav-side dt {position: relative}
				.nav-side dt a {font-weight: bold;padding-left: 20px;border-left: 3px solid #fff}
				.nav-side dt a:hover .ico_arr {border-top-color: #2681ff}
				.nav-side dd {display: none;position: relative;padding: 0;margin: 0}
				.nav-side dd a {padding-left: 30px;padding-right: 10px;border-left: 3px solid #fff;color: #64707C}
				.nav-side .selected {border-left-color: #2577e3;color: #2681ff;background: #eef5ff}
				.nav-side .sub_c {position: absolute;z-index: 10;top: 8px;right: 25px;color: #999;font-size: 12px;line-height: 20px}
				.nav-side .sub_c a {background: #F7F7FB;border-radius: 10px;padding: 0 8px;color: #2681ff;font-weight: normal;height: 20px;line-height: 20px;border-left: none}
				.nav-side .sub_c a:hover {text-decoration: underline}
				.nav-side_c dt a:hover .ico_arr {border-bottom-color: #2681ff}
				.nav-side_c dt .ico_arr {border: 5px solid #fff;border-bottom-color: #223344;border-top: 0 none;-webkit-transform: rotate(360deg);transform: rotate(360deg)}
				.nav-side_c dd {display: block}
				.tag {position: relative;display: inline-block;background: #FFB300;	padding: 0 5px;height: 20px;line-height: 20px;color: #fff;border-radius: 2px;font-size: 12px;margin-left: 6px}
				.tag i {position: absolute;top: 7px;left: -6px;display: inline-block;width: 0;height: 0;border: 3px solid #fff;border-right-color: #FFB300}
				.sidebar_fixed {position: fixed;top: -10px}
				.sidebar_entry_hide {display: none}
				</style>
			</div>
			<div class="sidebar">
				<div class="user_info">
					<div class="user_level">
						<i class="a-icon icon-member-normal"></i> 막놀자닷컴 회원
					</div>
				</div>
				<div id="sideNav" class="sidebar-nav">
					<dl class="nav-side nav-side_c">
						<dt>
							<a href="javascript:;" class=""><span>My 예약</span> </a>
						</dt>
						<dd>
							<a href="/my/order"    id="multi_order_all"class="">전체 </a>
							<a href="/order/flight?locale=ko-KR" id="multi_order_flight"class="">항공권 </a>
							<a href="/order/hotel?locale=ko-KR"  id="multi_order_hotel" class="">호텔 </a>
						</dd>
					</dl>
					<dl class="nav-side nav-side_c">
						<dt>
							<a href="javascript:;" class=""><span>My 계정</span> </a>
						</dt>
						<dd>
							<a href="/my/profile"id="multi_account_profile" class="selected">내 정보 </a>
							<a href="/my/accountpassword" id="multi_account_password" class="">계정 및 비밀번호 </a>
							<a href="/safecenter/thirdlink" id="Linked_account" class="">SNS계정 연동 </a>
							<a href="/passenger/list" id="multi_account_traveler" class="">여행자 정보 </a>
							<a href="/subscribe" id="multi_account_subscriptions" class="">알림
								<span class="tag">
							 	<i></i>업데이트
								</span>
							</a>
						</dd>
					</dl>
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
	<script
		src="https://webresource.tripcdn.com/code/cquery/cQuery_110421.js"></script>
	<script
		src="//webresource.tripcdn.com/resaresenglish/ibu/ibucommon/lib/cquery_pro.062d1713.js"></script>
	<script
		src="//webresource.tripcdn.com/resaresenglish/basebiz/membersinfo/js/jquery-1.9.1.min.55a2eccb.js"></script>
		
	<script type="text/javascript">
	
	
	</script>	
</body>
</html>