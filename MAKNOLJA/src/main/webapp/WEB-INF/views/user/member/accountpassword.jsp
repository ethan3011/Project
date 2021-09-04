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
	<script src="https://kit.fontawesome.com/272a1c7e51.js" crossorigin="anonymous"></script>
  
    <!-- Vendor CSS-->
    <link href="../../../resources/form/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link href="../../../resources/form/vendor/select2/select2.min.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../../../resources/form/css/main.css" rel="stylesheet" media="all">
    
<title>계정 및 비밀번호</title>

<link rel="SHORTCUT ICON" href="" type="image/x-icon">
<link rel="ICON" href="">
<link rel="stylesheet"
	href="https://webresource.tripcdn.com/ares2/basebiz/accountsresource/~0.0.49/default/css/ibu/global.css">
<link rel="stylesheet"
	href="https://webresource.tripcdn.com/ares2/ibu/fe-common/~1.1.74/default/css/global-s.css">
<link rel="stylesheet"
	href="https://webresource.tripcdn.com/ares2/basebiz/accountsresource/~0.0.76/default/css/ibu/safecenter/membercenter.css">
<link rel="stylesheet"
	href="https://webresource.tripcdn.com/ares2/basebiz/accountsresource/~0.0.37/default/css/ibu/safecenter/account.css">
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=AW-789926500&amp;l=dataLayer&amp;cx=c"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" id="rmsd__script" async=""
	src="https://webresource.tripcdn.com/resaresenglish/risk/ubtrms/d.min.d7a9ee87.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" async=""
	src="https://stats.g.doubleclick.net/dc.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-T2SD"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" charset="utf-8" async="" defer="defer"
	crossorigin="anonymous"
	src="//webresource.tripcdn.com/ares2/risk/ubtrms/*/default/rms.js?v=20210819"></script>
<script
	src="https://webresource.tripcdn.com/ARES/accounts/pagemenu/js/mymenu_content_v2_3.js?v=1618901159"
	type="text/javascript" charset="utf-8"></script>
<script src="//webresource.tripcdn.com/code/cquery/cQuery_110421.js"
	type="text/javascript" charset="utf-8"></script>
<style type="text/css">
.main {float: right;width: 810px;}
#use-cookie {width: 100%;background-color: #f5f6f7;border-bottom: 1px solid #ccc;height: 40px}
@media screen and (max-width:768px) {#use-cookie {height: inherit;box-sizing: border-box;padding: 6px}}
#use-cookie .wrap {position: relative;max-width: 1180px;overflow: hidden;margin: 0 auto}
#use-cookie .wrap table {width: 100%}
#use-cookie .wrap table td:first-child {width: auto;text-align: left}
#use-cookie .wrap table .online-close-icon {display: block;width: 16px;height: 16px;background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAAAXNSR0IArs4c6QAAAixJREFUWAm92LtOAkEUBmAGAj1P4RNQWdEQEwwFGhJJKDQEngkKKU0IWhhpbKysbH0PCjss8P8nHsJldnduO5Msy57dnfNxdthZUBW0+Xzew2q02+2G0+n0l7FUDbmvkfe+2WzeDQaDrSIGgRUAdaXUK97fpkIRg7zPyNnAeg1Uv4o3I2KwVLCjB9RqNpvpbcbKaicYpuluNpunKhBDVkYSp0DhA3eRTyqjU8OwxbJQ3GJFWBli9F68EInt6JePGPT9gr55mXTD9hZvbiaTyZsGMZoCVYShg2NINw5kVoSVkRgrhu0oYyoLgxx9VkZy7iskgTIqlYdBIdaSm+szEIMxUS6YTFAslCsmFxSK8sEUgnxRvhgrkCsqBGMNskWFYpxARSjs75juwLzPnH612VdWM37tsw5mHFUwTTOf2NVC8qPpwBXD/p1BPMmEYlwa5yYfDM/3AvHEf9QHEl9yW1oIhn3s5zLp0GHdwbEtw/FfiL0b4lYhL5Dp2yTZWLGQCdkZZMLwMmHhwNYNKO+nBCdQFgaAPpY2UMGPLtaDOg8j9xkcY7olOD15WoFsMHK5QlGFIBdMDFQuyAcTisoEhWBCUEZQDIwv6gwUE+ODOgKVgXFF7UFlYlxQGpQCY4tSKTE2KM5lD5iHgp/0JJnN2vSzHee1a7XaRZX/XGFD/5zlrM2JUuYmm859jzlEIe8P+rkaj8ffegwtl8sG/yxC8DEF5vBDYMjUWRliGP8Dn0XL5i+AXrwAAAAASUVORK5CYII=)50% no-repeat;background-size: 16px 16px;cursor: pointer}
#use-cookie .wrap table .word-cookie {line-height: 40px;display: inline}
#use-cookie .wrap table .word-cookie a {cursor: pointer;border-bottom: 1px solid #464646;text-decoration: none}
#use-cookie .wrap table .word-cookie a:hover {text-decoration: none;color: #333}
@media screen and (max-width:768px) {#use-cookie .wrap table .word-cookie {	line-height: 20px}}
#use-cookie .wrap table .ok-btn {padding: 2px 15px;margin-left: 20px;border-radius: 4px;background-color: #fff;color: #000;cursor: pointer;border: 1px solid #464646}
#use-cookie .wrap table .ok-btn:focus {	outline: none}
</style>

<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/827436400/?random=1629306140526&amp;cv=9&amp;fst=1629306140526&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=900&amp;u_w=1600&amp;u_ah=860&amp;u_aw=1600&amp;u_cd=24&amp;u_his=36&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=2oa8g0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fkr.trip.com%2Fsafecenter%2Faccountpassword&amp;ref=https%3A%2F%2Fkr.trip.com%2Fmembersinfo%2Fprofile%3Flocale%3Dko-KR&amp;tiba=%EA%B3%84%EC%A0%95%20%EB%B0%8F%20%EB%B9%84%EB%B0%80%EB%B2%88%ED%98%B8&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/789926500/?random=1629306140938&amp;cv=9&amp;fst=1629306140938&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=900&amp;u_w=1600&amp;u_ah=860&amp;u_aw=1600&amp;u_cd=24&amp;u_his=36&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=2oa8g0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fkr.trip.com%2Fsafecenter%2Faccountpassword&amp;ref=https%3A%2F%2Fkr.trip.com%2Fmembersinfo%2Fprofile%3Flocale%3Dko-KR&amp;tiba=%EA%B3%84%EC%A0%95%20%EB%B0%8F%20%EB%B9%84%EB%B0%80%EB%B2%88%ED%98%B8&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
</head>

<body>
	<container
		style="position: absolute; top: 0px; left: 0px; width: 0px; height: 0px; z-index: 100;"></container>
	<script type="text/javascript" charset="utf-8" async=""
		src="https://webresource.tripcdn.com/ares2/sysdev/ubt/*/default/_bfa.min.js?v=20217_19"></script>
	<script async=""
		src="//webresource.tripcdn.com/res/concat?f=/resaresenglish/ibu/onlinecommon/assets/ibu_aidsid_online_bundle.b7f9b882.js,ibu_use_cookie_online_bundle.e2c7c9a0.js"
		crossorigin="anonymous"></script>
	<script type="text/javascript" charset="utf-8" async=""
		src="https://webresource.tripcdn.com/ares2/sysdev/ubt/*/default/_bfa.min.js?v=20217_19.js"></script>
	<script type="text/javascript">
    try {
    var __SITE_CONFIG__ = {};
    var __HEAD_CONFIG__ = {
        site : 'KR',
        group : 'trip',
        locale : 'ko_kr',
        channel : 'account',
        language : 'KR',
        currency : 'KRW',
        servername : 'kr.trip.com',
        cookiedomain : 'trip.com'
    };
    __SITE_CONFIG__.headerFooterVersion = 'v3';
    __SITE_CONFIG__.accountdomain = 'https://kr.trip.com/';
    __HEAD_CONFIG__._new_account_flag = '1';
    __HEAD_CONFIG__._new_order_link_flag = '1';
    __HEAD_CONFIG__._show_language = '1';
    __HEAD_CONFIG__._show_login_auto = '0';
    __HEAD_CONFIG__._simple_head = '0';
    __HEAD_CONFIG__._live_chat_url_pro = 'http://livechat.trip.com/livechat/login.aspx';
    __HEAD_CONFIG__._live_chat_url_fat = 'http://livechat.trip.com/livechat/login.aspx';
    __HEAD_CONFIG__._live_chat_url_pro_new = 'https://www.trip.com/servicechatv2/';
    __HEAD_CONFIG__._live_chat_url_fat_new = 'https://www.trip.com/servicechatv2/';
    __HEAD_CONFIG__._header_point_flag = '1';
    __HEAD_CONFIG__._header_collect_flag = '1';
    __HEAD_CONFIG__._header_new_booking = '1';
    __HEAD_CONFIG__._header_new_profile = '1';
    __HEAD_CONFIG__._new_live_chat_flag = '1';
    __HEAD_CONFIG__._header_promo_code_flag = '1';
    __HEAD_CONFIG__._header_tier_points_flag = '1';

    __HEAD_CONFIG__._live_chat = 1;
    __HEAD_CONFIG__._union_cookie = 1;
    __HEAD_CONFIG__._header_nocomponents = '0';
    __HEAD_CONFIG__._header_use_externaljs= '0';

    __HEAD_CONFIG__.regionsData = [{"site":"EN","domain":"www.trip.com","language":"EN","languageName":"English","icon":"flag-xx","locale":"en_xx","languages":null,"locales":null,"localeSize":null},{"site":"US","domain":"us.trip.com","language":"EN","languageName":"English&nbsp;(United States)","icon":"flag-us","locale":"en_us","languages":null,"locales":null,"localeSize":null},{"site":"US","domain":"us.trip.com","language":"ES","languageName":"Español (Estados Unidos)","icon":"flag-us","locale":"es_us","languages":null,"locales":null,"localeSize":null},{"site":"GB","domain":"uk.trip.com","language":"EN","languageName":"English&nbsp;(United Kingdom)","icon":"flag-uk","locale":"en_gb","languages":null,"locales":null,"localeSize":null},{"site":"HK","domain":"hk.trip.com","language":"HK","languageName":"繁體中文&nbsp;(香港)","icon":"flag-hk","locale":"zh_hk","languages":null,"locales":null,"localeSize":null},{"site":"HK","domain":"hk.trip.com","language":"EN","languageName":"English&nbsp;(Hong Kong)","icon":"flag-hk","locale":"en_hk","languages":null,"locales":null,"localeSize":null},{"site":"KR","domain":"kr.trip.com","language":"KR","languageName":"한국어","icon":"flag-kr","locale":"ko_kr","languages":null,"locales":null,"localeSize":null},{"site":"JP","domain":"jp.trip.com","language":"JP","languageName":"日本語","icon":"flag-jp","locale":"ja_jp","languages":null,"locales":null,"localeSize":null},{"site":"SG","domain":"sg.trip.com","language":"SG","languageName":"English&nbsp;(Singapore)","icon":"flag-sg","locale":"en_sg","languages":null,"locales":null,"localeSize":null},{"site":"AU","domain":"au.trip.com","language":"EN","languageName":"English&nbsp;(Australia)","icon":"flag-au","locale":"en_au","languages":null,"locales":null,"localeSize":null},{"site":"DE","domain":"de.trip.com","language":"DE","languageName":"Deutsch","icon":"flag-de","locale":"de_de","languages":null,"locales":null,"localeSize":null},{"site":"FR","domain":"fr.trip.com","language":"FR","languageName":"Français","icon":"flag-fr","locale":"fr_fr","languages":null,"locales":null,"localeSize":null},{"site":"ES","domain":"es.trip.com","language":"ES","languageName":"Español","icon":"flag-es","locale":"es_es","languages":null,"locales":null,"localeSize":null},{"site":"IT","domain":"it.trip.com","language":"IT","languageName":"Italiano","icon":"flag-it","locale":"it_it","languages":null,"locales":null,"localeSize":null},{"site":"RU","domain":"ru.trip.com","language":"RU","languageName":"Русский","icon":"flag-ru","locale":"ru_ru","languages":null,"locales":null,"localeSize":null},{"site":"TH","domain":"th.trip.com","language":"TH","languageName":"ภาษาไทย","icon":"flag-th","locale":"th_th","languages":null,"locales":null,"localeSize":null},{"site":"ID","domain":"id.trip.com","language":"ID","languageName":"Bahasa&nbsp;Indonesia","icon":"flag-id","locale":"id_id","languages":null,"locales":null,"localeSize":null},{"site":"MY","domain":"my.trip.com","language":"MY","languageName":"Bahasa&nbsp;Malaysia","icon":"flag-my","locale":"ms_my","languages":null,"locales":null,"localeSize":null},{"site":"MY","domain":"my.trip.com","language":"EN","languageName":"English&nbsp;(Malaysia)","icon":"flag-my","locale":"en_my","languages":null,"locales":null,"localeSize":null},{"site":"VN","domain":"vn.trip.com","language":"VN","languageName":"Tiếng&nbsp;Việt","icon":"flag-vn","locale":"vi_vn","languages":null,"locales":null,"localeSize":null},{"site":"NL","domain":"nl.trip.com","language":"NL","languageName":"Nederlands","icon":"flag-nl","locale":"nl_nl","languages":null,"locales":null,"localeSize":null},{"site":"PL","domain":"pl.trip.com","language":"PL","languageName":"Polski","icon":"flag-pl","locale":"pl_pl","languages":null,"locales":null,"localeSize":null},{"site":"GR","domain":"gr.trip.com","language":"GR","languageName":"Ελληνικά","icon":"flag-gr","locale":"el_gr","languages":null,"locales":null,"localeSize":null},{"site":"TR","domain":"tr.trip.com","language":"TR","languageName":"Türkçe","icon":"flag-tr","locale":"tr_tr","languages":null,"locales":null,"localeSize":null},{"site":"BR","domain":"br.trip.com","language":"BR","languageName":"Português&nbsp;(Brasil)","icon":"flag-br","locale":"pt_br","languages":null,"locales":null,"localeSize":null},{"site":"IL","domain":"il.trip.com","language":"EN","languageName":"English (Israel)","icon":"flag-il","locale":"en_il","languages":null,"locales":null,"localeSize":null},{"site":"SA","domain":"sa.trip.com","language":"EN","languageName":"English (Saudi Arabia)","icon":"flag-sa","locale":"en_sa","languages":null,"locales":null,"localeSize":null},{"site":"AE","domain":"ae.trip.com","language":"EN","languageName":"English (UAE)","icon":"flag-ae","locale":"en_ae","languages":null,"locales":null,"localeSize":null},{"site":"NZ","domain":"nz.trip.com","language":"EN","languageName":"English (New Zealand)","icon":"flag-nz","locale":"en_nz","languages":null,"locales":null,"localeSize":null},{"site":"IE","domain":"ie.trip.com","language":"EN","languageName":"English (Ireland)","icon":"flag-ie","locale":"en_ie","languages":null,"locales":null,"localeSize":null},{"site":"AT","domain":"at.trip.com","language":"DE","languageName":"Deutsch (Österreich)","icon":"flag-at","locale":"de_at","languages":null,"locales":null,"localeSize":null},{"site":"CH","domain":"ch.trip.com","language":"DE","languageName":"Deutsch (Schweiz)","icon":"flag-ch","locale":"de_ch","languages":null,"locales":null,"localeSize":null},{"site":"CH","domain":"ch.trip.com","language":"FR","languageName":"Français (Suisse)","icon":"flag-ch","locale":"fr_ch","languages":null,"locales":null,"localeSize":null},{"site":"BE","domain":"be.trip.com","language":"EN","languageName":"English (Belgium)","icon":"flag-be","locale":"en_be","languages":null,"locales":null,"localeSize":null},{"site":"BE","domain":"be.trip.com","language":"NL","languageName":"Nederlands (België)","icon":"flag-be","locale":"nl_be","languages":null,"locales":null,"localeSize":null},{"site":"BE","domain":"be.trip.com","language":"FR","languageName":"Français (Belgique)","icon":"flag-be","locale":"fr_be","languages":null,"locales":null,"localeSize":null},{"site":"PT","domain":"pt.trip.com","language":"PT","languageName":"Português (Portugal)","icon":"flag-pt","locale":"pt_pt","languages":null,"locales":null,"localeSize":null},{"site":"MX","domain":"mx.trip.com","language":"ES","languageName":"Español (México)","icon":"flag-mx","locale":"es_mx","languages":null,"locales":null,"localeSize":null},{"site":"UA","domain":"ua.trip.com","language":"UA","languageName":"Українська","icon":"flag-ua","locale":"uk_ua","languages":null,"locales":null,"localeSize":null},{"site":"SE","domain":"se.trip.com","language":"SV","languageName":"svenska","icon":"flag-se","locale":"sv_se","languages":null,"locales":null,"localeSize":null},{"site":"DK","domain":"dk.trip.com","language":"DA","languageName":"Dansk","icon":"flag-dk","locale":"da_dk","languages":null,"locales":null,"localeSize":null},{"site":"FI","domain":"fi.trip.com","language":"FI","languageName":"Suomi","icon":"flag-fi","locale":"fi_fi","languages":null,"locales":null,"localeSize":null},{"site":null,"domain":"www.ctrip.com","language":"","languageName":"简体中文","icon":"flag-cn","locale":"","languages":null,"locales":null,"localeSize":null}];
    __HEAD_CONFIG__.supportedCurrencyData = [{"name":"KRW","sharkName":"대한민국 한화(원)","icon":"₩"},{"name":"CNY","sharkName":"중국 위안","icon":"￥"},{"name":"USD","sharkName":"미국 달러 (US$)","icon":"$"}];
    __HEAD_CONFIG__.allCurrencyData = [{"name":"AED","sharkName":"아랍에미리트 디르함","icon":""},{"name":"AUD","sharkName":"호주 달러 (AU$)","icon":"AU$"},{"name":"BRL","sharkName":"브라질 레알","icon":"<i></i>"},{"name":"CAD","sharkName":"캐나다 달러","icon":"<i></i>"},{"name":"CHF","sharkName":"스위스 프랑","icon":"Fr."},{"name":"CNY","sharkName":"중국 위안","icon":"￥"},{"name":"EUR","sharkName":"유로 (€)","icon":"€"},{"name":"GBP","sharkName":"영국 파운드 (£)","icon":"£"},{"name":"HKD","sharkName":"홍콩 달러 (HK$)","icon":"HK$"},{"name":"IDR","sharkName":"인도네시아 루피아","icon":"Rp"},{"name":"INR","sharkName":"인도 루피","icon":"<i class=\"c-icon icon-inr\"></i>"},{"name":"JPY","sharkName":"일본 엔","icon":"円"},{"name":"KRW","sharkName":"대한민국 한화(원)","icon":"₩"},{"name":"MOP","sharkName":"마카오 파타카","icon":""},{"name":"MYR","sharkName":"말레이시아 링깃","icon":"RM"},{"name":"NZD","sharkName":"뉴질랜드 달러","icon":"<i></i>"},{"name":"PHP","sharkName":"필리핀 페소","icon":"₱"},{"name":"PLN","sharkName":"폴란드 즈워티","icon":"zł"},{"name":"RUB","sharkName":"러시아 루블","icon":"<i class=\"c-icon icon-rub\"></i>"},{"name":"SAR","sharkName":"사우디아라비아 리얄","icon":""},{"name":"SGD","sharkName":"싱가포르 달러","icon":"<i></i>"},{"name":"THB","sharkName":"태국 바트","icon":"฿"},{"name":"TRY","sharkName":"터키 리라","icon":"<i class=\"c-icon icon-try\"></i>"},{"name":"TWD","sharkName":"신타이완 달러","icon":"NT$"},{"name":"USD","sharkName":"미국 달러 (US$)","icon":"$"},{"name":"VND","sharkName":"베트남 동","icon":""},{"name":"MXN","sharkName":"멕시코 페소 (Mex$)","icon":""},{"name":"ARS","sharkName":"아르헨티나 페소 (AR$)","icon":""},{"name":"SEK","sharkName":"스웨덴 크로나","icon":""},{"name":"UAH","sharkName":"우크라이나 흐리브냐","icon":""},{"name":"DKK","sharkName":"덴마크 크로네","icon":""}];
    __HEAD_CONFIG__.loginMenu = [{"name":"My Bookings","displayName":"My 예약","link":"/order/all","id":"booking"},{"name":"Trip Coins","displayName":"막놀자코인","link":"/customer/points/","id":"points"},{"name":"Promo Codes","displayName":"할인코드","link":"/customer/promo/","id":"codes"},{"name":"Profile","displayName":"프로필","link":"/membersinfo/profile/","id":"profile"},{"name":"Favorites","displayName":"즐겨찾기","link":"/favorite/","id":"favorites"},{"name":"Flight Price Alerts","displayName":"항공권 가격 알리미","link":"/flights/price-alert/","id":"flghtAlert"},{"name":"Rewards","displayName":"회원등급","link":"/customer/tierpoints/","id":"rewards"}];


        __SITE_CONFIG__.page = {
            env: 'PRO',
            method: 'GET',
            site: 'KR',
            language: 'KR',
            sitegroup: 'KR',
            headtype: 'PublicHead',
            icon: 'flag-kr',
            formid: ''
        };
        __SITE_CONFIG__.i18n = {
            "signin": "로그인",
            "register": "회원가입",
            "guestbookings": "비회원 예약",
            "mybookings": "My 예약",
            "collect": "즐겨찾기",
            "reviews": "리뷰",
            "cmoney": "C-Money",
            "ctrippoints": "막놀자코인",
            "promocode": "할인코드",
            "tierpoints": "회원등급",
            "profile": "프로필",
            "signout": "로그아웃",
            "coupon": "프로모션 코드",
            "bookasguest": "비회원 예약인가요?",
            "searchbyemail": "비회원예약 확인",
            "Account": "계정 & 예약",
            "SignInDesc": "회원가입 또는 로그인하고 다양한 회원전용 특가 혜택을 누리세요! ",
            "coinsWorth": "약 {0} 상당",
            "coinsTips": "막놀자코인을 적립해 보세요!"
        };
            __SITE_CONFIG__.accountdomain = 'https://kr.trip.com/';
            __SITE_CONFIG__.domain = {'RU': 'ru.trip.com','PT': 'pt.trip.com','TR': 'tr.trip.com','UA': 'ua.trip.com','AT': 'at.trip.com','TH': 'th.trip.com','BE': 'be.trip.com','FI': 'fi.trip.com','PL': 'pl.trip.com','PH': 'ph.trip.com','IL': 'il.trip.com','BR': 'br.trip.com','MX': 'mx.trip.com','IT': 'it.trip.com','SE': 'se.trip.com','SG': 'sg.trip.com','EN': 'www.trip.com','SA': 'sa.trip.com','ID': 'id.trip.com','TW': 'tc.trip.com','NL': 'nl.trip.com','HK': 'hk.trip.com','JP': 'jp.trip.com','AU': 'au.trip.com','NZ': 'nz.trip.com','ES': 'es.trip.com','FR': 'fr.trip.com','DK': 'dk.trip.com','DE': 'de.trip.com','VN': 'vn.trip.com','US': 'us.trip.com','KR': 'kr.trip.com','pages': 'pages.trip.com','MY': 'my.trip.com','GR': 'gr.trip.com','CH': 'ch.trip.com','AE': 'ae.trip.com','GB': 'uk.trip.com','IE': 'ie.trip.com'};
            __SITE_CONFIG__.defaultsitecurrency = {'RU': 'RUB','PT': 'EUR','TR': 'TRY','UA': 'UAH','AT': 'EUR','TH': 'THB','BE': 'EUR','FI': 'EUR','PL': 'PLN','PH': '','IL': 'USD','BR': 'BRL','MX': 'MXN','IT': 'EUR','SE': 'SEK','SG': 'SGD','EN': 'USD','SA': 'SAR','ID': 'IDR','TW': 'TWD','NL': 'EUR','HK': 'HKD','JP': 'JPY','AU': 'AUD','NZ': 'NZD','ES': 'EUR','FR': 'EUR','DK': 'DKK','DE': 'EUR','VN': 'VND','US': 'USD','KR': 'KRW','pages': 'USD','MY': 'MYR','GR': 'EUR','CH': 'CHF','AE': 'AED','GB': 'GBP','IE': 'EUR'};
            __SITE_CONFIG__.accountrawdomain = 'https://';
            __SITE_CONFIG__.accountinfo = 'Tool/AccountInfo';
            __SITE_CONFIG__.calendar = {
                "Months": "1월_2월_3월_4월_5월_6월_7월_8월_9월_10월_11월_12월",
                "ShortMonths": "1월_2월_3월_4월_5월_6월_7월_8월_9월_10월_11월_12월",
                "Weeks": "일요일_월요일_화요일_수요일_목요일_금요일_토요일",
                "ShortWeeks": "일_월_화_수_목_금_토",
                "Holidays": []
            };

        __SITE_CONFIG__.allcurrency = ['AED','AUD','BRL','CAD','CHF','CNY','EUR','GBP','HKD','IDR','INR','JPY','KRW','MOP','MYR','NZD','PHP','PLN','RUB','SAR','SGD','THB','TRY','TWD','USD','VND','MXN','ARS','SEK','UAH','DKK'];
        __SITE_CONFIG__.cookiedomain = {'RU': 'trip.com','PT': 'trip.com','TR': 'trip.com','UA': 'trip.com','AT': 'trip.com','TH': 'trip.com','BE': 'trip.com','FI': 'trip.com','PL': 'trip.com','PH': 'trip.com','IL': 'trip.com','BR': 'trip.com','MX': 'trip.com','IT': 'trip.com','SE': 'trip.com','SG': 'trip.com','EN': 'trip.com','SA': 'trip.com','ID': 'trip.com','TW': 'trip.com','NL': 'trip.com','HK': 'trip.com','JP': 'trip.com','AU': 'trip.com','NZ': 'trip.com','ES': 'trip.com','FR': 'trip.com','DK': 'trip.com','DE': 'trip.com','VN': 'trip.com','US': 'trip.com','KR': 'trip.com','pages': 'trip.com','MY': 'trip.com','GR': 'trip.com','CH': 'trip.com','AE': 'trip.com','GB': 'trip.com','IE': 'trip.com'};
        __SITE_CONFIG__.initFunc = {
            LOCALE_PARAM_NAME: 'locale',
            LOCALE_COOKIE_NAME: 'ibulocale',
            LANGUAGE_PARAM_NAME: 'language',
            LANGUAGE_COOKIE_NAME: 'ibulanguage',
            DEFAULT_SITE_CODE: 'EN',
            CURRENCY_PARAM_NAME: 'curr',
            CURRENCY_COOKIE_NAME: 'cookiePricesDisplayed',
            getCookie: function(name) {
                var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)")),
                    value = null;
                if (arr != null) value = arr[2] && decodeURIComponent(arr[2]);
                return value;
            },
            setCookie: function(name, value, expires, path, domain) {
                expires = new Date(new Date().getTime() + (((typeof expires == "undefined") ? 12 * 7200 : expires)) * 1000);
                var tempcookie = name + "=" + encodeURIComponent(value) + ((expires) ? "; expires=" + expires.toGMTString() : "") + ((path) ? "; path=" + path: "; path=/") + ((domain) ? "; domain=" + domain: ""); (tempcookie.length < 4096) ? document.cookie = tempcookie: function() {
                    console.log("The cookie is bigger than cookie lagrest");
                } ();
                return !! this.getCookie(name);
            },
            getParam: function(name) {
                var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"),
                    arr = location.search.substr(1).match(reg),
                    r = arr && arr[2],
                    value = r ? decodeURIComponent(r) : null;
                return value;
            },
            getCurrByParam: function() {
                var curr = this.getParam(this.CURRENCY_PARAM_NAME) && this.getParam(this.CURRENCY_PARAM_NAME).toUpperCase();
                if (curr && this.checkHasCurr(curr)) {
                    return curr;
                }
            },
            checkHasCurr: function(value) {
                if (!__SITE_CONFIG__.allcurrency) {
                    return true;
                }
                for (var i = 0,
                         len = __SITE_CONFIG__.allcurrency.length; i < len; i++) {
                    if (__SITE_CONFIG__.allcurrency[i] === value) {
                        return true;
                    }
                }
            },
            setCurrencyCookie: function(currencyCode) {
                this.setCookie(this.CURRENCY_COOKIE_NAME, currencyCode, 2592000, '/', this.getCookieDomainBySiteCode(this.getPageSiteCode()));
            },
            setLanguageCookie: function(languageCode) {
                this.setCookie(this.LANGUAGE_COOKIE_NAME, languageCode, 2592000, '/', this.getCookieDomainBySiteCode(this.getPageSiteCode()));
            },
            setLocaleCookie: function(localeCode) {
                this.setCookie(this.LOCALE_COOKIE_NAME, localeCode, 2592000, '/', this.getCookieDomainBySiteCode(this.getPageSiteCode()));
            },
            getPageSiteCode: function() {
                return (__HEAD_CONFIG__.site) || this.DEFAULT_SITE_CODE;
            },
            getCookieDomainBySiteCode: function(siteCode) {
                return __SITE_CONFIG__.cookiedomain[siteCode];
            },
            updateCookies: function() {
                var curr = this.getCurrByParam();
                if (curr) {
                    this.setCurrencyCookie(curr);
                }
                this.setLocaleCookie(__HEAD_CONFIG__.locale);
                this.setLanguageCookie(__HEAD_CONFIG__.language);
            }
        };
        __SITE_CONFIG__.initFunc.updateCookies();

            __SITE_CONFIG__.url = {
                resourcecommon: '//webresource.tripcdn.com/resibumainenglish/R3/src/',
                resourcecommondist: '//webresource.tripcdn.com/resibumainenglish/R3/dist/',
                onlinecommon: '//webresource.tripcdn.com/ares2/ibu/onlinecommon/2.2.8/default/',
                sharkl10n: '//webresource.tripcdn.com/ares2/ibu/shark-l10n/1.0.2/default/'
            };
            var require = {
                shim: {
                    'cQuery': {
                        exports: 'cQuery'
                    },
                    'cQueryPro': {
                        deps: ['cQuery'],
                        exports: 'cQuery'
                    },
                    'cQueryPlugs': {
                        deps: ['cQuery']
                    },
                    'cHeadFoot': {
                        deps: ['cQueryPro']
                    },
                    'cDatePicker': {
                        deps: ['CIDate', 'cQuery']
                    },
                    'jquery': {
                        exports: 'jQuery'
                    },
                    'cAddress': {
                        deps: ['cQuery']
                    },
                    'cBaseAlert': {
                        deps: ['cQuery']
                    },
                    'cBaseVerifyingGuest': {
                        deps: ['cQuery']
                    },
                    'backbone': {
                        deps: ['jquery', 'underscore'],
                        exports: 'Backbone'
                    },
                    'cDatePickerV2': {
                        deps: ['i18n_6001', 'l10n', 'cQuery']
                    },
                    'l10n': {
                        deps: ['i18n_6002']
                    }
                },
                paths: {
                    'es5': __SITE_CONFIG__.url.onlinecommon + '3rdlib/es5-shim/es5-shim',
                    'es6': __SITE_CONFIG__.url.onlinecommon + '3rdlib/es6-shim/es6-shim',
                    'underscore': __SITE_CONFIG__.url.onlinecommon + '3rdlib/underscore/underscore',
                    'backbone': __SITE_CONFIG__.url.onlinecommon + '3rdlib/backbone/backbone',
                    'jquery': __SITE_CONFIG__.url.onlinecommon + '3rdlib/jquery/jquery',
                    'cQuery': __SITE_CONFIG__.url.onlinecommon + 'lib/cquery_110421',
                    'cQueryPlugs': __SITE_CONFIG__.url.onlinecommon + 'lib/cquery_plugs',
                    'cQueryPlugsPad': __SITE_CONFIG__.url.onlinecommon + 'lib/pad/cquery_plugin_packages_ipad',
                    'cQueryPro': __SITE_CONFIG__.url.onlinecommon + 'lib/cquery_pro',
                    'CIDate': __SITE_CONFIG__.url.onlinecommon + 'lib/cidate',
                    'cDatePicker': __SITE_CONFIG__.url.onlinecommon + 'lib/cdatepicker',
                    'appdownload_lab': __SITE_CONFIG__.url.onlinecommon  + 'widgets/appdownload_lab',
                    'gotopbar_lab': __SITE_CONFIG__.url.onlinecommon  + 'widgets/gotopbar_lab',
                    'json': __SITE_CONFIG__.url.onlinecommon + '3rdlib/json/json2',
                    'cAddress': __SITE_CONFIG__.url.onlinecommon + 'ui/address-1.0',
                    'cNotice': __SITE_CONFIG__.url.onlinecommon + 'ui/notice-1.0',
                    'cRadioTab': __SITE_CONFIG__.url.onlinecommon + 'ui/radio_tab',
                    'cBaseAlert': __SITE_CONFIG__.url.onlinecommon + 'lib/verifying_guest',
                    'cBaseVerifyingGuest': __SITE_CONFIG__.url.onlinecommon + 'lib/verifying_guest',
                    'cHeadFoot': __SITE_CONFIG__.url.onlinecommon + 'headfoot/headfoot',
                    'cDatePickerV2': __SITE_CONFIG__.url.onlinecommon + 'lib/cdatepicker_v2',
                    'l10n': __SITE_CONFIG__.url.sharkl10n + 'components/l10n',
                    'i18n_6001': '//webresource.tripcdn.com/ARES/locale/new-6001-ko-KR.js?etagc=6f17340647f4d845a46de1aeb6b46bb2#',
                    'i18n_6002': '//webresource.tripcdn.com/ARES/locale/new-6002-ko-KR.js?etagc=7e5db1658445df0e2b6cab2e3ee836f9#'
                }
            };
            require.paths.modTrainsIntlSearchBoxV4 = '//webresource.english.c-ctrip.com/ares2/train/trip-train-cn-pc-resource/1.0.5/default/trains_v2/common/trains_search_intl_v4';require.paths.modAirportSearchBoxV2 = '//webresource.english.c-ctrip.com/ares2/IGT/IBU-ONLINE-SEARCHBOX/1.0.90/default/iburesv2/airport_search';require.paths.modFlightPoiaddress = '//webresource.english.c-ctrip.com/ares2/ibu/ibuintlflight/4.7.1/default/dist/JS/home/poiAddress';require.paths.modTrainsSearchBoxI18n = '//webresource.english.c-ctrip.com/resibutrainsenglish/R9/JS/dist/trains_v2/trains_search_resource/resource_kr';require.paths.CarSearchController = '//webresource.english.c-ctrip.com/resaresenglish/car/intlcaronline/min/js/car_search_controller_v2.0df95bac';require.paths.modHotelsSearchBoxV2 = '//webresource.english.c-ctrip.com/ares2/ibu/ibuhotels/4.2.58/default/script/searchboxplugin/home';require.paths.modFlightsSearchBoxV2 = '//webresource.english.c-ctrip.com/ares2/ibu/ibuintlflight/7.19.2/default/dist/JS/home/flightsSearch';require.paths.modEurorailSearchBoxV2 = '//webresource.english.c-ctrip.com/ares2/train/trip-train-cn-pc-resource/1.0.5/default/trains_v2/common/eurorail_search_box_v2';require.paths.modFlightsSearchBox = '//webresource.english.c-ctrip.com/ares2/ibu/ibuintlflight/4.7.1/default/dist/JS/home/flightsSearch';require.paths.modTrainsSearchBox = '//webresource.english.c-ctrip.com/resibutrainsenglish/R9/JS/dist/trains_v2/common/trains_search_v2';require.paths.modTrainsSearchBoxV3 = '//webresource.english.c-ctrip.com/ares2/train/trip-train-cn-pc-resource/1.0.5/default/trains_v2/common/trains_search_v3';require.paths.modHotelsSearchBox = '//webresource.english.c-ctrip.com/ares2/ibu/ibuhotels/4.2.52/default/script/searchboxplugin/index';require.paths.modAirportSearchBox = '//webresource.english.c-ctrip.com/ares2/ibu/other-resource/1.0.1/default/airporttransfers/airport_search';require.paths.modThingToDoSearchBox = '//webresource.english.c-ctrip.com/ares2/gcc/globalcontentwebsite/3.0.4/default/search_box/gccttd_search';require.paths.CarSearchControllerV2 = '//webresource.english.c-ctrip.com/resaresenglish/car/intlcaronline/min/js/car_search_controller_v2.0df95bac';require.paths.modTrainsSearchBoxV2I18n = '//webresource.english.c-ctrip.com/ares2/train/trip-train-cn-pc-resource/1.0.5/default/trains_v2/trains_search_resource/resource_kr';require.paths.modFlightsSearchBoxI18n = '//webresource.english.c-ctrip.com/ares2/ibu/ibuintlflight/4.7.1/default/dist/JS/home/i18n';require.paths.modPackagesSearchBox = '//webresource.english.c-ctrip.com/resibumainenglish/R2/dist/components/packages/packages_search';require.paths.modCarsSearchBoxI18n = '//webresource.english.c-ctrip.com/ares2/car/intlcaronline/2.5.68/default/min/i18n/resource_kr_kr';require.paths.modEurorailSearchBox = '//webresource.english.c-ctrip.com/resibutrainsenglish/R9/JS/dist/trains_v2/common/eurorail_search_box';require.paths.modCarsSearchBoxI18nV2 = '//webresource.english.c-ctrip.com/ares2/car/intlcaronline/2.5.68/default/min/i18n/resource_kr_kr';require.paths.AsyncSearchBox = '//webresource.english.c-ctrip.com/resibumainenglish/R8/dist/ui/async_search_box';require.paths.modtrainsCNsearchboxV4 = '//webresource.english.c-ctrip.com/ares2/train/trip-train-cn-pc-resource/1.0.5/default/trains_v2/common/trains_search_cn_v4';require.paths.modCarsSearchBoxV2 = '//webresource.english.c-ctrip.com/resaresenglish/car/intlcaronline/min/js/car_search_v2.fd83f444';require.paths.modPackagesSearchBoxI18n = '//webresource.english.c-ctrip.com/resibumainenglish/R2/dist/components/packages/i18n/resource_kr';require.paths.modHotelsSearchBoxI18n = '//webresource.english.c-ctrip.com/ares2/ibu/ibuhotels/4.2.58/default/script/searchboxplugin/resource_kr_kr';require.paths.AsyncSearchBoxV3 = '//webresource.english.c-ctrip.com/ares2/ibu/onlinecommon/2.1.8/default/ui/async_search_box_v3';require.paths.modCarsSearchBox = '//webresource.english.c-ctrip.com/resaresenglish/car/intlcaronline/min/js/car_search_v2.fd83f444';require.paths.AsyncSearchBoxV2 = '//webresource.english.c-ctrip.com/resibumainenglish/R9/dist/ui/async_search_box_v2';require.paths.modHotelsPointsPlusSearchBox = '//webresource.english.c-ctrip.com/ares2/ibu/ibuhotels/4.2.56/default/script/searchboxplugin/pointsPlus';
            __SITE_CONFIG__.cRequireConfig = require;
        !function(t){function n(a){if(i[a])return i[a].exports;var o=i[a]={i:a,l:!1,exports:{}};return t[a].call(o.exports,o,o.exports,n),o.l=!0,o.exports}var i={};n.m=t,n.c=i,n.d=function(t,i,a){n.o(t,i)||Object.defineProperty(t,i,{configurable:!1,enumerable:!0,get:a})},n.n=function(t){var i=t&&t.__esModule?function(){return t["default"]}:function(){return t};return n.d(i,"a",i),i},n.o=function(t,n){return Object.prototype.hasOwnProperty.call(t,n)},n.p="/assets/",n(n.s=249)}({249:function(t,n,i){t.exports=i(250)},250:function(t,n,i){"use strict";var a,o,r="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t};!function(i,s){var u=Object.prototype.toString,c=function(t){return"[object Function]"===u.call(t)},f="object"===("undefined"==typeof __HEAD_CONFIG__?"undefined":r(__HEAD_CONFIG__)),p=/ctrip/i.test(location.hostname),g=/\.hk/i.test(location.hostname),_={ga:{trip:{"default":"UA-109672825-1"},ctrip:{"default":"UA-2871753-7",hk:"UA-2871753-32"}},gtm:{h5:"GTM-W5446B",online:"GTM-T2SD"}},l={gaId:i["__GA_ID__"]||function(){if(f){var t=_.ga[__HEAD_CONFIG__.group];return t[__HEAD_CONFIG__.site.toLowerCase()]||t["default"]}return p?g?_.ga.ctrip.hk:_.ga.ctrip["default"]:_.ga.trip["default"]}(),gtmId:i["__GTM_ID__"]||function(){return f?_.gtm.online:_.gtm.h5}()},m={_ga_namespase:"ga",_gtm_namespase:"dataLayer",init:function(){if(this._init_flag)return!0;this.initGa(),this.initGtm(),this._init_flag=!0},initGa:function(){this._initGaBefore(),this.appendGa()},initGtm:function(){this._initGtmBefore(),this.appendGtm()},ga:function(){if(!i[this._ga_namespase]||!c(i[this._ga_namespase]))throw new Error("ga is not initialized");i[this._ga_namespase].apply(arguments)},gtag:function(){if(!i[this._gtm_namespase]||!c(i[this._gtm_namespase].push))throw new Error("gtag is not initialized");i[this._gtm_namespase].push(arguments)},updateGaId:function(t){this.ga("create",t)},updateGtmId:function(t){this.gtag("config",t)},_initGaBefore:function(){i.GoogleAnalyticsObject="ga",i.ga=i.ga||function(){(i["ga"].q=i["ga"].q||[]).push(arguments)},i["ga"].l=1*new Date,i.ga("create",l.gaId,"auto"),i.ga("require","displayfeatures"),i.ga("send","pageview")},_initGaAfter:function(){},sendPageView:function(){this._init_flag&&this.ga("send","pageview")},_initGtmBefore:function(){i.dataLayer=i.dataLayer||[],dataLayer.push({"gtm.start":(new Date).getTime(),"event":"gtm.js"})},_initGtmAfter:function(){},appendGa:function(){this.loadScript("https://www.google-analytics.com/analytics.js")},appendGtm:function(){this.loadScript("https://www.googletagmanager.com/gtm.js?id="+l.gtmId)},loadScript:function(t){var n=s.createElement("script"),i=s.getElementsByTagName("script")[0];n.async=1,n.src=t,i.parentNode.insertBefore(n,i)}};if(setTimeout(function(){m.init()},1000),i["GaGtm"])throw new Error("GaGtm has loaded, please check it out!");a=[],void 0!==(o=function(){return m}.apply(n,a))&&(t.exports=o)}(window,document)}});

    } catch (e) { console.log('config error'); }
</script>
	<div class="container_box">
		<div class="container">
			<div class="main">
				<div class="model information_box">
					<ul class="filed_area password_filed pin-filed">

						<li>
							<label class="keyName">비밀번호</label>
							<div class="filed_con">	******
								<span class="setUp_box"> <a class="" href="javascript:showRsetPwd();">비밀번호 변경</a></span>
							</div>
						</li>
						<li>
							<label class="keyName">이메일</label>
							<div class="filed_con  filed_con_email">${LOGINED_USER.id }@gmail.com	</div>
						</li>
						<li><label class="keyName">회원가입일</label>
							<div class="filed_con">2019년 8월 2일</div></li>
					</ul>
				</div>
			</div>
			<div>
				<div id="leftNavWrapper" class="aside" menutype="3"
					menuid="multi_order_all" local="ko-KR">
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
						.nav-side a:hover {color: #2681FF;text-decoration: none}
						.nav-side .ico_arr {	display: inline-block;width: 0;height: 0;border: 5px solid #fff;border-top-color: #223344;border-bottom: 0 none;font-size: 0;line-height: 0;overflow: hidden;vertical-align: 1px;margin-left: 5px;-webkit-transition: -webkit-transform .2s ease-in;transition: -webkit-transform .2s ease-in;transition: transform .2s ease-in;transition: transform .2s ease-in, -webkit-transform .2s ease-in}
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
						.tag {position: relative;display: inline-block;background: #FFB300;padding: 0 5px;height: 20px;line-height: 20px;color: #fff;border-radius: 2px;font-size: 12px;margin-left: 6px}
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
									<a href="/my/profile"id="multi_account_profile" class="">내 정보 </a>
									<a href="/my/accountpassword" id="multi_account_password" class="selected">계정 및 비밀번호 </a>
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
				<div class="p-pop hide-card-toast">
					<div class="pop-table">
						<div class="pop-cell">
							<div class="pop-content">
								<div class="pop-head">
									알림<a href="###" class="h-icon pop_close">x</a>
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
		<form method="post" action="passwordmodify">
			<div class="temp_bg" id="tempbg" style="display: none"></div>
			<div class="pop_alert modify_pop" id="divRPwd" style="z-index: 1000; display: none">
				<h2 class="tit">비밀번호 변경</h2>
				<ul class="filed_area">
					<li><label class="keyName">이전 비밀번호</label>
						<div class="filed_con">
							<input id="oldpwd" class="ipt" type="password" name="password">
						</div></li>
					<li><label class="keyName">새 비밀번호</label>
						<div class="filed_con">
							<input id="newpwd" class="ipt" type="password" name="newpassword">
						</div></li>
					<li><label class="keyName">새 비밀번호 확인</label>
						<div class="filed_con">
							<input id="newpwd1" class="ipt" type="password" name="newpasswordcheck">
						</div></li>
					<li class="action">
						<button class="btn_normal" id="btnRPwd" type="submit">제출하기</button>
					</li>
				</ul>
				<span class="close" onclick="closeMarsk()" id="RPwdClose">×</span>
			</div>
		</form>
			<div id="msgpop" class="pop_alert reset_pop"
				style="z-index: 3000; display: none;">
				<div class="tips_box" style="margin: 0px;">
					<p class="strong_tip"
						style="text-align: center; position: relative; height: 30px; line-height: 30px; display: inline-block; font-weight: 700;">
						<i class="sucess_mini_ico"></i>
					</p>
					<p style="text-align: center">
						<a class="btn_normal btn_ok" style="margin: 0px; margin-top: 20px"
							href="javascript:void(0)"
							onclick="jQuery('#msgpop').hide(); cQuery('#tempbg').hide()">OK</a>
					</p>
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
			
	<script
		src="//webresource.tripcdn.com/resaresenglish/ibu/ibucommon/lib/cquery_110421.1eeabd72.js"></script>
	<script
		src="//webresource.tripcdn.com/resaresenglish/ibu/ibucommon/lib/cquery_pro.062d1713.js"></script>

	<iframe id="iframe_logout" style="display: none"></iframe>
	<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-109672825-1']);
    _gaq.push(['_setDomainName', '.' + __HEAD_CONFIG__.servername]);
    _gaq.push(['_setAllowHash', false]);
    _gaq.push(['_trackPageview']);
    setTimeout(function(){
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' === document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    }, 1000);
    pageTracker={   _trackEvent:function(arg1,arg2){   _gaq.push(['_trackEvent', arg1, 'click', arg2]);   }};
    var chatFAQEnum = {};
    chatFAQEnum.groupCode = {"EN":"HotelAll","HK":"CANTONservice","JP":"HotelJP","KR":"HotelKR","TW":"CANTONservice"};
    chatFAQEnum.siteCode = {"EN":"01","JP":"02","KR":"03","HK":"04","TW":"04"};
    chatFAQEnum.langCode = {"EN":"01","JP":"02","KR":"03","HK":"04","TW":"04"};
    chatFAQEnum.productCode = {"invalid":"00","main":"01","chinaflights":"02","flights":"03","domestichotels":"04","hotels":"05","trains":"06","cars":"07"};
    chatFAQEnum.buType = {"invalid":"1324","chinaflights":"1322","flights":"1322","domestichotels":"1321","hotels":"1321","trains":"1323"};
    chatFAQEnum.buDesc = {"invalid":"support","chinaflights":"flight","flights":"flight","domestichotels":"hotel","hotels":"hotel","trains":"train"};
    var _foot_concat_bundle_js = "//webresource.tripcdn.com/res/concat?f=/resaresenglish/ibu/onlinecommon/assets/ibu_aidsid_online_bundle.b7f9b882.js,ibu_use_cookie_online_bundle.e2c7c9a0.js";
</script>
	<script type="text/javascript"
		src="//webresource.tripcdn.com/resaresenglish/ibu/onlinecommon/assets/ibu_header_online_bundle.f81dbabd.js"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
    head_foot_init();
    var __ACCOUNTPWD_CONFIG__ = {
        i18n:{
            'empty_oldpwd':"이전 비밀번호를 입력하세요.",
            'empty_newpwd':"새 비밀번호를 입력하세요.",
            'same_pwd':"새 비밀번호는 반드시 이전 비밀번호와 달라야 합니다",
            'notsame_newpwd':"비밀번호 불일치"
        }
    };
</script>
	<script
		src="https://webresource.tripcdn.com/ares2/basebiz/accountsresource/~0.0.8/default/js/third/jquery-1.12.4.min.js"></script>
	<script
		src="https://webresource.tripcdn.com/ares2/basebiz/cusersdk_accountubt/~1.0.2/default/AccountUbtSDK.js"></script>
	<script
		src="https://webresource.tripcdn.com/ares2/basebiz/accountsresource/~0.0.44/default/js/ibu/accountmanagement/accountpassword.js"></script>
	<script
		src="https://webresource.tripcdn.com/ares2/basebiz/i18nonlineemailchangebindsdk/1.1.1/default/i18nonlineemailchangebindsdk.js"></script>
	<script src=""></script>
	<script
		src="https://webresource.tripcdn.com/ARES/accounts/pagemenu/js/trip_loader.js"></script>
	<script type="text/javascript">

	var emailChangeBindSDK = new I18nOnlineEmailChangeBindSDK();
    function emailBind(isNew){

        var param = {
            needMask:true,
            isNewBind:isNew,
            successCallback: function(){location.reload();}
        };
	        emailChangeBindSDK.showEmailBind(param);
	    }
	
	    function emailVerify(maskEmail){
	        var param = {
	            needMask:true,
	            maskEmail:maskEmail,
	            successCallback: function(){location.reload();}
	        };
	        emailChangeBindSDK.showEmailVerify(param);
	    }
	</script>

	<!--<script src="/assets/js/metric.js"></script>-->
	<input id="page_id" type="hidden" value="10320668059">


	<script type="text/javascript"
		src="https://www.googletagmanager.com/gtag/js?id=AW-827436400">
	</script>
</body>
</html>