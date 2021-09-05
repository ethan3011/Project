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
<style>
.title-box {font-size: 28px;color: #0f294d;letter-spacing: 0;line-height: 34px;display: flex;justify-content: center;flex-wrap: wrap;align-items: center;text-align: center;margin-bottom: 96px;font-weight: 600;}
.airline-box {font-size: 28px;color: #0f294d;letter-spacing: 0;line-height: 34px;display: flex;justify-content: center;flex-wrap: wrap;align-items: center;text-align: center;margin-bottom: 24px;font-weight: 600;}
.measures-content {display: flex;justify-content: space-between;align-items: stretch;flex-wrap: wrap; }
.measures-item {position: relative;padding: 80px 24px 24px;text-align: center;width: calc(33% - 10px);box-shadow: 0 4px 8px 0 rgb(0 0 0 / 10%);box-sizing: border-box;margin-bottom: 104px;}
.dt-item { color: #0f294d;font-size: 20px;line-height: 26px; font-weight:900;}
.dd-item { color: #455873;  margin-top: 8px; font-size:15px;}
.measure-span {width: 80px;height: 1px;margin: 16px 0;display: inline-block;background-color: #dadfe6;}
.measures-item-sub {line-height: 22px; color: #8592a6;text-align: left; font-size:14px;}
.image-mg50 {margin-bottom:50px; width:104px; height:104px;}
.measures-footer {color: #8592a6;text-align: left; font-size:14px; margin-bottom:10px;}
.corona-airline-info {width: 1160px;border-top: 1px solid #dadfe6;padding: 40px 0 32px;margin: 0 auto;letter-spacing: 0;font-size: 14px;color: #0f294d;line-height: 18px;background-color: #fff;}
.sub-title-tab-wrapper {display: flex;justify-content: center;height: 48px;margin-bottom: 24px; }
.sub-title-tap {font-weight: 900;max-width: 120px;font-size: 16px;line-height: 22px;margin: 0 16px;position: relative;transition: .3s;word-break: break-word;}
.sub-title-tap:hover {color:#287dfa;}
.sub-title-tap-selected {color:#287dfa}
.sub-title-tap::after {content: "";position: absolute;bottom: 18px;left: 0;width: 100%;height: 3px;background: #287dfa;}
.airline-list-tap {display: flex;flex-wrap: wrap;justify-content: center;}
.airline-list-item {width: 24px;height: 24px;margin-right: 8px;line-height: 24px;text-align: center;transition: .3s; cursor:pointer;}
.airline-list-item-selected {background: rgba(40,125,250,.1);border-radius: 1px;color: #287dfa;}
.airline-list-tap-v2 {display: flex;justify-content: start;align-items: stretch;flex-wrap: wrap;margin: 8px -8px 0;}
.airline-list-tap-v2-item {padding: 24px 16px;width: calc(33.33% - 16px);box-sizing: border-box;display: flex;align-items: center;background: #fff;font-size: 16px;line-height: 22px;border-radius: 2px;margin: 16px 8px 0;transition: .3s;color: #0f294d;border: 1px solid #f0f2f5;text-decoration: none;box-shadow: 0 4px 8px 0 rgb(69 88 115 / 12%); cursor:pointer;}
.airline-v2-logo {width: 32px;height: 32px;flex: 0 0 auto;margin-right: 8px;}
.airline-v2-item-name {font-weight: 700;font-size: 16px;flex: 1 1;}
.airline-v2-item-view {font-size: 14px;color: #287dfa;flex: 0 0 auto;margin-left: 8px;transition: .3s;}
.airline-v2-item-view:hover {border-bottom:1px solid #287dfa;}


</style>

    <title>MAKNOLJA</title>
</head>
<body>
<%@include file="../common/header.jsp" %>


<!-- Body 시작 Container -->

<img src="../../resources/images/info/healthFlight.png">
<div class="container mt-5">
    <div class="col-12">
        <div class="title-box">
            <span>항공사 및 공항 내 조치사항</span>
        </div>
        <div class="measures-content">
            <div class="measures-item">
                <img src="../../resources/images/info/health-1.PNG" class="image-mg50">
                <div class="dl-item">
                    <div class="dt-item">
                        헤파 필터 사용
                    </div>
                    <div class="dd-item">
                        고성능 미세입자제거(HEPA) 필터가 기내 공기를 깨끗이 여과합니다
                    </div>
                </div>
                <span class="measure-span"></span>
                <div class="measures-item-sub">
                    항공기 필터는 먼지 입자나 바이러스, 박테리아와 같은 공기 중의 오염 물질을 제거하여 고품질의 실내 공기를 유지합니다. 해당 고급 필터의 기능은 의료기관 및 공업용
                    클린룸에서 사용되는 것과 유사한 수준입니다. 기내 공기는 비행시간 동안 계속해서 여과 처리됩니다.
                </div>
            </div>
            <div class="measures-item">
                <img src="../../resources/images/info/health-2.PNG" class="image-mg50">
                <div class="dl-item">
                    <div class="dt-item">
                        손 소독제 비치
                    </div>
                    <div class="dd-item">
                        대부분의 주요 공항이 손 소독제를 비치합니다
                    </div>
                </div>
                <span class="measure-span"></span>
                <div class="measures-item-sub">
                    손 소독제는 체크인 카운터, 출입국 심사장 및 보안 검색대, 출발구역 및 라운지, 탑승구 및 도착구역을 포함한 공항 대부분의 장소에서 쉽게 찾을 수 있습니다. 일부 항공사는
                    어메니티 키트에도 함께 제공합니다.
                </div>
            </div>
            <div class="measures-item">
                <img src="../../resources/images/info/health-3.PNG" class="image-mg50">
                <div class="dl-item">
                    <div class="dt-item">
                        체온 측정 실시
                    </div>
                    <div class="dd-item">
                        여행 전 과정 동안 체온 측정이 실시됩니다
                    </div>
                </div>
                <span class="measure-span"></span>
                <div class="measures-item-sub">
                    유증상자가 공항에 진입하거나 비행기에 탑승할 가능성을 줄이기 위해, 탑승 및 출국부터 도착까지 전 과정에 걸쳐 체온 측정 및 개별 검사가 시행됩니다.
                </div>
            </div>
            <div class="measures-item">
                <img src="../../resources/images/info/health-4.PNG" class="image-mg50">
                <div class="dl-item">
                    <div class="dt-item">
                        철저한 방역소독
                    </div>
                    <div class="dd-item">
                        전 항공기를 철저하게 소독·청소합니다
                    </div>
                </div>
                <span class="measure-span"></span>
                <div class="measures-item-sub">
                    각 항공사에서는 기내 선반, TV 화면, 기내식 쟁반, 좌석 및 팔걸이 등의 겉면 및 고정 장치에 대한 소독 등을 포함하여 청결한 기내 위생을 유지하기 위한 노력을 배로
                    쏟고 있습니다. 모든 청소는 고품질의 방역소독용품을 사용하는 위생 관리 전문가에 의해 실시됩니다.
                </div>
            </div>
            <div class="measures-item">
                <img src="../../resources/images/info/health-5.PNG" class="image-mg50">
                <div class="dl-item">
                    <div class="dt-item">
                        항공기 환기 설비
                    </div>
                    <div class="dd-item">
                        신선한 공기를 지속적으로 공급합니다
                    </div>
                </div>
                <span class="measure-span"></span>
                <div class="measures-item-sub">
                    전 비행시간 중 항공기가 외부의 신선한 공기를 빨아들이고 내부의 사용된 공기를 기체 밖으로 빼냅니다.
                </div>
            </div>
            <div class="measures-item">
                <img src="../../resources/images/info/health-6.PNG" class="image-mg50">
                <div class="dl-item">
                    <div class="dt-item">
                        사회적 거리 두기
                    </div>
                    <div class="dd-item">
                        개인 간 거리 유지 및 좌석 배치를 고려합니다
                    </div>
                </div>
                <span class="measure-span"></span>
                <div class="measures-item-sub">
                    항공사에서는 탑승객 간 거리를 충분히 확보할 수 있도록 좌석을 배치합니다. 또한, 탑승 대기 등 줄서기가 필요한 경우에는 항공사 직원이 WHO의 지침에 따라 대기인원 간
                    거리를 확보할 수 있도록 안내합니다. 탑승객 모두의 안전을 위해 지침사항에 잘 따라주시기 바랍니다.
                </div>
            </div>
            <div class="measures-item">
                <img src="../../resources/images/info/health-7.PNG" class="image-mg50">
                <div class="dl-item">
                    <div class="dt-item">
                        기내 서비스 조정
                    </div>
                    <div class="dd-item">
                        탑승객의 안전을 위해 모든 방법이 동원됩니다
                    </div>
                </div>
                <span class="measure-span"></span>
                <div class="measures-item-sub">
                    항공기 필터는 먼지 입자나 바이러스, 박테리아와 같은 공기 중의 오염 물질을 제거하여 고품질의 실내 공기를 유지합니다. 해당 고급 필터의 기능은 의료기관 및 공업용
                    클린룸에서 사용되는 것과 유사한 수준입니다. 기내 공기는 비행시간 동안 계속해서 여과 처리됩니다.
                </div>
            </div>
            <div class="measures-item">
                <img src="../../resources/images/info/health-8.PNG" class="image-mg50">
                <div class="dl-item">
                    <div class="dt-item">
                        안전한 식음료 제공
                    </div>
                    <div class="dd-item">
                        식품의 안전성을 보장합니다
                    </div>
                </div>
                <span class="measure-span"></span>
                <div class="measures-item-sub">
                    식음료의 준비 및 보관은 식품 안전 표준을 철저히 따릅니다. 모든 절차는 각 규제 당국의 표준에 준하거나 또는 그 이상의 수준으로 시행됩니다.
                </div>
            </div>
            <div class="measures-item">
                <img src="../../resources/images/info/health-9.PNG" class="image-mg50">
                <div class="dl-item">
                    <div class="dt-item">
                        건강상태 설문지 작성
                    </div>
                    <div class="dd-item">
                        최근 여행 이력을 제공해주세요
                    </div>
                </div>
                <span class="measure-span"></span>
                <div class="measures-item-sub">
                    상세한 건강상태 설문지의 작성이 필요할 수 있습니다. 의심 증상 또는 가능성이 있다고 판단되는 경우에는 관련 당국의 안내 및 지시를 따라야 할 수 있으며, 당국의 조치에
                    최대한 협조해주시기 바랍니다.
                </div>
            </div>
            <div class="measures-footer">
                <span>안전한 비행을 위해, 특정 공항/항공사에 관한 자세한 정보는 각 공식 웹사이트를 방문하여 확인하시기 바랍니다.</span>
            </div>
        </div>
        <div class="corona-airline-info">
            <div class="airline-box">
                <span>항공사별 안전 조치</span>
            </div>
            <div class="sub-title-tab-wrapper">
                <span class="sub-title-tap">
                    항공사
                </span>
            </div>
            <div class="airline-list-tap">
                <div class="airline-list-item" id="primary-select">A</div>
                <div class="airline-list-item">B</div>
                <div class="airline-list-item">C</div>
                <div class="airline-list-item">D</div>
                <div class="airline-list-item">E</div>
                <div class="airline-list-item">F</div>
                <div class="airline-list-item">G</div>
                <div class="airline-list-item">H</div>
                <div class="airline-list-item">I</div>
                <div class="airline-list-item">J</div>
                <div class="airline-list-item">K</div>
                <div class="airline-list-item">L</div>
                <div class="airline-list-item">M</div>
                <div class="airline-list-item">N</div>
                <div class="airline-list-item">O</div>
                <div class="airline-list-item">P</div>
                <div class="airline-list-item">Q</div>
                <div class="airline-list-item">R</div>
                <div class="airline-list-item">S</div>
                <div class="airline-list-item">T</div>
                <div class="airline-list-item">U</div>
                <div class="airline-list-item">V</div>
            </div>
            <div><div class="airline-list-tap-v2" id="airLineList"></div></div>
        </div>
    </div>
</div>
<!-- footer -->
<div class="container">
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

    var $body = $("#airLineList").empty();
        $.ajax({
            url:"healthFlight/json",
            data:{engName:'A'},
            dataType:'json'
        })
        .done(function(response){
            $.each(response,function(index, item) {

                var airLineKorName = item.airLineKorName;
                var image = item.image;
                var link = item.link

                var $dataBox = $("<div class=\"airline-list-tap-v2-item\" onclick=\"location.href='" + link + "\'\"></div>");
                $("<img class='airline-v2-logo' src='../../resources/images/info/airLine/" + image + "'/>").appendTo($dataBox);
                var $div = $("<div class='airline-v2-item-name'></div>")
                $("<span></span>").text(airLineKorName).appendTo($div);
                $("<span class='airline-v2-item-view'></span>").text('보기').appendTo($div);
                $($dataBox).append($div);

                $($body).append($dataBox);

                $("#primary-select").addClass('airline-list-item-selected');
            })
        }).fail(function(){
            alert('조회중 에러가 발생하였습니다. 잠시 후 다시 시도해주세요 !');
        })

        $(".airline-list-item").click(function(){
            $("#airLineList").empty();
            $('.airline-list-item').removeClass('airline-list-item-selected')
            $(this).addClass('airline-list-item-selected');
            var alphabet = $(this).text();

            $.ajax({
                url:"healthFlight/json",
                data:{engName:alphabet},
                dataType:'json'
            })
            .done(function(response){
                $.each(response,function(index, item) {

                    var airLineKorName = item.airLineKorName;
                    var image = item.image;
                    var link = item.link

                    var $dataBox = $("<div class=\"airline-list-tap-v2-item\" onclick=\"location.href='" + link + "\'\"></div>");
                    $("<img class='airline-v2-logo' src='../../resources/images/info/airLine/" + image + "'/>").appendTo($dataBox);
                    var $div = $("<div class='airline-v2-item-name'></div>")
                    $("<span></span>").text(airLineKorName).appendTo($div);
                    $("<span class='airline-v2-item-view'></span>").text('보기').appendTo($div);
                    $($dataBox).append($div);

                    $($body).append($dataBox);
                });
            })
            .fail(function(){
                alert('조회중 에러가 발생하였습니다. 잠시 후 다시 시도해주세요 !');
            })
        })
    })
</script>

</body>
</html>