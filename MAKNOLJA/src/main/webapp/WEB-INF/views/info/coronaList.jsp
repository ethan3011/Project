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

    <title>MAKNOLJA</title>
    <style>

.right-container h1 { font-size: 24px;margin-bottom: 20px; font-weight: 900;}
.gm-style-iw-d {font-weight:900 !important;}
.left-content { position: relative;padding: 24px 24px 24px 32px;font-weight:900;}
.left-content h1 { font-size: 16px;font-weight: bold; margin-bottom:15px}
.input-group {width:100% !important;}
html, body {margin: 0;padding: 0;height: 100%;}
.information-box {
    background-color: white;
    padding : 20px;
    border-radius: 20px;
}
.update-box {
    font-size: 16px;
    font-weight: bold;
    margin-bottom: 15px;
}
.corona-text-box {
    font-size:12px;
    align-items: center !important;
    padding: 20px 20px 20px 20px;
    overflow: auto;
    font-weight:800;
}
.title-box {
    font-size:15px;
    font-weight:800;
    overflow: hidden;
}
    </style>


</head>
<body>
<%@include file="../common/header.jsp" %>


<!-- Body 시작 Container -->
<div class="body-container-map" style="width:100%; display: flex;">
    <div class="left-container" style="background-color:antiquewhite; width:50%">
        <div class="left-content">
            <h1>국가/지역별 여행 제한 조치 & 안전 여행 규정 안내</h1>
            <div class="input-group">
                <label class="label">조회국가 :</label>
                <div class="rs-select2 js-select-simple select">
                    <select name="conCode" id="countryList">
                        <option>국가를 선택해주세요...</option>
                    </select>
                    <div class="select-dropdown"></div>
                </div>
            </div>
            <div class="text-box" id="text-box-id"></div>
        </div>
    </div>
    <div class="right-container" style="width:50%">
        <div id="map" style="width:100%; height: 100vh;">
            <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAQluAc_7xdtyJ-vqj6d0zBY2z8uZfzRdY&callback=initMap&region=kr"></script>
        </div>
            <%--<div id="regions_div" style="width: 900px; height: 500px;"></div>--%>
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

    var map;
    var geocoder;
    var infowindow;
    var marker;

    var nationName = "";
    var nationCode = "";
    var strData = "";

    function initMap() {
        // 맵 스타일 속성에 필요한 배열 생성
        var styles = [
            {
                "featureType": "all",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#202c3e"
                    }
                ]
            },
            {
                "featureType": "all",
                "elementType": "labels.text.fill",
                "stylers": [
                    {
                        "gamma": 0.01
                    },
                    {
                        "lightness": 20
                    },
                    {
                        "weight": "1.39"
                    },
                    {
                        "color": "#ffffff"
                    }
                ]
            },
            {
                "featureType": "all",
                "elementType": "labels.text.stroke",
                "stylers": [
                    {
                        "weight": "0.96"
                    },
                    {
                        "saturation": "9"
                    },
                    {
                        "visibility": "on"
                    },
                    {
                        "color": "#000000"
                    }
                ]
            },
            {
                "featureType": "all",
                "elementType": "labels.icon",
                "stylers": [
                    {
                        "visibility": "off"
                    }
                ]
            },
            {
                "featureType": "landscape",
                "elementType": "geometry",
                "stylers": [
                    {
                        "lightness": 30
                    },
                    {
                        "saturation": "9"
                    },
                    {
                        "color": "#29446b"
                    }
                ]
            },
            {
                "featureType": "poi",
                "elementType": "geometry",
                "stylers": [
                    {
                        "saturation": 20
                    }
                ]
            },
            {
                "featureType": "poi.park",
                "elementType": "geometry",
                "stylers": [
                    {
                        "lightness": 20
                    },
                    {
                        "saturation": -20
                    }
                ]
            },
            {
                "featureType": "road",
                "elementType": "geometry",
                "stylers": [
                    {
                        "lightness": 10
                    },
                    {
                        "saturation": -30
                    }
                ]
            },
            {
                "featureType": "road",
                "elementType": "geometry.fill",
                "stylers": [
                    {
                        "color": "#193a55"
                    }
                ]
            },
            {
                "featureType": "road",
                "elementType": "geometry.stroke",
                "stylers": [
                    {
                        "saturation": 25
                    },
                    {
                        "lightness": 25
                    },
                    {
                        "weight": "0.01"
                    }
                ]
            },
            {
                "featureType": "water",
                "elementType": "all",
                "stylers": [
                    {
                        "lightness": -20
                    }
                ]
            }
        ];

        // 새로운 StyledMapType 을 생성 하여 커스터마이징 한 스타일을 적용 시킨 객체를 만든다
        var styledMap = new google.maps.StyledMapType(styles,
            {name: "다크 모드"});

        //맵에 셋팅될 각종 옵션을 적용시킨다
        var mapOptions = {
            //최초 맵 로딩 시 위치 값 셋팅
            center: {lat: 37.579, lng: 126.990},
            //줌 레벨 셋팅
            zoom: 4,
            //스타일맵 적용
            mapTypeControlOptions: {
                mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
            }
        };

        //맵 객체 생성
        map = new google.maps.Map(document.getElementById('map'), mapOptions);

        //좌측 상단에 커스터 마이징한 맵을 선택 할 수 있는 창을 셋팅한다
        map.mapTypes.set('map_style', styledMap);
        map.setMapTypeId('map_style');


        geocoder = new google.maps.Geocoder;
        infowindow = new google.maps.InfoWindow;

        //클릭 시 이벤트 리스너 셋팅
        google.maps.event.addListener(map, 'click', function (event) {
            getAddress(event);
        });

        //줌 단계 변경시 리스너 셋팅
        google.maps.event.addListener(map, 'zoom_changed', function (event) {
            zoomChange(event);
        });
    }

    function zoomChange(event){
        //줌 축소 고정
        if(map.getZoom() < 3){
            map.setZoom(3);
        }
    }

    function getAddress(event){
        strData = "";
        nationName = "";
        nationCode = "";

        if (geocoder) {
            geocoder.geocode( {'location':event.latLng}, function(results, status) {
                    console.log(results);
                if (status == google.maps.GeocoderStatus.OK) {
                    //국가명, 국가코드를 반환하는 형태
                    if(results.length > 0){
                        for(var i=0;i<results[0].address_components.length;i++){
                            //다양한 컨텐츠 중 types[0]이 country인 것이 국가명과 국가 코드를 가지고 있다
                            if(results[0].address_components[i].types[0]=="country"){
                                nationName = ""+results[0].address_components[i].long_name;
                                nationCode =  ""+results[0].address_components[i].short_name;
                                strData = "" + results[0].formatted_address;
                            }
                        }
                        //주소를 가져오는데 시간이 소요 됨으로 가져오고 난 후 마커를 셋팅한다
                        addMarker(event.latLng, map);

                    }
                }
            });
        }
    }
    // 지도에 마커 추가
    function addMarker(location, map) {
        //마커는 삭제가 않됨 기존에 생성했던 마커를 null로 처리하여 않보이게 한다
        if(marker!=null){
            marker.setMap(null);
        }
        //마커를 추가 하면서 클릭한 위치와 멘트를 입력
        marker = new google.maps.Marker({
            position: location,
            //라벨 설정하여 마커동그란 부분에 텍스트를 입력하는 부분
            //label: labels[],
            title : "현재위치",            // 마커에 마우스 커서를 가져갔을 경우 생성되는 타이틀
            map: map
        });

        var latPosition = ""+location.lat();//현재 클릭 위도 가져오기
        latPosition = latPosition.substring(0,6);
        var lngPosition = ""+location.lng();//현재 클릭 경도 가져오기
        lngPosition = lngPosition.substring(0,6);

        var content = "<div style='width:200px; height:100px'>"+
            "국가명 : "+nationName+
            "<br/>"+
            "국가 코드 : "+nationCode+
            "<br/>"+
            "상세주소 : "+strData+
            "</div>";    // 말풍선 안에 들어갈 내용
        // 마커를 클릭했을 때 말풍선 표시 이벤트
        var infowindow = new google.maps.InfoWindow({
            content: content,
            maxWidth : 400,
        });

        //말풍선 표시
        infowindow.open(map,marker);

        //리스너에 마커 클릭 이벤트를 셋팅
        google.maps.event.addListener(marker, "click", function() {
            marker.setMap(null);
        });

        // 클릭되면 select의 값으로 변경 ->> 작동안함..ㅠㅠ
        /*console.log(nationCode)
        $("#countryList").val(nationCode).prop('selected',true);*/
    }

$(function(){
    var XML = 'XML';

    $(function(){
        $.ajax({
            type:"GET",
            url:"coronaList/json",
            dateType:'json',
            success: function(response) {

                var CoronaTextPolicies = response;

                $.each(response, function(index, value) {

                    var ContryNm = value.countryName;
                    var ConIso = value.countryCode;

                    $("<option value='" + ConIso + "'></option>").text(ContryNm).appendTo("#countryList");
                })
            }
        });
    })


    $("#countryList").on('change',function(){

        var countries = [
            ['JP',35.6897,139.6922],
            ['ID',-6.2146,106.8451],
            ['PH',14.6,120.9833],
            ['KR',37.56,126.99],
            ['MX',19.4333,-99.1333],
            ['CN',39.905,116.3914],
            ['EG',30.0561,31.2394],
            ['RU',55.7558,37.6178],
            ['TH',13.75,100.5167],
            ['AR',-34.5997,-58.3819],
            ['BD',23.7289,90.3944],
            ['IR',35.7,51.4167],
            ['CD',-4.3233,15.3081],
            ['FR',48.8566,2.3522],
            ['GB',51.5072,-0.1275],
            ['PE',-12.05,-77.0333],
            ['CO',4.6126,-74.0705],
            ['AO',-8.8383,13.2344],
            ['MY',3.1478,101.6953],
            ['VN',21.0245,105.8412],
            ['HK',22.305,114.185],
            ['SD',15.6031,32.5265],
            ['CL',-33.45,-70.6667],
            ['TZ',-6.8,39.2833],
            ['ES',40.4167,-3.7167],
            ['IQ',33.35,44.4167],
            ['SG',1.3,103.8],
            ['KE',-1.2864,36.8172],
            ['TR',39.93,32.85],
            ['MM',16.8,96.15],
            ['US',38.9047,-77.0163],
            ['CI',5.3364,-4.0267],
            ['JO',31.95,35.9333],
            ['AF',34.5328,69.1658],
            ['DE',52.5167,13.3833],
            ['DZ',36.7764,3.0586],
            ['ET',9.0272,38.7369],
            ['BR',-15.7939,-47.8828],
            ['KW',29.375,47.98],
            ['UA',50.45,30.5236],
            ['YE',15.35,44.2],
            ['SA',24.63333,46.71667],
            ['IT',41.8931,12.4828],
            ['BO',-16.4942,-68.1475],
            ['KP',39.03,125.73],
            ['TW',25.0478,121.5319],
            ['MG',-18.9386,47.5214],
            ['DO',18.4764,-69.8933],
            ['GT',14.6099,-90.5252],
            ['CM',3.8578,11.5181],
            ['UZ',41.3,69.2667],
            ['MO',22.20111,113.54417],
            ['GH',5.6037,-0.187],
            ['AZ',40.3667,49.8352],
            ['ZW',-17.8292,31.0522],
            ['CU',23.1367,-82.3589],
            ['KH',11.5696,104.921],
            ['SO',2.0408,45.3425],
            ['ML',12.6458,-7.9922],
            ['EC',-0.2186,-78.5097],
            ['BY',53.9022,27.5618],
            ['VE',10.5,-66.9333],
            ['AT',48.2083,16.3731],
            ['RO',44.4,26.0833],
            ['PY',-25.3,-57.6333],
            ['CG',-4.2667,15.2833],
            ['PL',52.2167,21.0333],
            ['SY',33.5131,36.2919],
            ['BE',50.8333,4.3333],
            ['HU',47.4983,19.0408],
            ['ZM',-15.4167,28.2833],
            ['GN',9.5092,-13.7122],
            ['UG',0.3136,32.5811],
            ['BF',12.3572,-1.5353],
            ['OM',23.6139,58.5922],
            ['NL',52.0767,4.2986],
            ['MN',47.9203,106.9172],
            ['RS',44.8167,20.4667],
            ['BG',42.6979,23.3217],
            ['CZ',50.0833,14.4167],
            ['UY',-34.8667,-56.1667],
            ['QA',25.3,51.5333],
            ['NG',9.0556,7.4914],
            ['MZ',-25.9153,32.5764],
            ['IE',53.3497,-6.2603],
            ['MM',19.7475,96.115],
            ['SN',14.7319,-17.4572],
            ['RW',-1.9536,30.0606],
            ['HN',14.0942,-87.2067],
            ['LY',32.8752,13.1875],
            ['GE',41.7225,44.7925],
            ['TD',12.11,15.05],
            ['AM',40.1814,44.5144],
            ['KZ',51.1333,71.4333],
            ['MR',18.0858,-15.9785],
            ['TN',36.8008,10.18],
            ['KG',42.8667,74.5667],
            ['TM',37.95,58.3833],
            ['NE',13.5086,2.1111],
            ['NI',12.15,-86.2667],
            ['LR',6.3106,-10.8047],
            ['HT',18.5425,-72.3386],
            ['PK',33.6989,73.0369],
            ['NP',27.7167,85.3667],
            ['AE',24.4781,54.3686],
            ['SE',59.3294,18.0686],
            ['ER',15.3333,38.9167],
            ['SL',8.4833,-13.2331],
            ['IL',31.7833,35.2167],
            ['CF',4.3732,18.5628],
            ['PA',9,-79.5],
            ['NL',52.3667,4.8833],
            ['TG',6.1319,1.2228],
            ['GA',0.3901,9.4544],
            ['HR',45.8,15.95],
            ['TJ',38.5731,68.7864],
            ['MW',-13.9833,33.7833],
            ['BJ',6.4,2.52],
            ['LA',17.9667,102.6],
            ['LK',6.9167,79.8333],
            ['ZA',-25.7464,28.1881],
            ['NO',59.9111,10.7528],
            ['GR',37.9842,23.7281],
            ['BI',-3.3825,29.3611],
            ['FI',60.1756,24.9342],
            ['MK',41.9833,21.4333],
            ['MD',47.0228,28.8353],
            ['LV',56.9475,24.1069],
            ['DK',55.6761,12.5689],
            ['JM',17.9714,-76.7931],
            ['MA',34.0253,-6.8361],
            ['LT',54.6833,25.2833],
            ['SV',13.6989,-89.1914],
            ['DJ',11.595,43.1481],
            ['PT',38.7452,-9.1604],
            ['EE',59.4372,24.745],
            ['ZA',-33.925,18.425],
            ['SK',48.1447,17.1128],
            ['AL',41.33,19.82],
            ['AU',-35.2931,149.1269],
            ['NZ',-41.2889,174.7772],
            ['LB',33.8869,35.5131],
            ['TZ',-6.1835,35.746],
            ['GW',11.8592,-15.5956],
            ['SS',4.85,31.6],
            ['PG',-9.4789,147.1494],
            ['CI',6.8161,-5.2742],
            ['LS',-29.31,27.48],
            ['CY',35.1725,33.365],
            ['NA',-22.57,17.0836],
            ['BJ',6.4833,2.6167],
            ['BO',-19.0431,-65.2592],
            ['CR',9.9333,-84.0833],
            ['SI',46.05,14.5167],
            ['BA',43.8667,18.4167],
            ['BS',25.0667,-77.3333],
            ['ZA',-29.1,26.2167],
            ['MQ',14.6104,-61.08],
            ['BW',-24.6569,25.9086],
            ['SR',5.8667,-55.1667],
            ['TL',-8.5586,125.5736],
            ['XK',42.6667,21.1667],
            ['GY',6.7833,-58.1667],
            ['GQ',3.7521,8.7737],
            ['GI',36.1324,-5.3781],
            ['RE',-20.8789,55.4481],
            ['MV',4.175,73.5083],
            ['ME',42.4397,19.2661],
            ['BH',26.225,50.5775],
            ['MU',-20.1667,57.5],
            ['CW',12.108,-68.935],
            ['IN',28.7,77.2],
            ['CH',46.948,7.4474],
            ['PF',-17.5334,-149.5667],
            ['IS',64.1475,-21.935],
            ['CV',14.9177,-23.5092],
            ['LU',49.6106,6.1328],
            ['LK',6.9,79.9164],
            ['BB',13.0975,-59.6167],
            ['KM',-11.7036,43.2536],
            ['BT',27.4833,89.6333],
            ['SZ',-26.3208,31.1617],
            ['NC',-22.2625,166.4443],
            ['SB',-9.4333,159.95],
            ['FJ',-18.1333,178.4333],
            ['LC',14.0167,-60.9833],
            ['GF',4.933,-52.33],
            ['ST',0.3333,6.7333],
            ['VU',-17.7333,168.3167],
            ['BM',32.2942,-64.7839],
            ['BN',4.9167,114.9167],
            ['MC',43.7396,7.4069],
            ['BI',-3.4264,29.9306],
            ['TT',10.6667,-61.5167],
            ['WS',-13.8333,-171.8333],
            ['IM',54.15,-4.4819],
            ['AW',12.5186,-70.0358],
            ['JE',49.1833,-2.1167],
            ['LI',47.1415,9.5215],
            ['GM',13.4531,-16.5775],
            ['YT',-12.7871,45.275],
            ['MH',7.0918,171.3802],
            ['KI',1.3382,173.0176],
            ['KY',19.2866,-81.3744],
            ['SC',-4.6236,55.4544],
            ['VC',13.1667,-61.2333],
            ['AG',17.1211,-61.8447],
            ['TO',-21.1347,-175.2083],
            ['AD',42.5,1.5],
            ['GL',64.175,-51.7333],
            ['BZ',17.25,-88.7675],
            ['DM',15.3,-61.3833],
            ['KN',17.2983,-62.7342],
            ['FO',62,-6.7833],
            ['AS',-14.274,-170.7046],
            ['MT',35.8978,14.5125],
            ['XG',31.5069,34.456],
            ['TC',21.4664,-71.136],
            ['FM',6.9178,158.185],
            ['TV',-8.5167,179.2167],
            ['SZ',-26.4465,31.2064],
            ['CK',-21.207,-159.771],
            ['GD',12.0444,-61.7417],
            ['SM',43.932,12.4484],
            ['XW',31.7764,35.2269],
            ['MP',15.2137,145.7546],
            ['GP',16,-61.7167],
            ['FK',-51.7,-57.85],
            ['VA',41.9,12.4478],
            ['NU',-19.056,-169.921],
            ['NR',-0.545, 166.91],
            ['GU',13.4745,144.7504],
            ['SH',-15.9251,-5.7179],
            ['MF',18.0706,-63.0847],
            ['SX',18.0256,-63.0492],
            ['VG',18.4167,-64.6167],
            ['BL',17.8958,-62.8508],
            ['PM',46.7811,-56.1764],
            ['AI',18.2167,-63.05],
            ['WF',-13.2825,-176.1736],
            ['NF',-29.0569,167.9617],
            ['PW',7.5006,134.6242],
            ['MA',26.0928,-10.6089],
            ['EH',26.0928,-10.6089],
            ['XR',78.2167,15.6333],
            ['PN',-25.0667,-130.0833],
            ['CX',-10.4167,105.7167]
        ];

        var CnCode = $(this).val();
        for(var i=0; i<countries.length; i++) {

            var code = countries[i][0];
            var lat = countries[i][1];
            var lng = countries[i][2]

            if(CnCode == code) {
                var selectCon = {lat:lat, lng:lng};
                map.panTo(selectCon);
                map.setZoom(10);
                $("#text-box-id").empty();

                $.ajax({
                    url:"coronaList/json/code",
                    data:{code:code},
                    dateType: 'json',
                    success: function(response){

                        var title = response.textTitle;
                        var updateDate = response.updateDate;
                        var textContent = response.textContent;

                        title = title.replace(/다./g,'다.\n\n');
                        textContent = textContent.replace(/▸/g, '\n\n▸');
                        textContent = textContent.replace(/※/g, '\n\n※');

                        $databox = $("<div class='information-box'></div>");

                        $("<div class='update-box'></div>").text(updateDate).appendTo($databox);
                        $("<textarea class='title-box' rows=8 readonly></textarea>").text(title).appendTo($databox);
                        $("<textarea class='corona-text-box' rows=20 readonly></textarea>").text(textContent).appendTo($databox);

                        $("#text-box-id").append($databox);
                    }
                })
                break;
            }
        }
    })
})

</script>

</body>
</html>