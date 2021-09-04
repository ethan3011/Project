<%@ page contentType="text/html; charset=UTF-8"
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
        .news-container { padding: 0; margin: 0;}
        header {display:block !important;}



        .news-header { padding: 20px 0;box-shadow: 0 1px 0 0 #e5e5e5;background-color: #fff;}
        @media screen and (min-width: 768px) and (max-width: 1920px){
            .new-card-header-top {
                height: 172px;
            }
        }
        .new-card-header-top {display: flex;flex-direction: row;width: 100%;margin-left: 0;height: 237px;overflow: hidden;}
        @media screen and (min-width: 1400px){
            .news-header-container {
                max-width: 1300px;
            }
        }
        .news-card-header-top-body {flex: 7 1;padding-left: 0;display: flex;flex-direction: column;height: 100%;overflow: hidden;}
        .news-card-header-top-image {width: 344px; height: 172px;margin-left: 20px;margin-bottom: 0;padding: 0; transition: transform .6s ease-out;cursor: pointer; background-position: 50%;background-size: cover;}
        .news-card-title {font-size: 20px;line-height: 26px;color: #0f294d;margin-bottom: 8px;line-height: 1.33333;}
        .news-card-info {font-size: 12px;line-height: 1;line-height: 16px;color: #8592a6;margin-bottom: 8px;display: inline-flex;flex-direction: row;align-items: center;}
        .news-card-content {flex: 1 1;margin-bottom: 0;}
        .news-card-content-text {overflow: hidden;width: 100%;line-height: 20px;display: -webkit-inline-box;-webkit-box-orient: vertical;-webkit-line-clamp: 5;max-height: 100px; cursor: pointer;}
        .news-header-container { margin-right: auto;margin-left: auto;padding: 0 32px; display: flex; flex-direction: row;justify-content: space-between;}
        .news-brand { display: flex;flex-direction: row;align-items: center;}
        .news-follow-us { display: inline-flex;padding: 4px 8px;align-items: center;flex-direction: row;}
        .brand-image { max-height: 60px;display: block;width: 124px;height: 30px;border: 0;background-size: cover;}
        .divideBar { display: inline-block; margin: 0 12px;width: 2px;height: 80%;max-height: 28px;background-color: #e5e5e5;}
        .news-header-title { font-size: 18px;color: #333;letter-spacing: 0;white-space: nowrap; font-weight:900;}
        .follow-label { font-size: 14px;line-height: 1.6;color: #8592a6;letter-spacing: 0;font-weight: 400;margin: 0 14px;}
        .follow-icon-list {display: -webkit-box;display: -ms-flexbox;display: flex;list-style: none;}
        .follow-icon {height: 24px;width: 24px;margin-right: 10px;background-size: cover;}

        @media screen and (min-width: 1400px){

            .news-card-container {
                max-width: 1300px;
            }
        }
        .news-card-container { margin-right: auto;margin-left: auto;padding: 0 32px;}
        .new-card-header {margin-bottom: 56px;}
        .news-cards {width: 100%;}
        .news-card-list {width: 100%;display: flex;flex-direction: row;justify-content: space-between;align-items: flex-start;flex-wrap: wrap;}
        .news-card-item {width: 344px; box-sizing: content-box;padding-bottom: 56px;}
        .news-card-item-info {width:100%; padding-bottom: 56px;}
        .news-card-item-image {width: 100%;padding-bottom: 50%;background-size: cover;background-position: 50%;margin-bottom: 16px;transition: transform .6s ease-out;cursor: pointer;}
        .news-card-title { font-size: 20px;line-height: 26px;color: #0f294d;margin-bottom: 8px;line-height: 1.33333;}
        .news-card-item-link {cursor: pointer;text-decoration: none; font-size:20px; font-weight:900;}
        .news-card-item-date {font-size: 12px;line-height: 1;line-height: 16px;color: #8592a6;margin-bottom: 8px;display: inline-flex;flex-direction: row;align-items: center;}
        .news-card-date {display:block}
        .news-card-divide {display: block;width: 2px;height: 10px;margin: 0 8px;background-color: #dadfe6;}
        .news-card-content-text-cursor {cursor:pointer;}
        .news-card-content-text-main {overflow: hidden;width: 100%;line-height: 1.28571em;display: -webkit-inline-box;-webkit-box-orient: vertical;-webkit-line-clamp: 3;max-height: 3.85714em;     text-indent: 0;font-size: 14px; color: #8592a6;}
        .news-card-link {font-weight:900;}
        .news-card-link:hover { color:dodgerblue; border-bottom:1px solid dodgerblue; cursor:pointer;}

    </style>
</head>
<body>
<div class="news-container">
    <header class="news-header">
        <div class="news-header-container">
            <div class="news-brand">
                <a class="brand-image" href="/news/main"><img src="../../../resources/images/logo/logo6.png" style="margin-top:5px;"/></a>
                <div class="divideBar"></div>
                <a class="news-header-title" href="/news/main">뉴스룸</a>
            </div>
            <div class="news-follow-us">
                <h3 class="follow-label">팔로우하기</h3>
                <div class="follow-body">
                    <ul class="follow-icon-list">
                        <li class="follow-icon"><img src="../../../resources/images/news/facebook.PNG" /></li>
                        <li class="follow-icon"><img src="../../../resources/images/news/Instargram.PNG" /></li>
                        <li class="follow-icon"><img src="../../../resources/images/news/naver.PNG" /></li>
                        <li class="follow-icon"><img src="../../../resources/images/news/Youtube.PNG" /></li>
                        <li class="follow-icon"><img src="../../../resources/images/news/WK.PNG" /></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>

    <div style="margin-top:48px";>
        <div class="news-card" id="dataDisplay">
            <div class="news-card-container">
                <div class="new-card-header">
                    <div class="new-card-header-top">
                        <div class="news-card-header-top-body">
                            <h3 class="news-card-title">
                                <span class="news-card-link" data-href="#" id="header-title"></span>
                            </h3>
                            <div class="news-card-info">
                                <span class="news-card-date" id="header-date"></span>
                                <span class="news-card-divide"></span>
                                <span class="news-card-writer" id="header-writer"></span>
                            </div>
                            <div class="news-card-content">
                                <div style="position:relative">
                                    <div class="hiddenNewsNo" style="display: none;" id="hiddenHeader"></div>
                                    <p class="news-card-content-text" id="header-content">
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="news-card-header-top-image" id="header-image"></div>
                    </div>
                    <div class="news-cards">
                        <div class="news-card-list" id="content-body">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
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
    $(function(){
        $.ajax({
            type:'GET',
            url:"latestJson",
            dataType:'json',
        }).
            done(function(response){
                console.log(response);
                var writer = response.writer;
                var title = response.title;
                var content = response.content;
                var createdDate = response.createdDate;
                var mainImage = response.mainImage;
                var newsNo = response.newsNo;

            $("#header-title").text(title);
            $("#header-date").text(createdDate);
            $("#header-writer").text(writer);
            $("#header-content").text(content);
            $("#header-image").css('backgroundImage', "url(\'/resources/images/news/images/" +mainImage + "\')");
            $('#hiddenHeader').text(newsNo);
        }).
        fail(function(){
            alert('조회 중 에러가 발생하였습니다.')
        })

        $.ajax({
            type:'GET',
            url:'list/json',
            dateType:'json'
        })
            .done(function(response){
                $.each(response,function(index,item){
                    $body = $("#content-body");

                    var newscarditem = $("<div class='news-card-item'></div>")
                    var newscarditeminfo = $("<div class='news-card-item-info'></div>")
                    var newscarditemimage = $("<div class='news-card-item-image'></div>").css('backgroundImage', "url(\'/resources/images/news/images/" +item.mainImage + "\')");
                    var newscarditembody = $("<div class='news-card-item-body'></div>")
                    var newscarditemtitle = $("<div class='news-card-item-title'></div>")
                    var newscarditemlink = $("<span class='news-card-item-link'></span>").text(item.title)
                    var newscarditemdate = $("<div class='news-card-item-date'></div>")
                    var newscarddate = $("<span class='news-card-date'></span>").text(item.createdDate)
                    var newscarddivide = $("<span class='news-card-divide'></span>")
                    var newscardwriter = $("<span class='news-card-writer'></span>").text(item.writer)
                    var newscardcontenttextcursor = $("<div class='news-card-content-text-cursor'></div>")
                    var positionrelative = $("<div style='position:relative;'></div>")
                    var newscardcontenttextmain = $("<p class='news-card-content-text-main'></p>").text(item.content)
                    var hidden = $("<div style='display:none;' class='hiddenNewsNo'></div>").text(item.newsNo)

                    $(newscarditeminfo).append(newscarditemimage);
                    $(newscarditem).append(newscarditemimage);
                    $(newscarditemtitle).append(newscarditemlink);
                    $(newscarditembody).append(newscarditemtitle);
                    $(newscarditemdate).append(newscarddate);
                    $(newscarditemdate).append(newscarddivide);
                    $(newscarditemdate).append(newscardwriter);
                    $(newscarditembody).append(newscarditemdate);
                    $(positionrelative).append(newscardcontenttextmain);
                    $(newscardcontenttextcursor).append(positionrelative);
                    $(newscarditembody).append(newscardcontenttextcursor);
                    $(newscarditem).append(newscarditembody);
                    $(newscarditem).append(hidden);
                    $($body).append(newscarditem)
                })
            })

        // div를 클릭하면 이동되는 js
        $(document).on('click',('.news-card-item, .new-card-header-top'),function(){
            var newsNo = $(this).find('.hiddenNewsNo').text();
            var url = '/news/detail?no=' + newsNo;
            location.replace(url);
        })
    })
</script>

</body>
</html>