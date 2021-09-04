<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
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
    <script src="https://kit.fontawesome.com/55331e7f28.js" crossorigin="anonymous"></script>


    <style>
        .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
        .wrap * {padding: 0;margin: 0;}
        .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
        .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
        .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
        .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
        .info .close:hover {cursor: pointer;}
        .info .body {position: relative;overflow: hidden;}
        .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
        .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
        .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
        .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
        .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
        .info .link {color: #5085BB;}
        .detail-map-list_container {display: flex;flex-direction: column;width: 20%;height: 100%;background-color: #fff;z-index: 1810;padding: 24px;box-sizing: border-box;}
        .detail-map-list_container .detail-map-list_header {padding-bottom: 16px;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_title {color: #0F294D;line-height: 26px;margin-top: 40px;margin-bottom: 8px;line-height: 24px;}
        h1, h2, h3, h4, h5, h6 {margin: 0;font-size: 12px;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_title .detail-map-list_title_text {display: inline;font-size: 18px;margin-right: 8px; font-weight:600;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_title .detail-map-list_title_level {display: inline;color: #ff9501;font-size: 16px;line-height: 20px;}
        .u-icon-star:before {content: "\f005";font-family: "Font Awesome 5 Free";font-weight: 900;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_position {font-size: 14px;color: #455873;line-height: 20px;margin-bottom: 24px; margin-top:8px;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_position .detail-map-list_position_content {display: flex;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_position .detail-map-list_position_icon {font-size: 16px;margin-right: 5px;color: #acb4bf;}
        .u-icon-ic_new_map:before {content: "\f3c5";font-family: "Font Awesome 5 Free";font-weight: 900;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_position .detail-map-list_address {margin-right: 5px;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_score {margin-bottom: 8px;margin-top: -4px;font-size: 14px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
        body, h1, h2, h3, h4, h5, h6, p {margin: 0;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_score .score-card {display: inline-flex;justify-content: center;align-items: center;border-radius: 2px;height: 22px;color: rgba(255,255,255,0.6);background: #4978CE;padding: 0 6px;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_score .score-card .grade {color: #fff;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_score .score-card .total {font-size: 12px;margin-left: 1px;position: relative;top: 1px;letter-spacing: 1px;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_score .comment {color: #4978CE;margin: 0 4px;font-weight: bold;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_score .review {color: #8592A6;}
        .detail-map-list_container .detail-map-list_score .review {cursor: default;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_price_box {margin-bottom: 10px;text-align: right;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_price_box .price {line-height: 16px;position: relative;font-size: 16px;color: #287DFA;text-align: right;font-weight: bold;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_price_note {margin-bottom: 8px;font-size: 14px;color: #8592A6;text-align: right;line-height: 18px;}
        .detail-map-list_container .detail-map-list_header .detail-map-list_select {background: #287DFA;border-radius: 2px;font-size: 16px;color: #FFFFFF;padding: 8px 16px;text-align: right;display: inline-block;cursor: pointer;float: right;}
        .detail-map-list_container .detail-map-list_tab {padding: 16px 0;border-top: 1px solid #DADFE6;border-bottom: 1px solid #DADFE6;display: flex;}
        .detail-map-list_container .detail-map-list_tab.active-traffic .detail-map-list_tab_item:first-child {color: #287DFA;}
        .detail-map-list_container .detail-map-list_tab .detail-map-list_tab_item:first-of-type {border-right: 2px solid #DADFE6;justify-content: flex-start;}
        .detail-map-list_container .detail-map-list_tab .detail-map-list_tab_item {font-size: 14px;color: #0F294D;line-height: 18px;width: 50%;display: flex;justify-content: center;align-items: center;cursor: pointer;}
        dfn, em, i {font-weight: 400;font-style: normal;}
        .detail-map-list_container .detail-map-list_tab .detail-map-list_tab_item {font-size: 14px;color: #0F294D;line-height: 18px;width: 50%;display: flex;justify-content: center;align-items: center;cursor: pointer;}
        .detail-map-list_container .detail-map-list_list {position: relative;overflow-y: auto;flex: 1;padding-left: 24px;padding-right: 24px;margin-left: -24px;margin-right: -24px;}
        .detail-map-poilist_container .detail-map-poilist_category {box-sizing: border-box;}
        .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_category_title {display: flex;align-items: center;padding-top: 20px;padding-bottom: 4px;font-size: 14px;color: #0F294D;}
        .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_category_title .u-icon {font-size: 24px;margin-right: 8px;}
        .u-icon-flight:before {content: "\e617";}
        .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_category_title .u-icon {font-size: 24px;margin-right: 8px;}
        .u-icon {font-family: "smarticon", sans-serif !important;font-display: swap;display: inline-block;font-style: normal;vertical-align: baseline;-webkit-font-smoothing: antialiased;-moz-osx-font-smoothing: grayscale;}
        .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_item {display: flex;justify-content: space-between;font-size: 14px;padding: 4px 24px;margin-left: -24px;margin-right: -24px;cursor: pointer;}
        .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_item .detail-map-poilist_item_content {display: flex;flex-direction: column;width: 270px;}
        .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_item .detail-map-poilist_item_content .detail-map-poilist_item_title {color: #0F294D;padding: 2px 0;}
        .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_item .detail-map-poilist_item_content .detail-map-poilist_item_poi {color: #8592A6;padding: 2px 0;}
        .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_item .detail-map-poilist_item_info {margin-top: 4px;color: #0F294D;}
        .detail-map-list_container .detail-map-list_close {position: absolute;right: 28px;top: 20px;font-size: 24px;cursor: pointer;}
        .detail-map-list_container .detail-map-list_close {width: 25px;position: absolute;z-index: 1820;right: 20px;top: 20px;}
        .u-icon-close:before { content: "\f00d";font-family: 'FontAwesome'; cursor:pointer;}

    </style>
</head>
<body>
<!-- contentNo 받아오기 -->
<div id="contentNo" style="display:none">${contentNo}</div>
<!-- 맵 -->
<div style="width:100%; height:100%; display:none;">
    <div style="width:80%; height:100%">
        <div id="map" style="width:100%;height:945px;"></div>
    </div>
<div class="detail-map-list_container">
    <section class="detail-map-list_header"><h3 class="detail-map-list_title"><span class="detail-map-list_title_text">${hotelInfo.name}</span>
        <c:forEach begin="1" end="${hotelInfo.hotelStar}">
            <i class="u-icon u-icon-star detail-map-list_title_level" type="star"></i>
        </c:forEach>
        <div class="detail-map-list_position">
            <div class="detail-map-list_position_content"><i type="ic_new_map"
                                                             class="u-icon u-icon-ic_new_map detail-map-list_position_icon"></i><span
                    class="detail-map-list_address">${hotelInfo.addr1}</span></div>
        </div>
        <p class="detail-map-list_score"><span class="score-card"><b class="grade">4.5</b><b
                class="total"> /5</b></span><span class="comment">아주좋음</span><span class="review"
                                                                                   style="position: relative;">리뷰 514개</span>
        </p>
        <p class="detail-map-list_price_box"><span class="price">198,000원</span></p>
        <p class="detail-map-list_price_note">1박당 객실요금 (세금 포함)</p>
        <div class="detail-map-list_select">객실 선택</div>

    </section>
    <%--<section class="detail-map-list_tab active-traffic"><span class="detail-map-list_tab_item">교통 &amp; 관광지</span><i
            class="detail-map-list_tab_divide"></i><span class="detail-map-list_tab_item">주변 호텔</span></section>
    <section class="detail-map-list_list">
        <div class="detail-map-poilist_container">
            <div class="detail-map-poilist_category"><h3 class="detail-map-poilist_category_title"><i type="flight"
                                                                                                      class="u-icon u-icon-flight"></i>공항
            </h3>
                <div id="map-list-37.4485245126.4512329" class="detail-map-poilist_item">
                    <div class="detail-map-poilist_item_content"><p class="detail-map-poilist_item_title">인천 국제공항</p>
                        <p class="detail-map-poilist_item_poi">호텔에서 직선거리: 3.8km</p></div>
                    <div class="detail-map-poilist_item_info">3.8km</div>
                </div>
                <div id="map-list-37.558738126.802837" class="detail-map-poilist_item">
                    <div class="detail-map-poilist_item_content"><p class="detail-map-poilist_item_title">김포 국제공항</p>
                        <p class="detail-map-poilist_item_poi">호텔에서 직선거리: 36.1km</p></div>
                    <div class="detail-map-poilist_item_info">36.1km</div>
                </div>
            </div>
        </div>
    </section>--%>
    <i class="u-icon u-icon-close detail-map-list_close" type="close"></i></div>
</div>

<!-- bootStrap, jQuery -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=04c5761c7c14f56e85653c2337fcd203"></script>
<script>
    var fullAddess, modifiedtime, overview, mapx, mapy, title, mainPhoto;

    var contentValueNo = $('#contentNo').text();

    $.ajax({
        type: 'GET',
        crossDomain: true,
        url: 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon',
        data: {
            ServiceKey: 'xxH+5pNF785sUeZ3C6Msv0Djp8VUC1Sys+NzBte8IL6ZQVGZp1S4FS4xG+V8yHWyLXbTNBUL/gjPhGLz12NSHA==',
            contentTypeId: '32',
            contentId: contentValueNo,
            MobileOS: 'ETC',
            MobileApp: 'TourAPI3.0_Guide',
            defaultYN: 'Y',
            firstImageYN: 'Y',
            areacodeYN: 'Y',
            catcodeYN: 'Y',
            addrinfoYN: 'Y',
            mapinfoYN: 'Y',
            overviewYN: 'Y',
            transGuideYN: 'Y'
        },
        dataType: 'xml'
    })
        .done(function (xmlDoc) {
            var fullAddess = $(xmlDoc).find('addr1').text();
            var modifiedtime = $(xmlDoc).find('modifiedtime').text();
            var overview = $(xmlDoc).find('overview').text();
            var mapx = $(xmlDoc).find('mapx').text();
            var mapy = $(xmlDoc).find('mapy').text();
            var title = $(xmlDoc).find('title').text();
            var mainPhoto = $(xmlDoc).find('firstimage2').text();
            var zipcode = $(xmlDoc).find('zipcode').text();
            console.log(xmlDoc);

            var mapContainer = document.getElementById('map'), // 지도의 중심좌표
                mapOption = {
                    center: new kakao.maps.LatLng(mapy, mapx), // 지도의 중심좌표
                    level: 3 // 지도의 확대 레벨
                };

            var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

            // 지도에 마커를 표시합니다
            var marker = new kakao.maps.Marker({
                map: map,
                position: new kakao.maps.LatLng(mapy, mapx)
            });

            // 커스텀 오버레이에 표시할 컨텐츠 입니다
            // 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
            // 별도의 이벤트 메소드를 제공하지 않습니다
            var content = '<div class="wrap">' +
                '    <div class="info">' +
                '        <div class="title">' +
                title +
                '            <div class="close" title="닫기"></div>' +
                '        </div>' +
                '        <div class="body">' +
                '            <div class="img">' +
                '                <img src="' + mainPhoto + '" width="73" height="70">' +
                '           </div>' +
                '            <div class="desc">' +
                '                <div class="ellipsis">' + fullAddess + '</div>' +
                '                <div class="jibun ellipsis">우편번호 : ' + zipcode + '</div>' +
                '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' +
                '            </div>' +
                '        </div>' +
                '    </div>' +
                '</div>';

            // 마커 위에 커스텀오버레이를 표시합니다
            // 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
            var overlay = new kakao.maps.CustomOverlay({
                content: content,
                map: map,
                position: marker.getPosition()
            });

            // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
            kakao.maps.event.addListener(marker, 'click', function () {
                overlay.setMap(map);
            });

            // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다
            $('.close').on('click',function(){
                overlay.setMap(null);
            });


        })
        .fail(function () {
            alert('조회 중 에러가 발생하였습니다. 잠시 후 다시 시도해 주세요.')
        })

</script>
</body>
</html>