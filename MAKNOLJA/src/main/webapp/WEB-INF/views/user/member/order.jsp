<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>모든 예약</title>
	
	<%--CSS--%>
	<link rel="stylesheet"
	      href="//webresource.tripcdn.com/resaresenglish/basebiz/myctrip_ibu_online/dest/css/membercenter.11a113d7.css">
	<link rel="stylesheet"
	      href="//webresource.tripcdn.com/resaresenglish/ibu/ibucommon/stylesheets/main/lang-kr.4f23ebd2.css">
	<link rel="stylesheet"
	      href="//webresource.tripcdn.com/resaresenglish/basebiz/myctrip_ibu_online/dest/css/order.71584f73.css">
	<link rel="SHORTCUT ICON" href="" type="image/x-icon">
	<link rel="ICON" href="">
	<link rel="stylesheet"
	      href="//webresource.tripcdn.com/resaresenglish/ibu/trip-component-platform/components/online-header-3.0.2/index.ee614ec8.css">
	<link rel="stylesheet"
	      href="//webresource.tripcdn.com/resaresenglish/ibu/trip-component-platform/components/online-footer-2.0.6/index.420f8ae5.css">
	
	<%--JS--%>
	<script type="text/javascript" id="rmsd__script"   src="https://webresource.tripcdn.com/resaresenglish/risk/ubtrms/d.min.d7a9ee87.js"></script>
	<script type="text/javascript" charset="utf-8"  defer="defer"     src="//webresource.tripcdn.com/ares2/risk/ubtrms/*/default/rms.js?v=20210819"></script>
	<script type="text/javascript" charset="utf-8"      src="https://webresource.tripcdn.com/ares2/sysdev/ubt/*/default/_bfa.min.js?v=20217_19.js"></script>
	<script  src="//www.trip.com/m/i18n/100012947/ko-KR.js"></script>
	<script  src="https://www.trip.com/m/i18n/6002/ko-KR.js"></script>
	<script      src="https://webresource.tripcdn.com/ares2/ibu/shark-l10n/1.0.1/default/components/l10n.js"></script>
	<script  src="https://www.trip.com/m/i18n/100009239/ko-KR.js"></script>
	
	<style type="text/css">
	    .c-calendar-icon-dot {position: relative;background-color: #ff6f00}  .c-calendar-icon-dot:before {content: "";top: 3px;right: 3px;background-color: inherit;position: absolute;width: 5px;height: 5px;border-radius: 5px}  .c-calendar-month {-webkit-box-flex: 1;-ms-flex: 1;flex: 1 1}  @media screen and (max-width: 580px) {  .c-calendar-month {width: 100%}  }  .c-calendar-month__title {padding: 12px 0;color: #234;text-align: center;font-size: 18px;line-height: 27px;letter-spacing: 0;font-weight: 400}  .c-calendar-month__week-head {font-size: 12px;line-height: 14px;color: #333;display: -webkit-box;display: -ms-flexbox;display: flex;-webkit-box-orient: horizontal;-webkit-box-direction: normal;-ms-flex-direction: row;flex-direction: row;-ms-flex-pack: distribute;justify-content: space-around;margin-bottom: 10px;list-style: none}  .c-calendar-month__week-head li {-webkit-box-flex: 1;-ms-flex: 1;flex: 1 1;text-align: center}  .c-calendar-month__days {font-size: 14px;margin-bottom: 5px}  .c-calendar-month__week {display: -webkit-box;display: -ms-flexbox;display: flex;-webkit-box-orient: horizontal;-webkit-box-direction: normal;-ms-flex-direction: row;flex-direction: row;-ms-flex-pack: distribute;justify-content: space-around;text-align: center;list-style: none}  .c-calendar-month__week li {color: #234;padding: 5px 0;-webkit-box-flex: 1;-ms-flex: 1;flex: 1 1}  .c-calendar-month__week li.is-allow-hover:hover {cursor: pointer;color: #fff;background-color: #5aa0ff}  .c-calendar-month__week li.is-disable {cursor: unset;color: #ccc}  .c-calendar-month__week li.is-in-range {color: #fff;background-color: rgba(38, 129, 255, .3)}  .c-calendar-month__week li.is-selected {color: #fff;background-color: #2681ff}  .c-calendar-month__festival {list-style: none;padding-left: 10px;margin-bottom: 10px;font-size: 12px;line-height: 1.5;color: #999;overflow: hidden}  .c-calendar-month__festival-date {margin-right: 4px}  .c-calendar-month__festival li:not(:last-of-type) {margin-bottom: 5px}  .c-calendar-month__festival .c-calendar-icon-dot {display: inline;margin-right: 10px}  .c-calendar-month__festival .c-calendar-icon-dot:before {width: 5px;height: 5px;top: 0;bottom: 0;left: 0;right: 0;margin: auto}  .c-calendar {border: 1px solid #ddd;-webkit-box-shadow: 0 2px 4px rgba(0, 0, 0, .15);box-shadow: 0 2px 4px rgba(0, 0, 0, .15);-webkit-box-sizing: border-box;box-sizing: border-box;width: 570px;padding: 0 20px}  .c-calendar.is-single {width: 285px;padding: 0 10px}  .c-calendar.is-hide {display: none}  @media screen and (max-width: 580px) {  .c-calendar {min-width: 260px;width: auto;padding: 0 10px}  }  .c-calendar__body {position: relative;display: -webkit-box;display: -ms-flexbox;display: flex;-webkit-box-orient: horizontal;-webkit-box-direction: normal;-ms-flex-direction: row;flex-direction: row;-webkit-box-align: center;-ms-flex-align: center;align-items: center;-webkit-box-align: start;-ms-flex-align: start;align-items: flex-start;padding-bottom: 10px}  @media screen and (max-width: 580px) {  .c-calendar__body {-webkit-box-orient: vertical;-webkit-box-direction: normal;-ms-flex-direction: column;flex-direction: column}  }  .c-calendar__footer {text-align: center;padding: 15px 0;border-top: 1px solid #e4e4e4;font-size: 14px;line-height: 1.2}  .c-calendar__desc {color: #333}  .c-calendar__desc-nights {margin-left: 6px;font-weight: 700}  .c-calendar__message {margin-bottom: 4px;font-size: 12px;color: #999}  .c-calendar__message.is-error {color: #ee3b28}  .c-calendar .c-calendar-icon-next, .c-calendar .c-calendar-icon-prev {top: 12px;font-size: 18px;position: absolute;color: #666;cursor: pointer}  .c-calendar .c-calendar-icon-next:hover, .c-calendar .c-calendar-icon-prev:hover {color: #2681ff}  .c-calendar .c-calendar-icon-next.is-disable, .c-calendar .c-calendar-icon-prev.is-disable {color: #ccc}  .c-calendar .c-calendar-icon-prev {left: 20px}  .c-calendar .c-calendar-icon-next {right: 20px}
	</style>
	<script
	        src="https://webresource.tripcdn.com/ARES/accounts/pagemenu/js/mymenu_content_v2_3.js?v=1618901159"
	        type="text/javascript" charset="utf-8"></script>
	<script src="//webresource.tripcdn.com/code/cquery/cQuery_110421.js"
	        type="text/javascript" charset="utf-8"></script>
    <style>
        .hotel_book_status {
            position: relative;
            padding: 15px;
            margin: 10px 0;
            min-height: 100px;
        }
    </style>
</head>
<body>
<div id="main-container">
    <div>
        <div>
            <div class="container_box">
                <div class="container">
                    <div>
                        <div id="leftNavWrapper" class="aside" menutype="3"
                             menuid="multi_order_all" local="ko-KR">
                            <div id="sideNavCss">
                                <style>
                                    .sidebar {float: left;float: left;display: inline-block;width: 280px;font: 14px/1.5 Arial-BoldMT, arial, sans-serif;color: #223344}  .user_info {margin-bottom: 10px;padding: 10px;background-color: #fff}  .user_info .user_name {margin-bottom: 5px;font-size: 16px}  .user_info .user_level a {display: inline-block;color: #06c}  .a-icon {display: inline-block;font-size: 0;vertical-align: middle;*display: inline;*zoom: 1;background-image: url(//pic.tripcdn.com/pic/platform/ibu/ibucommon/account-sprite.png);background-repeat: no-repeat;background-position: 1024px 1024px;margin-right: 5px}  .icon-member-normal {width: 28px;height: 28px;background-position: -1px -2px}  .icon-member-gold {width: 24px;height: 32px;background-position: -45px 0}  .icon-member-platinum {width: 24px;height: 32px;background-position: -84px 0}  .icon-member-diamond {width: 28px;height: 28px;background-position: -122px -2px}  .icon-app-only {width: 22px;height: 44px;background-position: -1px -42px}  .icon-member-change {width: 36px;height: 36px;background-position: 0px -100px}  .icon-member-locked {width: 12px;height: 16px;background-position: -50px -99px}  .sidebar-nav {padding: 20px 0;background: #fff}  .nav-side {margin: 0;color: #223344}  .nav-side a {position: relative;z-index: 1;display: block;padding: 10px 0;color: #223344;line-height: 16px;text-decoration: none}  .nav-side a:hover {color: #2681FF;text-decoration: none}  .nav-side .ico_arr {display: inline-block;width: 0;height: 0;border: 5px solid #fff;border-top-color: #223344;border-bottom: 0 none;font-size: 0;line-height: 0;overflow: hidden;vertical-align: 1px;margin-left: 5px;-webkit-transition: -webkit-transform .2s ease-in;transition: -webkit-transform .2s ease-in;transition: transform .2s ease-in;transition: transform .2s ease-in, -webkit-transform .2s ease-in}  .nav-side dt {position: relative}  .nav-side dt a {font-weight: bold;padding-left: 20px;border-left: 3px solid #fff}  .nav-side dt a:hover .ico_arr {border-top-color: #2681ff}  .nav-side dd {display: none;position: relative;padding: 0;margin: 0}  .nav-side dd a {padding-left: 30px;padding-right: 10px;border-left: 3px solid #fff;color: #64707C}  .nav-side .selected {border-left-color: #2577e3;color: #2681ff;background: #eef5ff}  .nav-side .sub_c {position: absolute;z-index: 10;top: 8px;right: 25px;color: #999;font-size: 12px;line-height: 20px}  .nav-side .sub_c a {background: #F7F7FB;border-radius: 10px;padding: 0 8px;color: #2681ff;font-weight: normal;height: 20px;line-height: 20px;border-left: none}  .nav-side .sub_c a:hover {text-decoration: underline}  .nav-side_c dt a:hover .ico_arr {border-bottom-color: #2681ff}  .nav-side_c dt .ico_arr {border: 5px solid #fff;border-bottom-color: #223344;border-top: 0 none;-webkit-transform: rotate(360deg);transform: rotate(360deg)}  .nav-side_c dd {display: block}  .tag {position: relative;display: inline-block;background: #FFB300;padding: 0 5px;height: 20px;line-height: 20px;color: #fff;border-radius: 2px;font-size: 12px;margin-left: 6px}  .tag i {position: absolute;top: 7px;left: -6px;display: inline-block;width: 0;height: 0;border: 3px solid #fff;border-right-color: #FFB300}  .sidebar_fixed {position: fixed;top: -10px}  .sidebar_entry_hide {display: none}
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
                                            <a href="javascript:;" class=""><span>My 예약</span></a>
                                        </dt>
                                        <dd>
                                            <a href="/my/order" id="multi_order_all" class="selected">전체 </a>
                                            <a href="#" id="multi_order_flight" class="">항공권 </a>
                                            <a href="#" id="multi_order_hotel" class="">호텔 </a>
                                        </dd>
                                    </dl>
                                    <dl class="nav-side nav-side_c">
                                        <dt>
                                            <a href="#" class=""><span>My 계정</span></a>
                                        </dt>
                                        <dd>
                                            <a href="/my/profile"id="multi_account_profile" class="">내 정보 </a>
                                            <a href="/my/accountpassword" id="multi_account_password" class="">계정 및 비밀번호 </a>
                                            <a href="#" id="Linked_account" class="">SNS계정 연동 </a>
                                            <a href="#" id="multi_account_subscriptions" class="">알림 <span
                                             class="tag"><i></i>업데이트</span></a>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="main">
                        <div class="model order_box">
                            <div class="hd_tab">
                                <a href="#"><span>전체</span></a><a
                                    href="#"><span>결제 대기</span></a><a
                                    href="#"><span>신규 예약</span></a><a
                                    href="#"><span>리뷰 작성</span></a>
                            </div>
                            <div class="booking-time">
                            	<form method="get" action="searchhotel">
	                                <div class="booking-type">
	                                    <div role="button" tabindex="0">
	                                     	<span class="select-type">예약번호</span>
	                                    </div>
	                                </div>
	                                <div class="no-info">
	                                    <input type="text" class="b-no"  name="bookingno" placeholder="예약번호를 입력하세요">
	                                </div>
	                                <button class="btn-search" type="submit">
	                                    <span>검색</span>
	                                </button>
                                </form>
                            </div>
                            <div class="booking-time">
                            	<form method="get" action="searchhotelflight">
	                            	<div class="booking-type">
	                            		<div role="button" tabindex="0">
	                            			<span class="select-type">예약날짜</span> 
	                           			</div>
	                       			</div>
	                      			<div class="time-info">
	                      				<span class="b-text">시작일</span>
	                      					<div class="booking-type">
	                      						<input type="date" class="" name="startdate" value="" style="border-width: 0; padding-top: 5px; padding-left: 2px;">
	               							</div>
	               							<span class="b-text">종료일</span>
	               							<div class="booking-type">
	           									<input type="date" class="" name="enddate" value="" style="border-width: 0; padding-top: 5px; padding-left: 2px;">
	          								</div>
	          						</div>
	          						<button class="btn-search" type="submit"><span>검색</span></button>
	         					</form>	
        					</div>
                            <div class="load-box" style="display: none;">
                                <img
                                        src="//pic.tripcdn.com/pic/platform/ibu/mybooking/loading_48_48_white.png"
                                        alt="">
                            </div>
                            <c:if test="${not empty searchhotel}">
                                <div class="hotel_book_status order_status">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>예약번호</th>
                                                <th>호텔이름</th>
                                                <th>성함</th>
                                                <th>방 갯수</th>
                                                <th>성인</th>
                                                <th>아이</th>
                                                <th>연락처</th>
                                                <th>가격</th>
                                                <th>구매일</th>
                                                <th>체크인</th>
                                                <th>체크아웃</th>
                                                <th>예약상태</th>
                                            </tr>
                                        </thead>
                                        <tbdy>
                                            <tr>
                                                <td>${searchhotel.reservationId}</td>
                                                <td>${searchhotel.hotelName}</td>
                                                <td>${searchhotel.lastName}, ${searchhotel.firstName} 님</td>
                                                <td>${searchhotel.roomCount} 개</td>
                                                <td>${searchhotel.adultCount} 명</td>
                                                <td>${searchhotel.childCount} 명</td>
                                                <td>${searchhotel.phone}</td>
                                                <td>${searchhotel.bookingPrice}</td>
                                                <td>${searchhotel.createdDate}</td>
                                                <td>${searchhotel.checkInDate}</td>
                                                <td>${searchhotel.checkInDate}</td>
                                                <c:if test="${searchhotel.bookingStatus eq 'Y'}">
                                                <td>정상</td>
                                                </c:if>
                                                <c:if test="${searchhotel.bookingStatus eq 'N'}">
                                                    <td>취소</td>
                                                </c:if>
                                            </tr>
                                        </tbdy>
                                    </table>
                                </div>
                            </c:if>
                            <c:if test="${empty searchhotel}">
                            <div class="book_status order_status">
                                <i class="status_notice_mini"></i>
                                <p class="status_tips">예약 내역이 존재하지 않습니다.</p>
                            </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
            <div class="p-pop hide-card-toast">
                <div class="pop-table">
                    <div class="pop-cell">
                        <div class="pop-content">
                            <div class="pop-head">
                                알림<a href="#" class="h-icon pop_close">x</a>
                            </div>
                            <div class="pop-body"></div>
                            <div class="pop-foot">
                                <button class="pop-btn">확인</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="overlay-bg" style="display: none;"></div>
                <div class="loading-item" style="display: none;">
                    <div class="loading-cnt">
                        <div class="loading-brick">
                            <i class="c-icon icon-loading-64"></i>
                            <div class="loading-txt">Processing…</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">


</script>

</body>
</html>