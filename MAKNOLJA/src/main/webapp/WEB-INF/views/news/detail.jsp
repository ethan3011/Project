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
        @media screen and (min-width: 1400px){  .news-header-container {max-width: 1300px;}  }
        .news-header-container { margin-right: auto;margin-left: auto;padding: 0 32px; display: flex; flex-direction: row;justify-content: space-between;}
        .news-brand { display: flex;flex-direction: row;align-items: center;}
        .news-follow-us { display: inline-flex;padding: 4px 8px;align-items: center;flex-direction: row;}
        .brand-image { max-height: 60px;display: block;width: 124px;height: 30px;border: 0;background-size: cover;}
        .divideBar { display: inline-block; margin: 0 12px;width: 2px;height: 80%;max-height: 28px;background-color: #e5e5e5;}
        .news-header-title { font-size: 18px;color: #333;letter-spacing: 0;white-space: nowrap; font-weight:900;}
        .follow-label { font-size: 14px;line-height: 1.6;color: #8592a6;letter-spacing: 0;font-weight: 400;margin: 0 14px;}
        .follow-icon-list {display: -webkit-box;display: -ms-flexbox;display: flex;list-style: none;}
        .follow-icon { height: 24px;width: 24px;margin-right: 10px;background-size: cover;}
        @media screen and (min-width: 1400px){  .news-main-container {max-width: 1300px;}  }
        .news-main-container { margin-right: auto;margin-left: auto;padding: 0 32px;}
        .news-body-header { width: 100%;text-align: left;margin-bottom: 20px;}
        .news-body-title { font-size: 26px;line-height: 1.28;color: #0f294d;margin-bottom: 6px;font-weight: 900;line-height: 1.3;}
        .news-body-date-write-info {width: 100%;font-size: 14px;line-height: 1;color: #8592a6;display: inline-flex;flex-direction: row;align-items: center;border: none;}
        .news-devide-line {display: block;width: 2px;height: 10px;margin: 0 8px;background-color: #dadfe6;}
        .news-body-content { word-break: break-word;word-wrap: break-word;overflow: hidden;position: relative;background-color: #fff;font-size: 18px;line-height: 28px;color: #455873;box-shadow: 0 0 0.05em rgb(0 0 0 / 10%);line-height: 1.5;}
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
<div style="margin-top:48px">
    <div class="news-main-body">
        <div class="news-main-container">
            <div class="news-body-header">
                <h1 class="news-body-title">
                    ${news.title}
                </h1>
                <div class="news-body-date-write-info">
                    <span class="news-date">${news.createdDate}</span>
                    <span class="news-devide-line"></span>
                    <span class="news-writer">${news.writer}</span>
                </div>
            </div>
            <article  class="news-body-main-box">
                <div class="news-body-content">
                    <textarea class="news-body-data" cols="15" rows="50" readonly>
                    </textarea>
                </div>
            </article >
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

    var test = "<c:out value='${news.content}' />";

    test = test.replace(/다\./g,'다.\n\n');
    test = test.replace(/&lt;/g, '<');
    test = test.replace(/&gt;/g, '>');
    test = test.replace(/&amp;amp;/,'');
    test = test.replace(/&amp;lt;/, '<');
    test = test.replace(/&amp;gt;/, '>');
    test = test.replace(/&#034;/, '"');

    $('.news-body-data').text(test)

</script>

</body>
</html>