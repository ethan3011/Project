<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <script src="https://kit.fontawesome.com/55331e7f28.js" crossorigin="anonymous"></script>

    <!-- Vendor CSS-->
    <link href="../../../resources/form/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link href="../../../resources/form/vendor/select2/select2.min.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../../../resources/form/css/main.css" rel="stylesheet" media="all">
    <title>MAKNOLJA || 호텔정보</title>


<style>
    @media screen and (max-width: 1279px){  .list-search-container {padding: 16px 32px;}  }

    @media (min-width: 992px){.container {width:100%;}  }
    @media (min-width: 800px){.container {width:100%;}  }
    @media (min-width: 768px){.container {max-width: 100%;}  }
    @media (min-width: 576px){.container {width:100%;}  }
    .hotel-list-page {background: #f5f7fa;padding-bottom: 50px;}
    @media screen and (min-width: 1280px){  .short-search {padding: 12px 0;}  }
    @media screen and (min-width: 1280px){  .list-search-container .ul {max-width: 1160px;}  }
    .list-search-container {position: relative;    width: 100%;background: #fff;box-shadow: 0 8px 20px 0 rgb(97 121 157 / 16%);box-sizing: border-box;}
    .list-search-container-dark {background: antiquewhite;}
    @media screen and (max-width: 1279px){  .list-search-container .ul {min-width: 706px;flex-wrap: wrap;}  }
    @media screen and (max-width: 1279px){  .list-search-container .list-destination {width: 50%;border-right: none;margin-bottom: 8px;}  }
    @media screen and (max-width: 1279px){  .list-search-container .list-item {height: 60px !important;}  }
    @media screen and (max-width: 1279px){  .list-search-container .list-calendar {min-width: 320px;width: 50%;margin-bottom: 8px;}  }
    @media screen and (max-width: 1279px){  .list-search-container .list-roomguest {width: 50%;}  }
    @media screen and (max-width: 1279px){  .list-search-container .list-keyword {width: calc(50% - 60px);}  }
    @media screen and (max-width: 1279px){  .list-search-container .list-btn {border-radius: 0 2px 2px 0;}  }
    .list-search-container-dark .list-btn {width: auto;}
    .list-search-container .ul {margin: 0 auto;list-style: none;box-sizing: border-box;}
    .list-search-container-dark ul {display: flex;}
    @media screen and (min-width: 1280px){  .list-search-container .list-destination {width: 228px;border-right: none;}  }
    @media screen and (min-width: 1280px){  .list-search-container .list-item {height: 60px;}  }
    .list-search-container .list-item {display: inline-block;height: 100%;vertical-align: top;box-sizing: border-box;box-sizing: border-box;border: 1px solid #DADFE6;}
    ul, li {margin: 0;padding: 0;list-style: none;}
    @media screen and (min-width: 1280px){  .short-search .list-item {height: 48px !important;}  }
    @media screen and (min-width: 1280px){  .list-search-container .list-destination {width: 228px;border-right: none;}  }
    @media screen and (min-width: 1280px){  .list-search-container .list-item {height: 60px;}  }
    .list-search-container .list-item {display: inline-block;height: 100%;vertical-align: top;box-sizing: border-box;box-sizing: border-box;border: 1px solid #DADFE6;}
    .search-container {position: relative;width: 100%;height: 100%;}
    .search-container .hotel-search-box {position: relative;width: 100%;height: 100%;}
    .short-search .hotel-search-box label {font-size: 12px;top: 4px;left: 16px;}
    .search-container .hotel-search-box label {position: absolute;top: 8px;left: 12px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;max-width: calc(100% - 16px);}
    label {font-size: 14px;color: #8592a6;letter-spacing: 0;text-align: left;line-height: 18px;user-select: none;}
    .short-search .hotel-search-box #hotels-destination {padding: 20px 16px 0px;}
    .search-container .hotel-search-box #hotels-destination {box-sizing: border-box;height: 100%;padding: 28px 12px 0px;width: 100%;border: none;border-bottom: 2px solid transparent;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
    .show-hightlight {font-weight: bold;font-size: 16px;color: #0F294D !important;letter-spacing: 0;text-align: left;line-height: 22px;}
    .show-hightlight-1 {font-weight: bold;font-size: 16px;color: #0F294D !important;letter-spacing: 0;text-align: left;line-height: 22px;}
    @media screen and (min-width: 1280px){  .list-search-container .list-calendar {width: 342px;}  }
    .list-search-container .list-calendar {background: #fff;}
    .calendar-container {background-color: #fff;display: inline-flex;justify-content: space-between;position: relative;width: 100%;height: 100%;}
    @media screen and (min-width: 1280px){  .list-search-container .list-calendar .time-tab {width: calc(50% - 24px);}  }
    .calendar-container .time-tab {width: calc(50% - 30px);height: 100%;}
    .short-search .calendar-container .time-tab .in {top: 4px;left: 16px;font-size: 12px;}
    .calendar-container .time-tab .in {position: absolute;top: 8px;left: 12px;}
    .short-search .calendar-container .time-tab .focus-input {padding: 20px 16px 0px;}
    .calendar-container .nights {position: absolute;font-size: 14px;color: #0F294D;line-height: 18px;top: 50%;left: 50%;transform: translate(-50%, -50%);z-index: 3;user-select: none;}
    @media screen and (min-width: 1280px){  .list-search-container .list-calendar .time-tab {width: calc(50% - 24px);}  }
    .short-search .calendar-container .time-tab .out {top: 4px;right: 16px;font-size: 12px;}
    .calendar-container .time-tab .out {position: absolute;top: 8px;right: 12px;}
    .calendar-container .time-tab .out-time {text-align: right;}
    .calendar-container .time-tab .focus-input {width: 100%;height: 100%;padding: 28px 12px 0;border: none;border-bottom: 2px solid transparent;}
    @media screen and (min-width: 1280px){  .list-search-container .list-roomguest {width: 212px;border-left: none;}  }
    .room-guest-container {width: 100%;height: 100%;min-width: 160px;user-select: none;position: relative;outline: none;}
    .short-search .room-guest-container .room-guest {padding: 4px 16px;}
    .room-guest-container .room-guest {cursor: pointer;background: #fff;width: 100%;height: 100%;position: relative;padding: 8px 12px;}
    .room-guest-container * {box-sizing: border-box;}
    .short-search .room-guest-container label {font-size: 14px;}
    .room-guest-container .room-guest label {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;display: block;}
    .short-search .room-guest-container .info {margin-top: 0;}
    .room-guest-container .room-guest .info {margin-top: 4px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
    .room-guest-container .room-guest .icon-arrow {position: absolute;top: 50%;transform: translateY(-50%);right: 10px;font-size: 16px;}
    dfn, em, i {font-weight: 400;font-style: normal;}
    .u-icon-ic_new_dropdown_line:before {content: "\e8c5";}
    .room-guest-container .bottom-line {width: 100%;height: 2px;background: #2681FF;position: relative;top: -1px;left: 0px;z-index: 9;}
    .room-guest-container .choice {position: absolute;top: calc(100% + 1px);z-index: 901;left: -1px;background: #fff;width: 300px;padding: 16px;border: 1px solid #ddd;cursor: pointer;}
    .room-guest-container .child-kid {margin-bottom: 15px;display: flex;justify-content: space-between;align-items: center;}
    .room-guest-container .child-kid label {color: #0f294d;font-size: 14px;}
    .room-guest-container .actions {display: flex;align-items: center;}
    .room-guest-container .actions .icon-btn {font-size: 24px;display: inline-flex;align-items: center;justify-content: center;background: #fff;color: #2681FF;cursor: pointer;}
    .u-icon-ic_bestir_minus:before {content: "\e6c4";}
    .room-guest-container .actions .count {font-size: 14px;color: #0f294d;width: 36px;text-align: center;}
    .u-icon-ic_bestir_plus:before {content: "\e6cb";}
    .room-guest-container .done {text-align: right;margin-top: 18px;}
    .room-guest-container .done button {font-size: 14px;min-width: 72px;line-height: 34px;height: 34px;}
    .u-btn-primary {background: #287dfa !important;}
    .u-btn {font-size: 16px;display: inline-block;height: 40px;padding: 0 16px;box-sizing: border-box;line-height: 40px;color: #fff;text-align: center;vertical-align: middle;white-space: nowrap;border-radius: 2px;cursor: pointer;border: 0 none;*display: inline;*zoom: 1;background: none;}
    .input-icon {font-size: 24px;color: #808080;position: absolute;line-height: 50px;right: 0;top: 0;width: 20px; background: none; text-align: center;cursor: pointer;}
    .input--style-1-small { padding:0;}
    .input--style-1 {padding:0;}
    .input-icon {line-height:15px;}
    .dropdown-select { width:300px; display: none;position: absolute;border-radius: 15px !important;left: 0;right: 0;top: -webkit-calc(100% + 2px);top: -moz-calc(100% + 2px);top: calc(100% + 2px);background: #fff;z-index: 999;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;-webkit-box-shadow: 0px 8px 20px 0px rgb(0 0 0 / 15%);-moz-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);box-shadow: 0px 8px 20px 0px rgb(0 0 0 / 15%);padding: 30px 45px;padding-right: 25px;}
    .dropdown-select ul { display:contents !important;}
    .list-room {display: flex !important; flex-direction:column !important;}
    @media screen and (min-width: 1280px) {  .list-search-container .list-keyword {width: 277px;}  }
    .list-search-container-dark .list-keyword {flex-grow: 1;width: unset !important;}
    .list-search-container .list-keyword {border-left: none;border-bottom: none;border-right: none;}
    .search-keyword-container {width: 100%;height: 100%;background: #fff;position: relative;}
    .short-search .search-keyword-container label {top: 4px;left: 16px;font-size: 12px;}
    .search-keyword-container label {position: absolute;top: 8px;left: 12px;font-size: 14px;color: #8592A6;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;max-width: calc(100% - 12px);}
    .search-keyword-container #keyword:focus {border-bottom: 2px solid #2681FF;}
    .short-search .list-keyword #keyword {padding: 20px 16px 0;}
    .list-search-container .list-keyword #keyword {border-bottom: 1px solid #DADFE6;}
    .search-keyword-container #keyword {box-sizing: border-box;height: 100%;padding: 30px 12px 0;width: 100%;border: none;font-weight: 600;font-size: 14px;color: #0f294d;letter-spacing: 0;text-align: left;line-height: 22px;border-bottom: 2px solid transparent;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
    .drop-result-list {width: 640px;box-shadow: 0 8px 20px 0 rgb(0 41 99 / 20%);background: #fff;position: absolute;top: 100%;z-index: 99;border: 1px solid #dadfe6;max-height: 480px;overflow-y: auto;}
    .drop-result-list .not_found {padding: 8px 8px 8px 16px;font-size: 14px;color: #ee3b28;letter-spacing: 0;line-height: 18px;}
    body, h1, h2, h3, h4, h5, h6, p {margin: 0;}
    @media screen and (min-width: 1280px) {.list-search-container .list-btn {border-radius: 0 2px 2px 0;}}
    .list-search-container-dark .list-btn {width: auto;}
    .list-search-container .list-btn {border: none;width: 60px;overflow: hidden;}
    .list-search-container-dark .search-btn-wrap {font-size: 18px;font-weight: 700;color: #fff;letter-spacing: 0;text-align: center;line-height: 26px;box-sizing: border-box;padding: 0 24px;}
    .search-btn-wrap {background: #2681ff;width: 100%;height: 100%;display: inline-flex;align-items: center;justify-content: center;color: #fff;font-size: 28px;border: none;cursor: pointer;}
    .search-btn-wrap-text {white-space: nowrap;}
    .hotel-list-page .main-container {margin: 0 auto; margin-top: 16px; max-width: 1160px; position: relative;padding: 0;}
    .hotel-list-page .main-content {display: flex;justify-content: flex-end;}
    .hotel-list-page .main-container .filter-mask {display: none;width: 100%;height: 100%;top: 0;position: absolute;z-index: 3;background-color: rgba(0,0,0,0.5);left: 0;}
    .hotel-list-page .main-container .filter-wrap {width: 278px;flex-shrink: 0;margin-right: 16px;z-index: 4;}
    @media screen and (min-width: 769px){ .filter-wrap {display: block !important;}}
    .mapfilter-wrap {background: #fff;margin-bottom: 8px;}
    .mapfilter-wrap .mapfilter-container {width: 100%;height: 117px;cursor: pointer;position: relative;}
    .mapfilter-wrap .bg-map {background-image: url(data:image/png;base64,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);background-repeat: no-repeat;background-size: cover;background-position: center center;}
    .mapfilter-wrap .mapfilter-container .map-item {text-align: center;position: absolute;top: 50%;left: 0;right: 0;transform: translateY(-60%);}
    .mapfilter-wrap .mapfilter-container .map_location {font-size: 46px;color: red;opacity: 0.7;width: 48px;height: 48px;}
    .mapfilter-wrap .mapfilter-container .map-txt-new {font-size: 16px;color: #0F294D;line-height: 16px;margin-top: 8px;font-weight: 700;}
    .filter-wrap>.popularFilter-wrap.versionA {display: none;}
    .popularFilter-wrap {background: #fff;position: relative;display: flex;padding: 0 24px;}
    .popularFilter-wrap .popularFilter-container {border-bottom: 1px solid #DADFE6;width: 230px;padding: 24px 0;}
    .popularFilter-wrap .popularFilter-title {font-size: 14px;color: #0F294D;line-height: 18px;margin-bottom: 16px;display: flex;justify-content: space-between;}
    .popularFilter-wrap .popularFilter-title p {font-weight: bold;}
    .m-checkbox_item {display: inline-block;cursor: pointer;padding-left: 28px;margin-right: 40px;padding-bottom: 10px;position: relative;}
    ul, li {margin: 0;padding: 0;list-style: none;}
    .m-checkbox_item .u-icon {position: absolute;font-size: 16px;left: 0;line-height: 18px;}
    .m-checkbox_item .checkboxTxt {font-size: 14px;line-height: 18px;}
    .checkboxTxt {color: #0F294D;}
    .starrating-wrap {background: #fff;position: relative;display: flex;padding: 0 24px;}
    .starrating-wrap .starrating-container {border-bottom: 1px solid #DADFE6;width: 230px;padding: 24px 0;}
    .starrating-wrap .starrating-container .starrating-title {font-size: 14px;color: #0F294D;line-height: 18px;margin-bottom: 16px;display: flex;justify-content: space-between;}
    .starrating-wrap .starrating-container .starrating-title p .ic_question {margin-left: 5px;color: #acb4bf;}
    .starrating-wrap .starrating-container .starrating-content .sr-ul .sr-li {width: 100%;height: 26px;}
    .starrating-wrap .starrating-container .starrating-content .sr-ul .sr-checkbox {padding-right: 10px;width: 12px;height: 12px;font-size: 16px; cursor:pointer;}
    .starrating-wrap .starrating-container .starrating-content .sr-ul .sr-li .sr-level {font-size: 16px;line-height: 14px;margin: 8px 0;color: #ffc03a; cursor:pointer;}
    .more-star-repeat {display: inline-flex;align-items: center;margin-right: 8px;}
    .more-star-repeat .own-star {font-size: 16px;line-height: 1;}
    @media screen and (min-width: 769px){  .main-content .long-list {width: calc(100% - 294px);}  }
    .long-list {width: 100%;list-style: none;}
    .long-list>li:not(:last-child) {margin-bottom: 4px;}
    .long-list .long-list-head {display: flex;}
    .long-list .long-list-head .filterWrapper {display: flex;}
    .current-filter-wrap {width: 100%;box-sizing: border-box;position: relative;padding: 12px 0px 4px 0px;display: flex;flex-wrap: wrap;flex: 1;background: transparent;align-items: center;border-bottom: none;}
    .current-filter-wrap .filter-title {display: inline-block;margin: 0 16px 8px 0;}
    .clearfix:before, .clearfix:after {content: " ";display: table;}
    .clearfix:after {clear: both;}
    .current-filter-wrap .filter-title h3 {float: left;font-size: 16px;color: #0F294D;line-height: 22px;}
    .long-list .long-list-head h3 {font-size: 16px;}
    .long-list .long-list-head .filterWrapper .m-priceDesc {/*border-bottom: 1px solid #DADFE6;*/padding-top: 17px;}
    .m-priceDesc {max-width: 280px;text-align: right;color: #455873;font-size: 12px;line-height: 18px;padding-top: 4px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .m-priceDesc_text {cursor: pointer;}
    .tab-sort-placeholder {height: 40px;margin-bottom: 8px;}
    .tab-sort-placeholder .tab-sort-wrap .tab-sort-inner-wrap {height: 40px;}
    .tab-sort-wrap .tab-sort-inner-wrap {position: relative;cursor: pointer;display: flex;height: 50px;align-items: center;}
    .tab-sort-placeholder .tab-sort-content {border: 1px solid #f0f2f5;}
    .tab-sort-content {position: relative;display: flex;flex: 1;align-items: center;height: 100%;border-radius: 2px;background-color: #fff;}
    .tab-sort-placeholder .tab-sort-wrap .tab-item.active {background-color: #287dfa;}
    .tab-sort-wrap .tab-item.active {border-bottom: none;}
    .tab-sort-wrap .tab-item:first-child {margin-left: 0px;}
    .tab-sort-wrap .tab-item {text-align: center;display: inline-flex;align-items: center;justify-content: center;position: relative;height: 100%;box-sizing: border-box;padding: 0 8px;flex-grow: 1;background-color: #fff;margin-left: 1px;}
    .tab-sort-placeholder .tab-sort-wrap .tab-item.active>span {color: #fff;}
    .tab-sort-placeholder .tab-sort-wrap .tab-item>span {font-size: 12px;}
    .tab-sort-wrap .tab-item.active>span {color: #287dfa;}
    .tab-sort-wrap .tab-item>span {font-size: 14px;color: #0f294d;letter-spacing: 0;text-align: center;line-height: 18px;}
    .font-bold {font-weight: 900;}
    .tab-sort-placeholder .tab-sort-wrap .tab-item:not(:last-child):after {width: 1px;height: 24px;}
    .tab-sort-wrap .tab-item:not(:last-child):after {content: "";width: 2px;height: 1em;background: #dadfe6;position: absolute;top: 50%;transform: translateY(-50%);right: -1px;z-index: 1;}
    .long-list .long-list-head article {flex: 1;}
    .long-list .m-announcement {margin: 4px 0;}
    .tcb-notification-bg-orange {background: #fff7eb;}
    .tcb-notification {background: #fff;font-size: 14px;line-height: 18px;}
    .tcb-notification-list {list-style: none;padding: 10px 24px;margin: 0 auto;max-width: 1160px;}
    .tcb-notification-item {padding: 6px 0;}
    .tcb-notification-tit {color: #ff6f00;margin-right: 5px;}
    .tcb-notification-cnt {color: #0f294d;}
    .tcb-notification-link {margin-left: 5px;color: #287dfa;text-decoration: none;}
    a {color: #333;text-decoration: none;cursor: pointer;}
    .with-decorator-wrap {width: 100%;}
    .compressmeta-hotel-wrap {background: #fff;}
    .compressmeta-hotel-wrap .hotel-info {display: flex;padding: 24px;}
    .compressmeta-hotel-wrap .hotel-info .lf {width: 192px;height: 172px;display: inline-flex;margin-right: 16px;flex-shrink: 0;position: relative;}
    .m-lazyImg {position: relative;display: inline-block;overflow: hidden;}
    img {border: 0 none;vertical-align: middle;}
    .compressmeta-hotel-wrap .hotel-info .rt {display: flex;flex-direction: column;flex-grow: 1;width: calc(100% - 208px);justify-content: space-between;}
    .compressmeta-hotel-wrap .hotel-info .rt-head {display: flex;justify-content: space-between;}
    .compressmeta-hotel-wrap .hotel-info .rt-head-title {margin-right: 16px;}
    .m-hotelTag .popular {background: #FEEEEC;}
    .m-hotelTag .m-hotelTag_list {display: inline-flex;margin-right: 8px;border-radius: 1px;padding: 0 4px;font-size: 12px;}
    .m-hotelTag_list {margin: 0 8px 8px 0;max-width: 365px;}
    .u-icon-ic_new_hot:before { content: "\f06d";font-family: 'Font Awesome 5 Free';font-weight: 900;}
    .m-hotelTag .popular .m-hotelTag_list_content, .m-hotelTag .popular .m-hotelTag_list_icon {color: #f5594a;}
    .m-hotelTag .m-hotelTag_list .isHover {cursor: default;}
    .m-hotelTag .m-hotelTag_list_content {line-height: 18px;word-break: break-word;}
    .list-card-title {font-size: 18px;color: #0F294D;line-height: 24px;margin-bottom: 4px;cursor: pointer;}
    .list-card-title .name {margin-right: 8px;word-wrap: break-word;}
    .u-icon-ic_new_star:before {content: "\f005";font-family: "Font Awesome 5 Free";font-weight: 900; color:gold;}
    .list-card-transport .transport {color: #455873;line-height: 18px;font-size: 14px;margin-bottom: 8px;}
    .list-card-transport .transport .position {padding-right: 8px;}
    .list-card-transport .transport .map {color: #287DFA;cursor: pointer;font-size: 14px;font-weight: 700;line-height: 18px;letter-spacing: 0px;width: 64px;white-space: nowrap;}
    .list-encourage-review {color: #4978ce;line-height: 18px;display: flex;align-items: flex-start;}
    .list-encourage-review .user {width: 18px;height: 18px;font-size: 18px;display: inline-flex;justify-content: center;border-radius: 100%;background: rgba(73,120,206,0.1);margin-right: 4px;overflow: hidden;flex-shrink: 0;}
    .list-encourage-review .user .occupant {position: relative;top: 3px;color: rgba(73,120,206,0.5);}
    .u-icon-ic_new_fa_occupant:before { content: "\f007" !important;font-family: 'Font Awesome 5 Free';font-weight: 900;}
    .list-encourage-review .review-rt {display: inline-flex;flex-wrap: wrap;}
    .list-encourage-review .review-item {display: inline-block;margin: 0 5px 8px 0;padding: 0 2px;background: none;position: relative;}
    .list-encourage-review .review-item:before {content: '';position: absolute;bottom: 0;left: -4px;width: 0;height: 0;border: none;}
    .compressmeta-hotel-wrap .hotel-info .rt-head-reviewandstatus {flex-shrink: 0;}
    .list-card-comment {margin-bottom: 16px;}
    .list-card-comment .me {display: flex;align-items: center;justify-content: flex-end;margin-bottom: 8px;}
    .list-card-comment .me .describe {text-align: right;}
    .list-card-comment .me .describe .outstanding {font-size: 14px;color: #4978CE;line-height: 18px;white-space: nowrap;}
    .list-card-comment .me .describe .count {white-space: nowrap;}
    .list-card-comment .me .describe .count a {font-size: 12px;color: #8592A6;line-height: 18px;}
    .list-card-comment .me .score {background: #4978CE;border-radius: 2px;padding: 4px 8px;margin-left: 8px;cursor: pointer;}
    .list-card-comment .me .score .real {font-size: 14px;color: #FFFFFF;}
    .list-card-comment .me .score .real, .list-card-comment .me .score .full {line-height: 18px;}
    .list-card-comment .me .score .full {font-size: 12px;color: rgba(255,255,255,0.6);}
    .compressmeta-hotel-wrap .room-type {display: flex;padding: 12px 12px 12px 0;margin-right: -12px;margin-bottom: -12px;background: linear-gradient(90deg, rgba(245,247,250,0) 0%, rgba(245,247,250,0.7) 49%, rgba(245,247,250,0.8) 100%);border-radius: 3px;flex: 1;box-sizing: border-box;}
    .compressmeta-hotel-wrap .room-type .room-panel-roominfo {flex: 1;margin-right: 16px;overflow: hidden;}
    .compressmeta-hotel-wrap .room-type .room-panel-roominfo-middle {display: flex;flex-grow: 1;align-items: center;color: #0f294d;}
    .compressmeta-hotel-wrap .room-type .room-panel-roominfo-name {font-size: 12px;line-height: 16px;font-weight: bold;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;}
    .compressmeta-hotel-wrap .room-type .room-panel-roominfo-people, .compressmeta-hotel-wrap .room-type .room-panel-roominfo-bed {margin-left: 4px;font-size: 14px;line-height: 18px;align-items: center;flex-shrink: 0;}
    .u-icon-ic_new_twobeds:before {content: "\f236" !important;font-family: 'Font Awesome 5 Pro';font-weight: 900;}
    .compressmeta-hotel-wrap .room-type .list-card-promotion {display: inline-block;}
    .compressmeta-hotel-wrap .room-type .room-panel-roominfo .list-card-promotion .des-with-icon:last-child {margin-right: 0;}
    .compressmeta-hotel-wrap .room-type .room-panel-roominfo .list-card-promotion .des-with-icon {margin-bottom: 0px;margin-top: 6px;padding: 0 6px 0 3px;margin-right: 6px;}
    .list-card-promotion .des-with-icon.orange {background-color: #fff0e5;}
    .des-with-icon.orange, .des-with-icon .orange {color: #FF6F00;}
    .des-with-icon {display: inline-block;color: #455873;vertical-align: middle;margin-bottom: 8px;}
    .list-card-promotion .tripcoins-icon-bg {font-size: 16px;height: 21px;}
    .list-card-promotion .color-icon-bg {margin-right: 4px;display: inline-flex;align-items: center;vertical-align: middle;}
    .list-card-promotion .normal-bg {font-size: 14px !important;}
    .smartcoloricon {font-family: 'smartcolor' !important;font-size: 16px;font-style: normal;-webkit-font-smoothing: antialiased;-moz-osx-font-smoothing: grayscale;}
    .color-icon-ic_new_trip_coins .path1:before {content: "\f185";color: #ffb400;font-family: 'Font Awesome 5 Free';}
    /*
    .color-icon-ic_new_trip_coins .path2:before {content: "\e901";margin-left: -1em;color: #ffcd2e;}
    .color-icon-ic_new_trip_coins .path3:before {content: "\e902";margin-left: -1em;color: #fff;}*/
    .des-with-icon.orange, .des-with-icon .orange {color: #FF6F00;}
    .des-with-icon .desc-text {vertical-align: middle;line-height: 18px;}
    .encourageMsg {font-size: 12px;line-height: 18px;color: #455873;margin-top: 6px;}
    .compressmeta-hotel-wrap .room-type .room-panel-rt {max-width: 55%;align-self: flex-end;text-align: right;}
    .compressmeta-hotel-wrap .room-type .room-panel-promotion {text-align: right;vertical-align: top;}
    .compressmeta-hotel-wrap .room-type .room-panel-price-btn {display: flex;align-items: center;flex-wrap: wrap;justify-content: flex-end;margin-top: -6px;}
    .compressmeta-hotel-wrap .room-type .room-panel-price {display: flex;flex-direction: column;flex-wrap: nowrap;align-items: flex-end;flex: 1;margin-top: 8px;}
    .compressmeta-hotel-wrap .room-type .room-panel-price .whole {display: flex;text-align: right;}
    .compressmeta-hotel-wrap .room-type .whole {display: flex;flex-wrap: wrap;align-items: center;justify-content: flex-end;}
    .compressmeta-hotel-wrap .room-type .room-panel-price .real {line-height: 24px;cursor: pointer;white-space: nowrap;font-size: 24px;color: #287dfa;text-align: right;margin-left: 4px;}
    .compressmeta-hotel-wrap .room-type .room-panel-price .real>span {border-bottom: 2px dotted;}
    .compressmeta-hotel-wrap .room-type .btn-bottom {margin-left: 8px;font-size: 0;margin-top: 6px;}
    .compressmeta-hotel-wrap .room-type .next {background-color: #ff9500;overflow: hidden;display: inline-block;padding: 8px 16px;text-align: center;border-radius: 2px;font-size: 16px;color: #FFFFFF;text-align: center;line-height: 22px;box-sizing: border-box;cursor: pointer;min-width: 75px;white-space: nowrap;}
    .u-icon-ic_new_more_line1:before {content: "\f054";font-family: 'Font Awesome 5 Free';font-weight: 900;}
    .u-icon-ic_new_question_line:before { content: "\f059";font-family: 'Font Awesome 5 Free';font-weight: 900;}
    .u-icon-ic_new_map:before {content: "\f3c5"; font-family:"Font Awesome 5 Free"; font-weight:900;}
    .u-icon-checkbox:before {color: #ccc;content: "\f0c8"; font-family: "Font Awesome 5 Free"}
    .starrating-wrap .starrating-container .starrating-content .sr-ul .sr-checked .u-icon-checkbox:before {color: #287dfa;content: "\f14a";}
    .starrating-wrap .starrating-container .starrating-content .sr-ul .sr-li {width: 100%;height: 26px;}
    .starrating-wrap .starrating-container .starrating-content .sr-ul .sr-checked span {color: #287dfa;}
    .starrating-wrap .starrating-container .starrating-content .sr-ul .sr-checked .u-icon-ic_new_diamond, .starrating-wrap .starrating-container .starrating-content .sr-ul .sr-checked .u-icon-ic_new_star {color: #287dfa;}
    .area-search-box {background: #fff;position: absolute;top: 103%;left: -1px;z-index: 99;border: 1px solid #dadfe6;max-height: 480px;width: 653px;display: none;border-radius: 15px !important;}
    .search-box-title {font-size: 24px;font-weight: 700;text-align: center;text-transform: uppercase;color: black;background-color: #f7f7fb;padding-left: 8px;border-top-left-radius: 15px;border-top-right-radius: 15px;}
    .area-search-box .search-area ul {padding: 8px;list-style: none;display: flex;flex-wrap: wrap;align-items: center;font-weight: 700 px;}
    .area-search-box .search-area ul li {width: 20%;cursor: pointer;height: 64px;display: flex;align-items: center;overflow: hidden;font-weight: 700;justify-content: center;}
    .hotel-detail-main {padding-left: 24px;padding-right: 24px;max-width: 1208px; display: flex;flex-direction: column;background-color: #f5f7fa;margin: 0 auto;box-sizing: border-box;}
    .hotel-detail-main .hotel-detail_head {position: relative;background-color: #fff;}
    .hotel-detail_head {padding: 16px 24px;margin-bottom: 8px; margin-top:10px;}
    .detail-headline_container {display: flex;padding-bottom: 8px;}
    .detail-headline_base {max-width: 57%;flex: auto;}
    .detail-headline_base .hotelTag-title {margin-top: -6px;}
    .detail-headline_title {width: 100%;margin-bottom: 6px;}
    .detail-headline_title .hotelTag-title_h1 {line-height: 28px;}
    .detail-headline_title .detail-headline_name {font-size: 20px;color: #0F294D;display: inline;margin-right: 8px;line-height: 26px; font-weight:900;}
    .detail-headline_title .badge-thumb-5 {background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAalJREFUOBF9UstKA0EQrN28FV8QjIIHFUQQ/APPivkTET34U54Fk38QRJEcFPSqUUFixBgPyY7V2z2zq0gGdrunu6umumci1zluAa4J5wBE/MRmxm81r6kQi9COM7AlhUQ4hDBYcYScS1y/EteMw8m+OPEVBpheBeIyIT7u0RqiAluRAcSktQlQXQbWj4CNE4Db0EaqjkXEKIEPCFc6C9rSPLB2ABQqwPcj41+SzZYcwtpiUBYUUoJIFnB5QQFPpywWgOHFmtKihYCZLWB2G3jmpTR2gdpKSKG+T9KaogT4dgl8PqSEVGDU5TmgvgO8nLFCGs6txl5uQ7d7zp/K4AxMS2I9jofMjX4D8rvRABjcs0b7MQVCqIFg86C8/37BM6cY0fln15gvmuT3r0hQ0goeqi340ycBfa5/R68QFEfu+tDBjRnjLOTV9W74gBaBSp2Ff4YpwFe2UF4iAX1C7B3QG3aBjw6TvL7+LTDq/UNA6dVNgrPZ2ztgoETWYoOs9GO+wirVyEpnq1emAyZEWraZx5TR1gQlicR0uiQRiXKSfBSqVmKGVNv6ARSQnOH8j0j3AAAAAElFTkSuQmCC) no-repeat center;background-size: 16px 16px;}
    .detail-headline_title .badge-thumb {display: inline-block;width: 16px;height: 16px;margin-right: 8px;position: relative;line-height: 20px;vertical-align: sub;}
    .detail-headline_position {display: inline-block;margin-bottom: 6px;align-items: baseline;}
    .detail-headline_position_icon {color: #acb4bf;margin-right: 4px;font-size: 14px;position: absolute;}
    .u-icon-locate:before {content: "\f3c5";font-family: 'FontAwesome';}
    .detail-headline_position_info {font-size: 14px;color: #455873;letter-spacing: 0;text-align: left;line-height: 18px;margin-left: 2px;padding-left: 14px;display: inline-block;}
    .detail-headline_position_text {margin-right: 4px; font-weight:600;}
    .detail-headline_position_showmore {font-size: 14px;color: #287DFA;font-weight: bold;cursor: pointer;word-break: keep-all;display: inline-block;}
    .detail-headline_desc {display: flex;align-items: baseline;}
    .detail-headline_desc_icon {color: #acb4bf;margin-right: 4px;font-size: 14px;}
    .u-icon-ic_group_company:before {content: "\f1ad";font-family: 'FontAwesome';}
    .detail-headline_desc_text {font-size: 14px;color: #455873;letter-spacing: 0;text-align: left;line-height: 18px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;flex: 0 1 auto;margin-right: 2px; font-weight:600;}
    .detail-headline_desc_showmore {font-size: 14px;color: #287DFA;letter-spacing: 0;text-align: right;line-height: 18px;flex: none;font-weight: 700;cursor: pointer;}
    .detail-headline-price_container {flex: auto;display: flex;flex-direction: row;align-items: center;justify-content: flex-end;}
    .detail-headline-price_container .detail-headline-price_leftside {display: flex;flex-direction: column;padding-right: 8px;align-items: flex-end;}
    .detail-headline-price_container .detail-headline-price_price_box {display: flex;align-items: center;margin-bottom: 0px;line-height: initial;}
    .detail-headline-price_container .detail-headline-price_price_box .detail-headline-price_delete_price {font-size: 14px;color: #455873;margin-right: 8px;}
    s {text-decoration: line-through;}
    .detail-headline-price_container .detail-headline-price_price_box .detail-headline-price_price {font-weight: bold;font-size: 24px;color: #287DFA;text-align: right;}
    .detail-headline-price_container .detail-headline-price_select {padding: 8px 16px;background: #287DFA;border-radius: 2px;display: flex;justify-content: center;align-items: center;color: #fff;font-size: 16px;font-weight: bold;cursor: pointer;white-space: nowrap;}
    .detail-headcontext {display: flex;}
    @media screen and (max-width: 1159px){  .detail-headalbum_container {max-width: 100%;padding-bottom: 40%;}  }
    .detail-headalbum_container {display: flex;width: 100%;position: relative;max-width: 57%;padding-bottom: 25%;height: 0;}
    .detail-headalbum_box {position: absolute;top: 0;bottom: 0;right: 0;left: 0;}
    .detail-headalbum_bigpic .m-lazyImg {position: absolute;left: 0;right: 0;top: 0;bottom: 0;}
    .detail-headalbum_childbox {display: inline-block;width: 40.2%;height: 100%; position:absolute;}
    .detail-headalbum_bigpic {position: relative;width: 59.8%;height: 100%;display: inline-block;cursor: pointer;}
    .detail-headalbum_childbox .detail-headalbum_item {background-size: cover;cursor: pointer;width: 50%;height: 33.3%;float: left;padding-left: 8px;padding-bottom: 8px;box-sizing: border-box;}
    .detail-headalbum_childbox .detail-headalbum_item:nth-child(5) {padding-bottom: 0;}
    .detail-headalbum_childbox .detail-headalbum_item:nth-child(6) {padding-bottom: 0;}
    .detail-headcontext_side {max-width: 43%;flex: auto;padding: 0 0 0 16px;position: relative;}
    .detail-headreview_container {display: flex;align-items: center;padding-bottom: 12px;border-bottom: 1px solid #F0F2F5;margin-bottom: 12px;max-width: 460px;justify-content: flex-end;}
    .detail-headreview_container_left {left: 10px;}
    .detail-headreview_container_left, .detail-headreview_container_right {color: #0F294D;cursor: pointer;position: absolute;top: 8px;font-size: 18px;padding: 28px 0;}
    .u-icon-back:before {content: "\f053";font-family: 'Font Awesome 5 Free';font-weight: 900;}
    .detail-headreview_container_tab {width: 98%;height: 94px;overflow: hidden;}
    .detail-headreview_container_tabcontainer {width: 330%;height: 100%;display: flex;position: relative;}
    .detail-headreview_container_scorecontainer {display: flex;flex-wrap: wrap;justify-content: space-between;width: 100%;}
    .detail-headreview_container_scorecontainer .cate_item {width: 47%;padding: 4px;}
    .newScoreBar {color: #4978CE;cursor: pointer;}
    .newScoreBar .clearfix-score {display: flex;justify-content: space-between;padding-bottom: 4px;}
    .newScoreBar .title {float: left;font-weight: 700;white-space: nowrap;text-overflow: ellipsis;overflow: hidden;}
    .newScoreBar .score {float: right;font-weight: 700;margin-left: 8px;}
    .newScoreBar .show {position: relative;display: inline-block;width: 100%;height: 8px;top: -10px;background: #DADFE6;margin-top: 8px;border-radius: 0px !important;}
    .newScoreBar .show .blue {position: absolute;top: 0;left: 0;height: 8px;background: #4978CE;border-radius: 0px !important;}
    .detail-headreview_info {display: flex;justify-content: flex-start;align-items: center;width: 100%; height:108px;}
    .detail-headreview_sum {width: calc(55% - 15px);display: flex;flex-direction: column;}
    .detail-headreview_score {margin-bottom: 4px;}
    .detail-headreview_score_box {background-color: #4978ce;padding: 3px 8px;border-radius: 2px;font-size: 18px;line-height: 18px;color: rgba(255,255,255,0.6);font-weight: 700;}
    .detail-headreview_score_value {color: #fff;font-size: 20px;margin-right: 2px;}
    .detail-headreview_score_text {color: #4978ce;font-size: 20px;margin-left: 8px;font-weight: 700;position: relative;top: 1px;}
    .detail-headreview_all {margin-bottom: 4px;font-size: 14px;color: #287dfa;font-weight: 700;cursor: pointer;white-space: nowrap;}
    .detail-headreview_box {position: relative;width: 45%;}
    .detail-headreview_content {background: #F5F9FF;height: 54px;max-width: 198px;margin-left: 20px;position: relative;overflow: hidden;outline: 15px solid #F5F9FF;}
    .detail-headreview_content::before {float: left;width: 100px;content: '';height: 54px;}
    .detail-headreview_content_text {float: right;margin-left: -100px;width: 100%;overflow-wrap: break-word;line-height: 18px;font-size: 14px;color: #000031;letter-spacing: 0;}
    .detail-headreview_content::after {float: right;content: "...";height: 18px;line-height: 18px;width: 30px;position: relative;left: calc(100% - 100px);top: -18px;text-align: right;background: -webkit-gradient(linear, left top, right top, from(rgba(255,255,255,0)), to(#F5F9FF), color-stop(50%, #F5F9FF));background: -moz-linear-gradient(to right, rgba(255,255,255,0), #F5F9FF 50%, #F5F9FF);background: -o-linear-gradient(to right, rgba(255,255,255,0), #F5F9FF 50%, #F5F9FF);background: -ms-linear-gradient(to right, rgba(255,255,255,0), #F5F9FF 50%, #F5F9FF);background: linear-gradient(to right, rgba(255,255,255,0), #F5F9FF 50%, #F5F9FF);}
    .detail-headreview_bubble {padding: 8px;transform: rotate(45deg);background-color: #f5f9ff;position: absolute;left: -4px;top: 20px;}
    .detail-headreview_container_right {right: -20px;}
    .detail-headtraffic_container {display: flex;justify-content: space-between;padding-bottom: 12px;border-bottom: 1px solid #F0F2F5;margin-bottom: 12px;max-width: 460px;}
    .detail-headtraffic_map_icon {background: url(../resources/images/hotel/map-1.PNG) center/cover;max-width: 80px;height: 80px;width: 24%;cursor: pointer;}
    .detail-headtraffic_map_side {max-width: 364px;width: 80%;display: flex;flex-direction: column;}
    .detail-headtraffic_traffic_list {display: flex;justify-content: flex-start;padding-bottom: 8px;}
    .detail-headtraffic_traffic_list .item:last-child {margin-right: 0;}
    .detail-headtraffic_traffic_list .item {margin-right: 30px;}
    .detail-headtraffic_traffic_list .item_icon {font-size: 20px;cursor: default;line-height: 16px;}
    .detail-headtraffic_traffic_list .item_icon i {vertical-align: bottom;}
    .u-icon-flight:before {content: "\f5b0";font-family: 'FontAwesome';}
    .detail-headtraffic_traffic_list .item_distance {font-size: 14px;color: #0F294D;letter-spacing: 0;text-align: left;line-height: 18px;margin-left: 4px;border-bottom: 1px dotted #0F294D;}
    .detail-headtraffic_traffic_desc {overflow: hidden;height: 44px;margin-bottom: 4px;position: relative;}
    .detail-headtraffic_traffic_desc_content {font-size: 14px;color: #8592A6;line-height: 22px;width: 100%;overflow: hidden;padding-bottom: 6px;}
    .detail-headtraffic_traffic_desc_showmore {font-size: 14px;color: #287DFA;line-height: 18px;cursor: pointer;font-weight: 700;position: absolute;bottom: 0;right: 0;background-color: #fff;}
    .detail-headtraffic_traffic_desc_showmore::before {content: "\f3c5";width: 32px;height: 22px;font-family: 'Font Awesome 5 Pro';position: absolute;left: -15px;color: red;}
    .detail-headamenity_container {display: flex;justify-content: space-between;align-items: baseline;position: relative;height: 48px;overflow: hidden; font-weight:600;}
    .detail-headamenity_list {display: flex;flex-shrink: 0;width: 100%;flex-wrap: wrap;}
    .detail-headamenity_item {color: #0F294D;font-size: 16px;padding-right: 12px;display: flex;align-items: baseline;}
    .detail-headamenity_item i {padding-right: 4px;}
    .u-icon-ic_new_fa_wifi:before {content: "\f1eb";font-family: 'FontAwesome';}
    .u-icon-ic_new_fa_bar:before {content: "\f000"; font-family:'FontAwesome'}
    .u-icon-ic_new_conversion_line:before {content: "\f788"; font-family:'FontAwesome'}
    .u-icon-ic_new_fa_wake_up:before {content: "\f0f3"; font-family:'FontAwesome'}
    .u-icon-ic_new_fa_gym:before {content: "\f44b"; font-family:'FontAwesome'}
    .u-icon-ic_new_fa_swimming:before {content: "\f5c5"; font-family:'FontAwesome'}
    .u-icon-ic_new_fa_sauna:before {content: "\f593"; font-family:'FontAwesome'}
    .u-icon-ic_new_fa_baggage:before {content: "\f4ce"; font-family:'FontAwesome'}
    .u-icon-ic_new_fa_business:before {content: "\f0b1"; font-family:'FontAwesome'}
    .u-icon-ic_new_fa_kidstoys:before {content: "\f1ae"; font-family:'FontAwesome'}
    .u-icon-ic_new_fa_polyglot:before {content: "\f1ab"; font-family:'FontAwesome'}
    .u-icon-ic_new_fa_polyglot:before {content: "\f1ab"; font-family:'FontAwesome'}
    .u-icon-order_printer:before {content: "\f02f"; font-family:'FontAwesome'}
    .u-icon-ic_new_fa_multimedia:before {content: "\f266"; font-family:'FontAwesome'}
    .u-icon-ic_new_fa_atm:before {content: "\f3d1"; font-family:'FontAwesome'}
    .u-icon-ic_new_fa_coffee:before {content: "\f0f4"; font-family:'FontAwesome'}
    .detail-headamenity_name {display: block;font-size: 14px;color: #0F294D;letter-spacing: 0;text-align: left;line-height: 18px;}
    .u-icon-ic_new_fa_breakfast:before {content: "\f2e7";font-family: 'FontAwesome';}
    .u-icon-ic_new_fa_doubleRoom:before {content: "\f394";font-family: 'FontAwesome';}
    .u-icon-ic_new_fa_twinRoom:before {content: "\f173";font-family: 'FontAwesome';}
    .u-icon-ic_new_fa_grandRoom:before {content: "\f0d5";font-family: 'FontAwesome';}
    .u-icon-ic_new_fa_allRoom:before {content: "\f84c";font-family: 'FontAwesome';}
    .u-icon-ic_new_fa_coffee:before {content: "\f7b6";font-family: 'FontAwesome';}
    .u-icon-ic_new_fa_no_smoking:before {content: "\e95c";}
    .u-icon-ic_new_fa_24h_service:before {content: "\f508";font-family: 'FontAwesome';}
    .detail-headamenity_showmore {text-align: right;position: absolute;bottom: 1px;right: 0;background-color: #fff;}
    .detail-headamenity_showmore::before {content: "";background-image: linear-gradient(90deg, RGBA(255, 255, 255, 0), #fff);width: 32px;height: 22px;position: absolute;left: -32px;top: -2px;}
    .detail-headamenity_link {font-size: 14px;color: #287DFA;letter-spacing: 0;line-height: 18px;cursor: pointer;font-weight: 700;}
    .golden-vip {display: flex;flex-direction: row;justify-content: space-between;align-items: center;background-color: #fff;height: 52px;position: relative;box-sizing: border-box;margin-bottom: 8px;}
    .golden-vip_left {display: flex;flex-direction: row;}
    .golden-vip_left .golden-vip_icon {margin-left: 24px;padding: 0 4px;display: block;background-image: url(data:image/png;base64,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);background-repeat: no-repeat;background-size: cover;background-position: center;width: 28px;height: 36px;}
    .golden-vip_left .golden-vip_content {display: flex;flex-direction: column;justify-content: center;padding-left: 16px;}
    .golden-vip_left .golden-vip_content .golden-vip_title {font-size: 14px;color: #0F294D;line-height: 18px;font-weight: 700;}
    .golden-vip_left .golden-vip_content .golden-vip_title .light {color: #FF6F00;}
    .detail-hotelnavi_container {height: 44px;background-color: #fff;border-bottom: 1px solid #DADFE6;}
    .detail-hotelnavi_container .detail-hotelnavi_box {width: 100%;margin: 0 auto;padding: 6px 24px 0;display: flex;justify-content: space-between;align-items: flex-end;box-sizing: border-box;position: absolute;}
    .detail-hotelnavi_container .detail-hotelnavi_box .detail-hotelnavi_list {position: relative;z-index: 1;flex: 1; font-weight:600;}
    .detail-hotelnavi_container .detail-hotelnavi_box .detail-hotelnavi_list .detail-hotelnavi_item:first-child {margin-left: 0;}
    .detail-hotelnavi_container .detail-hotelnavi_box .detail-hotelnavi_list .detail-hotelnavi_item.active {color: #2681FF;font-weight: bold;border-bottom-color: #2681FF;}
    .detail-hotelnavi_container .detail-hotelnavi_box .detail-hotelnavi_list .detail-hotelnavi_item {position: relative;display: inline-block;font-size: 16px;color: #0F294D;text-align: center;padding: 8px 0 4px 0;text-decoration: none;margin-right: 60px;cursor: pointer;border-bottom: 2px solid transparent;}
    .detail-hotelnavi_container .detail-hotelnavi_box .detail-hotelnavi_select {display: none;flex-direction: column;align-items: flex-end;}
    .detail-hotelnavi_container .detail-hotelnavi_box .detail-hotelnavi_select .detail-hotelnavi_select_pricedelete {font-size: 14px;color: #455873;text-align: right;padding-right: 8px;text-decoration: line-through;}
    .detail-hotelnavi_container .detail-hotelnavi_box .detail-hotelnavi_select .detail-hotelnavi_select_price {text-align: right;font-size: 24px;color: #287DFA;text-align: right;line-height: 30px;padding-right: 8px;}
    .detail-hotelnavi_container .detail-hotelnavi_box .detail-hotelnavi_select .detail-hotelnavi_select_btn {padding: 8px 16px;background: #287DFA;border-radius: 2px;color: #fff;display: inline-block;margin: 8px 0;font-weight: bold;cursor: pointer;}
    .room-list {flex-shrink: 0;margin-top: 4px;}
    .room-list .filter {padding-top: 16px !important; background: #fff;padding: 0 24px 16px;}
    .room-list .freeCancelSuggestion {align-items: center;display: flex;margin-bottom: 0px;padding: 10px 24px;background: #e9f2fe;}
    .room-list .freeCancelSuggestion_img {background-image: url(data:image/png;base64,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);background-size: contain;width: 30px;height: 30px;margin-right: 8px;align-self: flex-start;}
    .room-list .freeCancelSuggestion .suggestion {font-size: 14px;color: #0F294D;font-weight: bold;flex: 1;}
    .room-list .freeCancelSuggestion .suggestion .description-link {color: #06AEBD;}
    .u-icon-close:before { content: "\f00d";font-family: 'FontAwesome'; cursor:pointer;}
    .room-list .filter-con-half {height: 46px;}
    .room-list .filter-con {display: flex;}
    .room-list .filter-ul {flex-wrap: nowrap;overflow: hidden;}
    .room-list .filter-tag {border: 1px solid #DADFE6;border-radius: 2px;padding: 8px 16px;display: inline-block;margin: 8px 8px 0 0;font-size: 14px;color: #0F294D;line-height: 18px;}
    .room-list .filter-tag .u-icon {margin-right: 4px;font-size: 16px;}
    .roomlist .container {background: #F5F7FA;}
    .roomlist-baseroom .roomlist-baseroom-card {margin: 4px 0;padding: 24px 24px 16px 24px;}
    .roomlist-baseroom-card {background:#fff;}
    .roomlist-baseroom-card .roomtitle {display: flex;padding: 0 0 16px;font-size: 14px;color: #8592A6;line-height: 18px;font-weight: 900;}
    .roomlist-baseroom-card .roomtitle .clickable {cursor: pointer;}
    .roomlist-baseroom-card .roomtitle .img-container {margin-right: 16px;height: 86px;width: 121px;}
    .roomlist-baseroom-card .roomtitle .baseroomInfo-container {font-size: 14px;color: #0F294D;}
    .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomname {font-weight: 700;font-size: 18px;line-height: 24px;padding-bottom: 0;display: inline-block;padding-right: 8px;}
    .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomFacility {font-size: 14px;color: #0F294D;line-height: 20px;display: flex;}
    .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomFacility-basic {flex-shrink: 0;}
    .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomFacility-basic, .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomFacility-hotFacility, .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomFacility .line, .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomFacility .seeroom {display: inline-block;}
    .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomFacility .u-icon, .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomFacility .line {margin: 8px 16px 0 0;}
    .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomFacility .u-icon:before {width: 22px;height: 22px;font-size: 22px;margin-right: 8px;vertical-align: top;}
    .u-icon-ic_new_fa_acreage:before {content: "\f1b2";font-family: 'FontAwesome';}
    .u-icon-ic_new_fa_floor:before {content: "\f0eb";font-family: 'FontAwesome';}
    .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomFacility .line {color: #DADFE6;}
    .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomFacility-hotFacility {max-width: 745px;}
    .u-icon-ic_new_fa_shower:before {content: "\f2cc";font-family: 'FontAwesome';}
    .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomFacility .facilityHover {cursor: default;}
    .u-icon-ic_new_fa_fridge:before {content: "\f7ad";font-family: 'FontAwesome';}
    .u-icon-ic_new_fa_telephone:before {content: "\f87b";font-family: 'FontAwesome';}
    .roomlist .seeroom {padding-top: 12px;font-size: 14px;color: #287DFA;line-height: 16px;text-align: left;font-weight: bold; cursor:pointer;}
    .roomlist .roomcard {display: flex;width: 100%;}
    .roomlist .saleroomlist {width: 786px;flex: auto;}
    .salecard:first-child {border-top: 4px solid #F0F2F5; font-weight:600;}
    .salecard {border-color: #F0F2F5;border-style: solid;border-width: 0 4px 4px 4px;position: relative;}
    .salecard .minpriceroom {background: #ff6f00;}
    .salecard .minpriceroom, .salecard .conditionalMinPriceRoom {padding: 8px;display: inline-block;position: relative;left: -8px;}
    .salecard .minpriceroom .icon {background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAMKADAAQAAAABAAAAMAAAAADbN2wMAAADyElEQVRoBe1Yy04UQRS9A6JEIsQQENAYSXCjicGF0Rj9APUHXLn1E/ADNH6Dn2Bwr4k7TfCxMqKihvjAKDMgII8RkMd4Ts9UU1NdPf3uCcnc5KaqblXde069uqpFWtIagdYItEZAH4FKpdIDfQ1NQ87qvm35Npsxrg2Ie9D3KfRCXB9R+6VGoBngSTYVAs0CnwqBZoJPTKDZ4BMRiAn+H4LegQ7VlHna8hWCh8Y5KsdMpPAzBvWTwGPU9BdYRqS44Aly0AxAGyt8JJBApFMIQXI/503CZjk0gZTA3zIBoGyzWZolMBE8NM6aR7c62USJa57Lhso8bX4yiopT0CvQm9Bek0bBNJhldMpv2VR2RdaXRFbnRdagfSP3pHtwRsP0slAovNXKckAvmPlcwG+sVMGWf4uUF0R2d/ZgFMQc4BOoDEcgc/ALX0Tmp0W2N/cAB+cGgKsds+CytG7izMFv/RUpTkUFT3pcMcd0nh4CmYNn9Nn3Ilzv8YTLyJU6ArmA51pfKboAfDOFti3p6Fyz1B/XbS6BXMBLBaP/To9vzxP8wJkH0nkUu9ojfcB6SFkdAvmAR8jF7yIbqyq2PVXge4cn7Q0cKy+DjqgZuItSts/A3S2RuU+1sD5JOPDs7O4DRYDX2mc+btMxlwB+u8HNOTx44nH3gUMA52oZxuvQbEhsYtksfoN7H4kGnk66seyPMKNmQDIlUfyAYxMb2CbRwSsvvOLsEWAhExKrJdxt5ujeK/HB46IkP+nQnQHlPVUS/Fjxo2WT+ODpbQI4nSn1EGBtaiQWvuLFy+1lSDLw08CHaa2KlQCrEpPgJW3+cy2MliQDvw1PrzRv3iWkVyYiUfoossN4miQDT0dvaphcp74zoFrEIrGxLLI0o1xU0+TgeS+qewvQcSABNopMwty4ycETBl9jxpSGJBCJxPKv6suKnSjpgJ8FeLyAvBJqBlS34JnAyVbCQ0VJOuDpbUK5NNNIBNi5MQk8YU/iTtiFnwfpgZ9CTNu12uFiPppNgr5l3EW6UPkYetXSqCzludvS1c9nl3NnsbQJY+Lt7yEIrPs1jk2ADn1I8Mt1DUGfo74d+XPQ89CGf0BQbxPPbxSzUSICdGaQcMHrgdDmMMoXoad1e0AeZ7GMYyAaPp4TEyCIGolxZO9z5GmzCdr1w34ZyjRInsCX8THxdkmFgNetvwUkGHMEyhnhzNjkB8BzfwVK7gQUIhDpQH4Uyj3CvaKES+YRCPxRhkZp0wgoUCDCU+oSdLhmmwT4F6p+36QgMgS9AT24b0CnAfQ/PCHRUNooW0EAAAAASUVORK5CYII=);}
    .salecard .minpriceroom .icon, .salecard .conditionalMinPriceRoom .icon {background-size: contain;background-repeat: no-repeat;margin-right: 8px;display: inline-block;width: 16px;height: 16px;vertical-align: middle;}
    .salecard .minpriceroom .content, .salecard .conditionalMinPriceRoom .content {font-size: 12px;color: #FFFFFF;text-align: center;line-height: 18px;}
    .salecard .minpriceroom:after {border-top: 4px solid #ee3b28;border-right: 4px solid #ee3b28;}
    .salecard .minpriceroom:after, .salecard .conditionalMinPriceRoom:after {content: "";border: 5px solid transparent;position: absolute;left: 0;bottom: -8px;}
    .salecard .salecard-frame {display: flex;padding: 0;border: none;}
    @media screen and (max-width: 768px) {.salecard .salecard-frame .salecard-baseinfo {flex: 2.8;padding: 0 8px;}}
    .salecard .salecard-frame .salecard-baseinfo {margin: 16px 0;padding: 0 16px;border-right: 1px solid #DADFE6;flex: 3;}
    .salecard-frame .salecard-baseinfo .positive {color: #06AEBD !important;}
    .salecard .salecard-frame .salecard-baseinfo .bookinfo-desc {display: flex;font-size: 14px;color: #0F294D;line-height: 18px;margin-bottom: 8px;}
    .salecard .salecard-frame .salecard-baseinfo .bookinfo-desc .u-icon::before {width: 22px;height: 22px;margin-right: 8px;font-size: 22px;}
    .u-icon-ic_new_fa_confirmation:before {content: "\f0e7";font-family: 'FontAwesome';}
    .salecard .salecard-frame .salecard-baseinfo .hoverBookInfo {text-decoration: underline dotted;cursor: default;}
    .salecard .salecard-frame .salecard-baseinfo .bookinfo-desc {display: flex;font-size: 14px;color: #0F294D;line-height: 18px;margin-bottom: 8px;}
    .salecard .salecard-frame .salecard-baseinfo .red {color: #f5594a;}
    .u-icon-ic_new_fa_defect:before {content: "\f00d";font-family: 'FontAwesome';}
    .salecard .salecard-frame .salecard-personinfo {margin: 16px 0;padding: 0;border-right: 1px solid #DADFE6;flex: 1;min-width: 96px;max-width: 96px;text-align: center;}
    .salecard .salecard-frame .salecard-personinfo i {vertical-align: middle;}
    .salecard .salecard-frame .salecard-personinfo .u-icon:before {width: 18px;height: 18px;font-size: 18px;color: #0F294D;}
    .salecard .salecard-frame .salecard-facilityInfo {margin: 16px 0;padding: 0 16px;border-right: 1px solid #DADFE6;flex: 2;}
    .salecard .salecard-frame .salecard-facilityInfo .bed-icon {font-size: 14px;color: #0F294D;padding-bottom: 4px;}
    .salecard .salecard-frame .salecard-facilityInfo .bed-icon .u-icon:before {width: auto;height: 20px;color: #0F294D;font-size: 20px;}
    .u-icon-ic_new_twobeds:before {content: "\e9b8";}
    .salecard .salecard-frame .salecard-facilityInfo .bed-content {font-size: 14px;color: #0F294D;line-height: 20px;}
    .salecard .salecard-frame .salecard-facilityInfo .bed-content .hover {border-bottom: 1px dotted #0F294D;}
    .salecard .salecard-frame .salecard-facilityInfo .hover {cursor: default;}
    .salecard .salecard-frame .salecard-facilityInfo .facility {padding-top: 8px;display: inline-block;}
    .salecard .salecard-frame .salecard-facilityInfo .facility .u-icon {padding-right: 8px;}
    .salecard .salecard-frame .salecard-facilityInfo .facility .u-icon::before {width: 22px;height: 22px;font-size: 22px;color: #0F294D;}
    .u-icon-ic_new_no_fa_wifi:before { content: "\f1eb";font-family: 'Font Awesome 5 Free';font-weight: 900;}
    .u-icon-ic_new_fa_no_smoking:before {content: "\f54d";font-family: 'FontAwesome';}
    .u-icon-window:before {content: "\f72e";font-family: 'FontAwesome';}
    .salecard .salecard-frame .salecard-priceinfo {margin: 16px 0;padding: 0 16px 0 16px;flex: 4;display: flex;flex-direction: column;justify-content: space-between;}
    .salecard .salecard-frame .salecard-priceinfo_top {text-align: left;}
    .salecard .salecard-frame .salecard-priceinfo_top_left:nth-child(n) {margin-bottom: 8px;}
    .salecard .salecard-frame .salecard-priceinfo_top_left {display: inline-block;width: calc(55% - 16px);margin-right: 16px;vertical-align: top;}
    .salecard .salecard-frame .salecard-priceinfo_top_left .des-with-icon:last-child {margin-bottom: 0;}
    .salecard .salecard-frame .salecard-priceinfo_top_left .des-with-icon {display: block;margin-bottom: 8px;}
    .des-with-icon.orange, .des-with-icon .orange {color: #FFㅡ6F00;}
    .des-with-icon {display: inline-block;color: #455873;vertical-align: middle;margin-bottom: 8px;}
    .des-with-icon .normal-icon {font-size: 18px;margin-right: 4px;display: inline-flex;align-items: center;vertical-align: middle;}
    .salecard .salecard-frame .salecard-priceinfo_top_left .des-with-icon>.u-icon:before {padding: 3px;border-radius: 2px;line-height: 1;/*background-color: #fff0e5;*/}
    .u-icon-ic_new_tripcoins:before {content: "\f185";font-family: 'FontAwesome';color: #ffb400;}
    .des-with-icon .desc-text {vertical-align: middle;line-height: 18px;}
    .salecard .salecard-frame .salecard-priceinfo_top_right {display: inline-block;width: 40%;vertical-align: top;font-size: 14px;}
    .salecard .salecard-frame .salecard-priceinfo_bottom_left {display: inline-block;width: calc(55% - 25px);margin-right: 16px;text-align: right;vertical-align: bottom;}
    .salecard .salecard-frame .salecard-priceinfo_bottom_left .percent {display: inline-block;background: #F5594A;font-size: 14px;color: #FFF;text-align: center;line-height: 18px;font-weight: 700;position: relative;margin-bottom: 10px;border-radius: 2px;padding: 3px 4px;}
    .salecard .salecard-frame .salecard-priceinfo_bottom_left .percent::after {content: '';border-radius: 2px;border: 5px solid transparent;border-top: 5px solid #F5594A;border-right: 5px solid #F5594A;position: absolute;right: 0;bottom: -5px;}
    .salecard .salecard-frame .salecard-priceinfo_bottom_left .price {margin-bottom: 8px;}
    .salecard .salecard-frame .salecard-priceinfo_bottom_left .price-delete {font-size: 14px;color: #455873;line-height: 18px;text-decoration: line-through;padding-right: 4px;vertical-align: bottom;}
    .salecard .salecard-frame .salecard-priceinfo_bottom_left .price-display {font-size: 24px;color: #287DFA;text-align: right;line-height: 20px;font-weight: 700;border-bottom: 1px dotted;display: inline-block;cursor: default;}
    .salecard .salecard-frame .salecard-priceinfo_bottom_left>div:nth-last-child(1) {margin-bottom: 0;}
    .salecard .salecard-frame .salecard-priceinfo_bottom_left .note {margin-bottom: 8px;}
    .salecard .salecard-frame .salecard-priceinfo_bottom_right {display: inline-block;width: 45%;text-align: left;font-size: 14px;color: #455873;line-height: 18px;vertical-align: bottom;}
    .salecard .salecard-frame .salecard-priceinfo_bottom_right .paytype {font-weight: 700;margin-bottom: 8px;}
    .book-box {background: #FF9500;border-radius: 2px;font-weight: 700;font-size: 16px;color: #FFFFFF;text-align: center;line-height: 38px;margin-bottom: 0; cursor:pointer;}
    .book-box .book {cursor: pointer; color: white;font-weight: 600;}
    .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomEncourage {display: inline-block;}
    .roomlist-baseroom-card .roomtitle .baseroomInfo-container .roomEncourage-encourage {display: inline-block;background: rgba(6,174,189,0.1);font-size: 14px;color: #06AEBD;line-height: 16px;margin: 8px 8px 0 0;padding: 8px;padding: 2px 4px;}
    .container {width: 100%;padding-left: 0;padding-right: 0;margin-right: auto;margin-left: auto;}
    @media (min-width: 1500px){ .container {max-width: 1500px;}}
    .carousel {position: relative;width: 95% !important; height:108px;}
    .smart-modal_mask {position: fixed;left: 0;top: 0;width: 100%;height: 100%;background-color: rgba(0,0,0,0.6);z-index: 900;display: flex;justify-content: center;align-items: center;}
    .smart-modal_mask .smart-modal_container {position: relative;max-width: calc(100% - 100px);max-height: calc(100% - 80px);background-color: #fff;border-radius: 2px;padding: 24px;}
    .smart-modal_mask .smart-modal_container .smart-modal_title {font-size: 20px;color: #0F294D;line-height: 26px;}
    .smart-modal_mask .smart-modal_container .smart-modal_content {font-size: 14px;}
    .gallery-container {position: absolute;color: #0F294D;width: calc(100% - 48px);height: calc(100% - 48px);}
    .hoteldetail-title.iPad {width: 97%;}
    .gallery-container .iPad {display: none;}
    .hoteldetail-title {text-align: center;margin-bottom: 10px;}
    .hoteldetail-title_container {display: inline-block;border-radius: 2px;overflow: hidden;white-space: nowrap;}
    .hoteldetail-title span {display: inline-block;overflow: hidden;text-overflow: ellipsis;height: 34px;line-height: 34px; font-weight:600;}
    .u-btn-radiusnone {border-radius: 0;}
    .u-btn-primary {background: #287dfa;}
    .u-btn {font-size: 16px;display: inline-block;height: 40px;padding: 0 16px;box-sizing: border-box;line-height: 40px;color: #fff;text-align: center;vertical-align: middle;white-space: nowrap;border-radius: 2px;cursor: pointer;border: 0 none;*display: inline;*zoom: 1;background: none;}
    .u-btn-white {background: #F7F7FB;color: #333;}
    .hoteldetail-container .scrollpanel {height: 100%;}
    .gallery-container .scrollpanel {padding: 0 18px;margin: 0 -18px;}
    .scrollpanel {position: relative;overflow: hidden;}
    .hoteldetail-body {height: 100%;}
    .hoteldetail-body>div {height: 100%;}
    .hoteldetail-main {display: flex;justify-content: space-between;}
    .gallery-container article {position: relative;width: calc(100% - 392px);}
    .gallery-container .PC {display: block;}
    .gallery {position: relative;overflow: hidden;}
    .gallery-window {padding-bottom: 66.5%;}
    .gallery-pic-translate_-2 {transform: translateX(-200%);}
    .gallery-pic {position: absolute;width: 100%;height: 100%;transition: transform 0.5s step-start;text-align: center;}
    .gallery-pic-item {position: absolute;top: 50%;left: 50%;transform: translate(-50%, -50%);}
    .gallery-pic-item .m-lazyImg {display: inline-flex;justify-content: center;}
    .gallery-hotelPic .m-imgInfo {justify-content: space-between;}
    .gallery-pic .m-imgInfo {display: flex;align-items: flex-end;position: absolute;bottom: 0;left: 0;right: 0;color: #fff;height: 60px;background-image: linear-gradient(180deg, transparent 0%, rgba(15,41,77,0.5) 100%);font-size: 14px;}
    .gallery-pic .imgDescription {padding: 0 20px 16px;flex: 1;text-align: left;}
    .gallery-pic .imgDescription-title {font-size: 16px;}
    .gallery-pic .imgIndex {padding: 0 20px 16px;}
    .gallery-pic .imgIndex span {padding: 0 4px;}
    .gallery-pic-translate_-1 {transform: translateX(-100%);}
    .gallery-pic {position: absolute;width: 100%;height: 100%;transition: transform 0.5s step-start;text-align: center;}
    .gallery-pic-item {position: absolute;top: 50%;left: 50%;transform: translate(-50%, -50%);}
    .gallery-pic-translate_0 {transform: translateX(0%);}
    .hoteldetail-container .gallery-navi {top: calc(50% - 10px);}
    .gallery-navi-left {left: -16px;padding-left: 0;}
    .gallery-navi {position: absolute;top: calc(50% - 16px);padding: 10px;}
    .gallery-navi .m-arrow {background: #fff;border-radius: 0px 0px 0px 0px;box-shadow: 0px 2px 5px 0px rgb(0 53 128 / 10%);line-height: 32px;height: 32px;width: 32px;color: #287DFA;text-align: center;z-index: 1;}
    .gallery-navi-right {right: -16px;padding-right: 0;}
    .gallery-container .PC.gallery-side {display: flex; font-weight:600;}
    .gallery-side {width: 360px;display: flex;flex-direction: column;justify-content: space-between;}
    .hoteldetail-side h1 {margin-bottom: 8px;}
    .gallery-container h1 {width: 95%;max-height: 52px;min-height: 36px;font-size: 20px;line-height: 26px;-webkit-line-clamp: 2;-webkit-box-orient: vertical;display: -webkit-box;margin-top: 4px;flex-shrink: 0; font-weight:600;}
    .longText {text-overflow: ellipsis;overflow: hidden;}
    .gallery-side .scrollpanel {flex-grow: 1;}
    .gallery-side-panel, .gallery-side .iPad-panel {position: initial;}
    .gallery-side-panel {height: 100%;font-size: 14px;line-height: 35px;overflow: auto;position: absolute;}
    .hotelside-facility {width: 98%;}
    ul {padding: 0;}
    .mc-ft, ul {margin: 0;list-style: none;}
    .hotelside-facility-item {width: 49.3%;display: inline-flex;align-items: flex-start;padding-bottom: 8px;}
    ul, li {margin: 0;padding: 0;list-style: none;}
    .hotelside-facility i {line-height: 20px;padding-right: 8px; height: 21px;width: 33px;}
    .hotelside-facility i::before {font-size: 20px;}
    .hotelside-facility-text {line-height: 18px;display: inline-block;}
    .hotelside-facility-text .free {color: #06AEBD;}
    .hotelside-facility-text .icon-charge {padding-left: 4px;}
    .gallery-container .PC {display: block;}
    .hoteldetail-selectroom {text-align: right;margin-top: 8px;}
    .hoteldetail-tab {display: flex;flex-wrap: wrap;margin: 13px -16px 0;}
    .hoteldetail-tab .selected {color: #2681FF;position: relative;font-weight: bold;}
    .hoteldetail-tab_item {font-size: 12px;padding: 0 16px 15px;cursor: pointer;}
    .gallery-thumbnail {height: 106px; margin-top:20px;}
    .gallery-thumbnail ul {overflow: auto;white-space: nowrap;scroll-behavior: smooth;padding-bottom: 12px;}
    .gallery-thumbnail li {width: 120px;height: 80px;margin-right: 8px;display: inline-block;cursor: pointer;border: 2px solid transparent;}
    .u-icon-ic_new_back_line:before { content: "\f053";font-family: 'Font Awesome 5 Free';font-weight: 900;}
    .u-icon-ic_new_close_line:before {content: "\f00d";font-family: 'FontAwesome';}
    .smart-modal_mask .smart-modal_container .smart-modal_close {position: absolute;right: 25px;top: 22px;font-size: 18px;color: #0F294D;cursor: pointer;}
    .gallery-thumbnail li.selected {border-color: #287DFA;}
    .m-confirm_content {padding: 24px;color: #0F294D;display: flex;}
    .m-confirm_content .tipTxt {width: 100%;}
    .m-confirm .titleOnly .title {font-size: 16px;}
    .m-confirm_content .title {font-size: 20px;font-weight: bold;padding-right: 20px;line-height: 26px;}
    .hotel-detail-desc-modal {max-width: 700px;}
    .m-confirm {min-width: 474px;max-width: 580px;box-shadow: 0 8px 20px 0 rgb(0 41 99 / 20%);border-radius: 2px;}
    .m-confirm {position: relative;margin: 0 auto;background: #fff;z-index: 10001;}
    .m-confirm_close {position: absolute;top: 16px;right: 16px;width: 20px;height: 20px;font-size: 18px;cursor: pointer;text-align: center;color: #0F294D;}
    .clearfix:before, .clearfix:after {content: " ";display: table;}
    .m-confirm_content .content {max-height: 470px;}
    .m-confirm_content .title+.content {margin-top: 16px;}
    .m-confirm_content .content {line-height: 1.5;font-size: 14px;max-height: 580px;overflow: auto;padding-right: 16px;margin-right: -16px;}
    .popshowDesc {font-size: 14px;line-height: 18px;}
    .popshowDesc .basicInfo {margin-top: 8px;letter-spacing: 0;line-height: 18px;font-weight: 700;}
    .popshowDesc .hotelImg {margin-top: 16px;width: 480px;height: 320px;}
    img {border: 0 none;vertical-align: middle;}
    .popshowDesc .hotelDesc {margin-top: 16px;}
    .clearfix:after {clear: both;}
    .clearfix:before, .clearfix:after {content: " ";display: table;}
    .m-confirm-mask {display: flex;align-items: center;}
    .m-mask {opacity: 1;position: fixed;z-index: 10000;top: 0;bottom: 0;left: 0;right: 0;background-color: rgba(0,0,0,0.6);transform: translate(0) translateZ(0);transition: opacity 0.3s;overflow-y: auto;}
    .popshowDesc .basicInfo>li {float: left;margin-right: 50px;}
    .detail-headline_desc_showmore:hover {text-decoration:underline; color:#287DFA;}
    .detail-headline_position_showmore:hover {text-decoration:underline; color:#287DFA;}
    .room-list .filter-tag.disabled {color: #ACB4BF;border: 1px solid #DADFE6;pointer-events: none;}
    .room-list .filter-tag.selected {color: #287DFA;background: #ecf3ff;border: 1px solid #ecf3ff;}
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px !important;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {font-weight: bold;font-size: 14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding: 10px;color: #fff;background: #d95050 no-repeat right 14px center;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px; line-height:20px;}
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
    .detail-map-list_container .detail-map-list_tab .detail-map-list_tab_item {font-size: 16px;color: #0F294D;line-height: 18px;font-weight: 600;width: 100%;align-items: center;}
    .detail-map-list_container .detail-map-list_list {position: relative;overflow-y: auto;flex: 1;padding-left: 24px;padding-right: 24px;margin-left: -24px;margin-right: -24px;}
    .detail-map-poilist_container .detail-map-poilist_category {box-sizing: border-box;}
    .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_category_title {display: flex;align-items: center;padding-top: 20px;padding-bottom: 4px;font-size: 14px;color: #0F294D;}
    .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_category_title .u-icon {font-size: 24px;margin-right: 8px;}
    .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_category_title .u-icon {font-size: 24px;margin-right: 8px;}
    .u-icon {font-family: "smarticon", sans-serif !important;font-display: swap;display: inline-block;font-style: normal;vertical-align: baseline;-webkit-font-smoothing: antialiased;-moz-osx-font-smoothing: grayscale;}
    .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_item {display: flex;justify-content: space-between;font-size: 14px;padding: 4px 24px;margin-left: -24px;margin-right: -24px;}
    .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_item .detail-map-poilist_item_content {display: flex;flex-direction: column;width: 270px;}
    .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_item .detail-map-poilist_item_content .detail-map-poilist_item_title {color: #0F294D;padding: 2px 0;}
    .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_item .detail-map-poilist_item_content .detail-map-poilist_item_poi {color: #8592A6;padding: 2px 0;}
    .detail-map-poilist_container .detail-map-poilist_category .detail-map-poilist_item .detail-map-poilist_item_info {margin-top: 4px;color: #0F294D;}
    .detail-map-list_container .detail-map-list_close {position: absolute;right: 28px;top: 20px;font-size: 24px;cursor: pointer;}
    .detail-map-list_container .detail-map-list_close {width: 25px;position: absolute;z-index: 1820;right: 20px;top: 20px;}
    .u-icon-close:before { content: "\f00d";font-family: 'FontAwesome'; cursor:pointer;}
    .mapModal {position:fixed; width:100%; height:100%; background: white; top:0; left:0; display:none; z-index: 999999; justify-content: center;}
    .modal_content{ position: absolute;width: 100%;height: 100%;background: white;top: 0;left: 0;right: 0;bottom: 0;}

    .map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif !important;font-size:12px;}
    .map_wrap {position:relative;width:100%;height:100%;}
    #category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
    #category li {float:left;list-style: none;width:50px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
    #category li.on {background: #eee;}
    #category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
    #category li:last-child{margin-right:0;border-right:0;}
    #category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
    #category li .category_bg {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
    #category li .bank {background-position: -10px 0;}
    #category li .mart {background-position: -10px -36px;}
    #category li .pharmacy {background-position: -10px -72px;}
    #category li .oil {background-position: -10px -108px;}
    #category li .cafe {background-position: -10px -144px;}
    #category li .store {background-position: -10px -180px;}
    #category li.on .category_bg {background-position-x:-46px;}
    .placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
    .placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
    .placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
    .placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
    .placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
    .placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
    .placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
    .placeinfo .tel {color:#0f7833;}
    .placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}
    .forgetIdPwd {color: #0d6efd !important;text-decoration: underline !important;}
    .modal-header h3 {font-weight: 900 !important;margin-top: 30px;margin-left: 25px; font-size:24px;}

    .m-reviewsList {margin: 8px 0;background: #fff;padding: 16px 24px 0;}
    .m-reviewsList .o-module-tit {margin-bottom: 20px;font-size: 20px;color: #0F294D;line-height: 24px;}
    .m-tab {background-color: #fff;}

</style>
</head>
<body>
<%@include file="../common/header.jsp" %>

<%--Body 시작--%>
<div class="hotel-main-container">
    <div class="hotel-list-page">
        <div class="list-search-container list-search-container-dark short-search">
            <form action="/hotel/main" method="post">
                <ul class="ul">
                    <li class="list-item list-destination">
                        <div class="search-container">
                            <div class="hotel-search-box" id="hotel_searchBox">
                                <label for="hotels-destination">목적지/호텔 이름</label>
                                <div id="search-picker" class="area-search-box">
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
                                                            ${area.areaCode}
                                                        </span></li>
                                                    </c:forEach>
                                                </c:otherwise>
                                            </c:choose>
                                        </ul>
                                    </div>
                                </div>
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
                                                                    ${hotel.areaCode}
                                                                </strong>
                                                            </p>
                                                            <p class="hotel-title" style="font-size:13px;">${hotel.name }</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <input type="text" id="hotels-destination" class="show-hightlight-1" autocomplete="off"
                                       placeholder="도시, 공항, 지역, 랜드마크, 호텔 이름으로 검색" value="${areaName}" name="areaName">
                            </div>
                        </div>
                    </li>
                    <li class="list-item list-item list-calendar">
                        <div class="calendar-container">
                            <div class="time-tab">
                                <label class="in">체크인</label>
                                <input type="text" class="focus-input show-hightlight in-time" readonly
                                       value="${checkIn}" id="input-start" name="check-in"/>
                            </div>
                            <div class="nights">
                                <span>${diffDays}박</span>
                            </div>
                            <div class="time-tab">
                                <label class="out">체크아웃</label>
                                <input type="text" class="focus-input show-hightlight out-time" readonly
                                       value="${checkOut}" id="input-end" name="check-out"/>
                            </div>
                        </div>
                    </li>
                    <li class="list-item list-roomguest">
                        <div class="room-guest-container">
                            <div class="room-guest">
                                <label>객실 당 인원 수</label>
                                <div class="input-group-icon" id="js-select-special">
                                    <input class="input--style-1 input--style-1-small show-hightlight" type="text"
                                           name="traveler" value="${traveler}" id="info" readonly>
                                    <i class="zmdi zmdi-chevron-down input-icon"></i>
                                </div>
                                <div class="bottom-line"></div>
                                <div class="dropdown-select">
                                    <ul class="list-room">
                                        <li class="list-room__item">
                                            <span class="list-room__name">방 1</span>
                                            <ul class="list-person">
                                                <li class="list-person__item">
                                                    <span class="name">성인</span>
                                                    <div class="quantity quantity1">
                                                        <span class="minus">-</span>
                                                        <input class="inputQty" type="number" min="0" max="5" value="1">
                                                        <span class="plus">+</span>
                                                    </div>
                                                </li>
                                                <li class="list-person__item">
                                                    <span class="name">아이</span>
                                                    <div class="quantity quantity2">
                                                        <span class="minus">-</span>
                                                        <input class="inputQty" type="number" min="0" max="5" value="0">
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
                        </div>
                    </li>
                    <li class="list-item list-keyword">
                        <div class="search-keyword-container">
                            <label class="keyword">키워드 (선택)</label>
                            <input type="text" id="keyword" autocomplete="off" placeholder="공항, 역, 지역, 호텔 이름" value="${hotelInfo.name}" name="hotelName">
                            <div class="drop-result-list" style="left: -1px; display: none;">
                                <p class="not_found">죄송합니다. ''에 대한 검색 결과를 찾지 못했습니다.</p>
                            </div>
                        </div>
                    </li>
                    <li class="list-item list-btn">
                        <div class="search-btn-wrap search-btn-wrap_detailnormal">
                            <button type="submit" class="search-btn-wrap-text">검색</button>
                        </div>
                    </li>
                </ul>
            </form>
        </div>
        <div class="hotel-detail-main">
            <section class="hotel-detail_head" id="hotel-detail-head">
                <div class="detail-headline_container">
                    <div class="detail-headline_base">
                        <div class="detail-headline_title hotelTag-title">
                            <h1 class="detail-headline_name hotelTag-title_h1">${hotelInfo.name}</h1>
                            <c:forEach begin="1" end="${hotelInfo.hotelStar}">
                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                            </c:forEach>
                            <%--만약 조회수가 10000 이상일 경우,--%>
                            <c:if test="${hotelInfo.readCount ge 10000}">
                                <span class="badge-thumb badge-thumb-5"></span>
                            </c:if>
                        </div>
                        <div class="detail-headline_address">
                            <div class="detail-headline_position">
                                <i class="u-icon u-icon-locate detail-headline_position_icon"></i>
                                <span class="detail-headline_position_info">
                                    <span class="detail-headline_position_text">
                                        ${hotelInfo.addr1}
                                    </span>
                                    <span class="detail-headline_position_showmore">
                                        지도에서 호텔보기
                                    </span>
                                </span>
                            </div>
                            <div class="detail-headline_desc">
                                <i class="u-icon u-icon-ic_group_company detail-headline_desc_icon" type="ic_group_company"></i>
                                <span class="detail-headline_desc_text" id="localHotelIdNo" data-hotelIdNumber="${hotelInfo.id}">
                                </span>
                                <span class="detail-headline_desc_showmore">더 보기</span>
                            </div>
                        </div>
                    </div>
                    <div class="detail-headline-price_container">
                        <div class="detail-headline-price_leftside">
                            <p class="detail-headline-price_price_box">
                                <s class="detail-headline-price_delete_price" id="mainPrice"></s>
                                <span class="detail-headline-price_price" id="mainEventPrice"></span>
                            </p>
                        </div>
                        <div class="detail-headline-price_select">객실 선택</div>
                    </div>
                </div>
                <div class="detail-headcontext">
                    <div class="detail-headalbum_container">
                        <div class="detail-headalbum_box">
                            <div class="detail-headalbum_bigpic">
                                <div style="position: absolute; inset: 0px;">
                                    <div class="m-lazyImg" style="width: 100%; height: 100%;" id="mainImage">
                                    </div>
                                </div>
                            </div>
                            <div class="detail-headalbum_childbox">
                                <div class="detail-headalbum_item">
                                    <div class="m-lazyImg" style="width: 100%; height: 100%;">
                                        <img id="image1" class="m-lazyImg__img" src="../../../resources/images/hotel/HotelsInfo/ready.png" style="width: 100%; height: 100%; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);">
                                    </div>
                                </div>
                                <div class="detail-headalbum_item">
                                    <div class="m-lazyImg" style="width: 100%; height: 100%;">
                                        <img id="image2" class="m-lazyImg__img" src="../../../resources/images/hotel/HotelsInfo/ready.png" style="width: 100%; height: 100%; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);">
                                    </div>
                                </div>
                                <div class="detail-headalbum_item">
                                    <div class="m-lazyImg" style="width: 100%; height: 100%;">
                                        <img id="image3" class="m-lazyImg__img" src="../../../resources/images/hotel/HotelsInfo/ready.png" style="width: 100%; height: 100%; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);">
                                    </div>
                                </div>
                                <div class="detail-headalbum_item">
                                    <div class="m-lazyImg" style="width: 100%; height: 100%;">
                                        <img id="image4" class="m-lazyImg__img" src="../../../resources/images/hotel/HotelsInfo/ready.png" style="width: 100%; height: 100%; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);">
                                    </div>
                                </div>
                                <div class="detail-headalbum_item">
                                    <div class="m-lazyImg" style="width: 100%; height: 100%;">
                                        <img id="image5" class="m-lazyImg__img" src="../../../resources/images/hotel/HotelsInfo/ready.png" style="width: 100%; height: 100%; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);">
                                    </div>
                                </div>
                                <div class="detail-headalbum_item">
                                    <div class="m-lazyImg" style="width: 100%; height: 100%;">
                                        <img id="image6" class="m-lazyImg__img" src="../../../resources/images/hotel/HotelsInfo/ready.png" style="width: 100%; height: 100%; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="detail-headcontext_side">
                        <div class="detail-headreview_container">
                            <div class="detail-headreview_container_left" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                <i type="back" class="u-icon u-icon-back"></i>
                            </div>
                            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                                <div class="carousel-inner">
                                    <a class="carousel-item active" href="#">
                                        <div class="detail-headreview_container_scorecontainer">
                                            <li class="cate_item">
                                                <div class="m-scoreBar detail-headreview_scorebar newScoreBar">
                                                    <div class="clearfix-score">
                                                        <span class="title">청결도 - 좋음</span>
                                                        <span class="score">4.5</span>
                                                    </div>
                                                    <span class="show">
                                                    <span class="blue" style="width: 80%;"></span>
                                                </span>
                                                </div>
                                            </li>
                                            <li class="cate_item">
                                                <div class="m-scoreBar detail-headreview_scorebar newScoreBar">
                                                    <div class="clearfix-score">
                                                        <span class="title">호텔 시설 - 좋음</span>
                                                        <span class="score">4.3</span>
                                                    </div>
                                                    <span class="show">
                                                    <span class="blue" style="width: 72%;"></span>
                                                </span>
                                                </div>
                                            </li>
                                            <li class="cate_item">
                                                <div class="m-scoreBar detail-headreview_scorebar newScoreBar">
                                                    <div class="clearfix-score">
                                                        <span class="title">위치 - 좋음</span>
                                                        <span class="score">4.3</span>
                                                    </div>
                                                    <span class="show">
                                                    <span class="blue" style="width: 72%;"></span>
                                                </span>
                                                </div>
                                            </li>
                                            <li class="cate_item">
                                                <div class="m-scoreBar detail-headreview_scorebar newScoreBar">
                                                    <div class="clearfix-score">
                                                        <span class="title">서비스 - 좋음</span>
                                                        <span class="score">4.4</span>
                                                    </div>
                                                    <span class="show">
                                                    <span class="blue" style="width: 76%;"></span>
                                                </span>
                                                </div>
                                            </li>
                                        </div>
                                    </a>
                                    <div class="carousel-item">
                                        <div class="detail-headreview_info">
                                            <div class="detail-headreview_sum">
                                                <div class="detail-headreview_desc">
                                                    <p class="detail-headreview_score">
                                                    <span class="detail-headreview_score_box ">
                                                        <b class="detail-headreview_score_value">4.4</b>/5</span>
                                                        <span class="detail-headreview_score_text">
                                                        아주 좋음
                                                    </span>
                                                    </p>
                                                    <p class="detail-headreview_all">
                                                        리뷰 683개
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="detail-headreview_box">
                                                <div class="detail-headreview_content">
                                                    <div class="detail-headreview_content_text">
                                                    <span class="detail-headreview_keyword">
                                                        깨끗함,
                                                    </span>
                                                        <span class="detail-headreview_keyword">
                                                        쇼핑하기 편리함
                                                    </span>
                                                        <div>96% 추천</div>
                                                    </div>
                                                </div>
                                                <div class="detail-headreview_bubble"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="detail-headreview_container_right" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                <i type="ic_new_more_line1" class="u-icon u-icon-ic_new_more_line1"></i>
                            </div>
                        </div>
                        <div class="detail-headtraffic_container">
                            <div class="detail-headtraffic_map_icon"></div>
                            <div class="detail-headtraffic_map_side">
                                <div class="detail-headtraffic_traffic">
                                    <ul class="detail-headtraffic_traffic_list">
                                        <li class="item">
                                            <span class="item_icon">
                                                <i class="u-icon u-icon-flight detail-headtraffic_icon" style="margin-right:10px;"></i>
                                                <span class="item_distance"></span>
                                            </span>
                                        </li>
                                    </ul>
                                    <div class="detail-headtraffic_traffic_desc">
                                        <%--<div class="detail-headtraffic_traffic_desc_content">
                                            1000m 이내 거리: 관광명소 8개, 도심까지 거리: 3.8km
                                        </div>--%>
                                        <div class="detail-headtraffic_traffic_desc_showmore">
                                            지도에서 호텔보기
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="detail-headamenity_container">
                            <div class="detail-headamenity_list">
                                <c:if test="${hotelInfo.hasHotelWifi eq 'Y'}">
                                    <div class="detail-headamenity_item">
                                        <i class="u-icon u-icon-ic_new_fa_wifi detail-headamenity_icon" type="ic_new_fa_wifi"></i>
                                        <span class="detail-headamenity_name">Wi-Fi (공공장소)</span>
                                    </div>
                                </c:if>
                                <c:if test="${hotelInfo.hasrestaurant eq 'Y'}">
                                    <div class="detail-headamenity_item">
                                        <i class="u-icon u-icon-ic_new_fa_breakfast detail-headamenity_icon" type="ic_new_fa_breakfast"></i>
                                        <span class="detail-headamenity_name">레스토랑</span>
                                    </div>
                                </c:if>
                                <c:if test="${hotelInfo.hasCoffeeShop eq 'Y'}">
                                <div class="detail-headamenity_item">
                                    <i class="u-icon u-icon-ic_new_fa_coffee detail-headamenity_icon" type="ic_new_fa_coffee"></i>
                                    <span class="detail-headamenity_name">커피숍</span>
                                </div>
                                </c:if>
                                <c:if test="${hotelInfo.hasSmokeBanArea eq 'Y'}">
                                <div class="detail-headamenity_item">
                                    <i class="u-icon u-icon-ic_new_fa_no_smoking detail-headamenity_icon" type="ic_new_fa_no_smoking"></i>
                                    <span class="detail-headamenity_name">금연층</span>
                                </div>
                                </c:if>
                                <c:if test="${hotelInfo.hasFrontDesk eq 'Y'}">
                                <div class="detail-headamenity_item">
                                    <i class="u-icon u-icon-ic_new_fa_24h_service detail-headamenity_icon" type="ic_new_fa_24h_service"></i>
                                    <span class="detail-headamenity_name">프론트데스크 (24시간)</span>
                                </div>
                                </c:if>
                            </div>
                            <div class="detail-headamenity_showmore">
                                <span class="detail-headamenity_link">모든 시설 보기</span>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <div class="golden-vip detailPage_goldenVip">
                <section class="golden-vip_left">
                    <i class="golden-vip_icon"></i>
                    <div class="golden-vip_content">
                        <p class="golden-vip_title">
                            체크아웃 후 최소
                        <span class="light" id="displayCoint"></span>
                         을 적립하세요
                        </p>
                    </div>
                </section>
            </div>
            <div class="detail-hotelnavi_container">
                <div class="detail-hotelnavi_box" style="width: 797px;">
                    <div class="detail-hotelnavi_list">
                        <span class="detail-hotelnavi_item active" data-id="detail-room-list">
                            객실
                        </span>
                        <span class="detail-hotelnavi_item" data-id="ibu_hotel_review_1" style="pointer-events: none; color: #ACB4BF;">
                            호텔 리뷰
                        </span>
                        <span class="detail-hotelnavi_item disabled" data-id="detail-hotel-policy" style="pointer-events: none; color: #ACB4BF;">
                            호텔 정책
                        </span>
                    </div>
                    <div class="detail-hotelnavi_select">
                        <span class="detail-hotelnavi_select_pricedelete">175,000원</span>
                        <span class="detail-hotelnavi_select_price">55,767원</span>
                        <div class="detail-hotelnavi_select_btn">객실 선택</div>
                    </div>
                </div>
            </div>
            <div class="room-list" id="detail-room-list">
                <div class="filter">
                    <div class="freeCancelSuggestion" id="closeFreeCancel">
                        <div class="freeCancelSuggestion_img"></div>
                        <div parentlabel="div" txt="시시각각으로 변화하는 상황을 고려해 일정 변경이 자유로운 {0}무료 취소{/0} 객실을 예약해 보세요." class="suggestion" childlabel="span" label="div">
                            시시각각으로 변화하는 상황을 고려해 일정 변경이 자유로운
                            <span label="span" class="description-link description-link-0">무료 취소</span>
                            객실을 예약해 보세요.
                        </div>
                        <i type="close" class="u-icon u-icon-close" id="closeIcon"></i>
                    </div>
                    <div class="filter-con filter-con-half">
                        <ul class="filter-ul">
                            <!-- 필터들 들어가는 곳 -->
                        </ul>
                    </div>
                </div>
                <div class="roomlist">
                    <div class="roomlist-container container">
                        <div class="roomlist-baseroom" id="roomlist-baseroom-fit">
                            <c:choose>
                                <c:when test="${empty rooms}">
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="room" items="${rooms}">
                                    <form action="reservation" method="post" class="sendReservationForm">
                                        <input type="hidden" name="hotelNo" class="hotelNo" value="" />
                                        <input type="hidden" name="roomId" value="${room.roomId}"/>
                                        <input type="hidden" name="checkIn" class="checkIn" value=""/>
                                        <input type="hidden" name="checkOut" class="checkOut" value=""/>
                                        <input type="hidden" name="diffDays" class="diffDays" value="${diffDays}"/>
                                        <input type="hidden" name="type" value="${room.type}"/>
                                        <input type="hidden" name="adults" class="adults" value=""/>
                                        <input type="hidden" name="childs" class="childs" value=""/>
                                        <input type="hidden" name="hotelId" value="${room.hotelId}"/>
                                        <input type="hidden" name="roomSize" value="${room.roomSize}"/>
                                        <input type="hidden" name="describe" value="${room.describe}"/>
                                        <input type="hidden" name="bedType" value="${room.bedType}"/>
                                        <input type="hidden" name="roomView" value="${room.roomView}"/>
                                        <input type="hidden" name="bedCount" value="${room.bedCount}"/>
                                        <input type="hidden" name="price" value="${room.price}"/>
                                        <input type="hidden" name="eventPrice" value="${room.eventPrice}"/>
                                        <input type="hidden" name="breakfast" value="${room.breakfast}"/>
                                        <input type="hidden" name="roomRef" value="${room.roomRef}"/>
                                        <input type="hidden" name="roomBooth" value="${room.roomBooth}"/>
                                        <input type="hidden" name="roomTv" value="${room.roomTv}"/>
                                        <input type="hidden" name="roomAircon" value="${room.roomAircon}"/>
                                        <input type="hidden" name="roomSmoking" value="${room.roomSmoking}"/>
                                        <input type="hidden" name="roomWifi" value="${room.roomWifi}"/>
                                        <input type="hidden" name="addr1" value="${hotelInfo.addr1}"/>
                                        <input type="hidden" name="hotelStar" value="${hotelInfo.hotelStar}"/>
                                        <input type="hidden" name="name" value="${hotelInfo.name}"/>
                                        <input type="hidden" name="hasFrontDesk" value="${hotelInfo.hasFrontDesk}"/>
                                        <input type="hidden" name="hasrestaurant" value="${hotelInfo.hasrestaurant}"/>
                                        <input type="hidden" name="hasHotelWifi" value="${hotelInfo.hasHotelWifi}"/>
                                        <input type="hidden" name="hasSmokeBanArea" value="${hotelInfo.hasSmokeBanArea}"/>
                                        <input type="hidden" name="hasCoffeeShop" value="${hotelInfo.hasCoffeeShop}"/>
                                        <input type="hidden" name="roomCount" class="roomCount" value=""/>

                                        <%--자바스크립트 지도 모달용--%>
                                        <input type="hidden" class="mapX" value="${hotelInfo.mapX}"/>
                                        <input type="hidden" class="maxY" value="${hotelInfo.maxY}"/>
                                        <input type="hidden" class="zipCode" value="${hotelInfo.zipCode}"/>
                                        <input type="hidden" class="modifiedDate" value="${hotelInfo.modifiedDate}"/>
                                        <input type="hidden" class="tel" value="${hotelInfo.tel}"/>
                                        <input type="hidden" class="firstImage" value="${hotelInfo.firstImage}"/>

                                        <div class="roomlist-baseroom-card" id="${room.roomId}">
                                            <div class="roomtitle ">
                                                <div class="img-container">
                                                    <div class="m-lazyImg" style="width: 121px; height: 86px;">
                                                        <img class="m-lazyImg__img" src='../../../resources/images/hotel/rooms/${room.photo}'  style="width: 121px; height: 86px; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);">
                                                    </div>
                                                </div>
                                                <div class="baseroomInfo-container">
                                                    <div class="roomname">${room.type}</div>
                                                    <div class="roomEncourage">
                                                        <div class="roomEncourage-encourage">${room.roomView}</div>
                                                    </div>
                                                    <div class="roomFacility">
                                                        <div class="roomFacility-basic">
                                                            <i type="ic_new_fa_acreage" class="u-icon u-icon-ic_new_fa_acreage">
                                                                ${room.roomSize}m²
                                                            </i>
                                                            <%--<i type="ic_new_fa_floor" class="u-icon u-icon-ic_new_fa_floor">
                                                                x-xx층
                                                            </i>--%>
                                                            <div class="line"></div>
                                                        </div>
                                                        <div class="roomFacility-hotFacility">
                                                        <span class="roomFacility-facilities">
                                                            <c:if test="${room.roomBooth eq 'Y'}">
                                                                <i type="ic_new_fa_shower" class="u-icon u-icon-ic_new_fa_shower facilityHover">
                                                                    개별 샤워룸
                                                                </i>
                                                            </c:if>
                                                            <c:if test="${room.roomRef eq 'Y'}">
                                                                <i type="ic_new_fa_fridge" class="u-icon u-icon-ic_new_fa_fridge facilityHover">
                                                                    냉장고
                                                                </i>
                                                            </c:if>
                                                            <c:if test="${room.roomTv eq 'Y'}">
                                                                <i type="ic_new_fa_telephone" class="u-icon u-icon-ic_new_fa_telephone facilityHover">
                                                                    전화기
                                                                </i>
                                                            </c:if>
                                                        </span>
                                                        </div>
                                                    </div>
                                                    <div class="seeroom">
                                                        <span>사진 & 시설 정보</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="roomcard">
                                                <div class="saleroomlist">
                                                    <div class="salecardlist-rooms">
                                                        <div class="ubt-salecard salecard">
                                                            <div class="minpriceroom">
                                                                <div class="icon"></div>
                                                                <span class="content">오늘의 최저가</span>
                                                            </div>
                                                            <div class="salecard-frame">
                                                                <div class="salecard-baseinfo">
                                                                    <div class="bookinfo-desc positive">
                                                                        <i type="=ic_new_fa_confirmation" class="u-icon u-icon-ic_new_fa_confirmation"></i>
                                                                        <span>
                                                                        <span class="bookinfo-desc-span hoverBookInfo">대기없이 바로 확정</span>
                                                                    </span>
                                                                    </div>
                                                                    <div class="bookinfo-desc">
                                                                        <i type="ic_new_fa_breakfast" class="u-icon u-icon-ic_new_fa_breakfast"></i>
                                                                        <span>
                                                                        <span class="bookinfo-desc-span hoverBookInfo hasBreakFast">
                                                                            <c:if test="${room.breakfast eq 'N'}">
                                                                                조식 뷔페 - 별도요금 12,000원
                                                                            </c:if>
                                                                            <c:if test="${room.breakfast eq 'Y'}">
                                                                                조식 뷔페 - 포함
                                                                            </c:if>
                                                                        </span>
                                                                    </span>
                                                                    </div>
                                                                    <div class="bookinfo-desc red">
                                                                        <i type="ic_new_fa_defect" class="u-icon u-icon-ic_new_fa_defect"></i>
                                                                        <span>
                                                                        <span class="bookinfo-desc-span hoverBookInfo">특별 할인가 (환불 불가)</span>
                                                                    </span>
                                                                    </div>
                                                                </div>
                                                                <div class="salecard-personinfo">
                                                                    <div class="adult">
                                                                        <c:forEach begin="1" end="${room.maxGuest}">
                                                                            <i type="ic_new_fa_occupant" class="u-icon u-icon-ic_new_fa_occupant"></i>
                                                                        </c:forEach>
                                                                    </div>
                                                                </div>
                                                                <div class="salecard-facilityInfo">
                                                                    <div class="bed">
                                                                        <div class="bed-icon">
                                                                            <c:forEach begin="1" end="${room.bedCount}">
                                                                                <i type="ic_new_twobeds" class="u-icon u-icon-ic_new_twobeds"></i>
                                                                            </c:forEach>
                                                                        </div>
                                                                        <div class="bed-content">
                                                                            <span class="hover">${room.bedType} ${room.bedCount}개</span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="facility">
                                                                        <c:if test="${room.roomWifi eq 'Y'}">
                                                                            <i type="ic_new_no_fa_wifi" class="u-icon u-icon-ic_new_no_fa_wifi hover"></i>
                                                                        </c:if>
                                                                        <c:if test="${room.roomSmoking eq 'Y'}">
                                                                            <i type="ic_new_fa_no_smoking" class="u-icon u-icon-ic_new_fa_no_smoking hover"></i>
                                                                        </c:if>
                                                                        <c:if test="${room.roomTv eq 'Y'}">
                                                                            <i type="window" class="u-icon u-icon-window hover"></i>
                                                                        </c:if>
                                                                    </div>
                                                                </div>
                                                                <div class="salecard-priceinfo">
                                                                    <div class="salecard-priceinfo_top">
                                                                        <div class="salecard-priceinfo_top_left">
                                                                            <div class="des-with-icon orange" style="justify-content: flex-end;">
                                                                                <i class="u-icon u-icon-ic_new_tripcoins normal-icon undefined" type="ic_new_tripcoins" style="font-size: 12px; height: 12px; vertical-align: baseline;"></i>
                                                                                <span class="desc-text orange hover" style="font-size: 14px;" id="forCoin" data-minCoin="<fmt:formatNumber pattern="##,###">${room.eventPrice*0.03}</fmt:formatNumber>"><fmt:formatNumber pattern="##,###">${room.eventPrice*0.03}</fmt:formatNumber> 막놀자코인 추가적립</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="salecard-priceinfo_bottom">
                                                                        <div class="salecard-priceinfo_bottom_left">
                                                                            <div class="percent">
                                                                                20% 할인
                                                                            </div>
                                                                            <div class="price">
                                                                                <span id="listOriginalPrice" class="price-delete"><fmt:formatNumber pattern="##,###">${room.price}</fmt:formatNumber>원</span>
                                                                                <div class="price-display labelColor" id="detail-real-price">
                                                                                    <div id="listEventPrice"><fmt:formatNumber pattern="##,###">${room.eventPrice}</fmt:formatNumber>원</div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="note">1박당 객실요금 (세금 포함)</div>
                                                                        </div>
                                                                        <div class="salecard-priceinfo_bottom_right">
                                                                            <div class="paytype">지금 결제</div>
                                                                            <div class="book-box">
                                                                                <button type="button" class="book">예약</button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </c:forEach>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
                <section class="hotel-detail_info_review">
                    <div class="m-reviewsList">
                        <h2 class="o-module-tit">호텔 리뷰</h2>
                        <div class="m-tab">

                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>

<!-- Fotter 시작 Container -->
<div class="container">
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

<!-- 회원가입을 누를시 나오는 모달 -->
<div class="modal-outline">
    <div class="modal fade" id="login-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">로그인</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="modal-login" method="post" action="/login">
                        <div class="row px-2 mb-2">
                            <p>아이디</p>
                            <input type="email" class="modal-form-control" id="loginUserId" name="id"
                                   placeholder="이메일 주소"/>
                        </div>
                        <div class="row px-2 mb-2">
                            <p>비밀번호</p>
                            <input type="password" class="modal-form-control" id="loginUserPwd" name="password"
                                   placeholder="비밀번호를 입력하세요"/>
                        </div>
                        <div class="row px-2 mb-2">
                            <a href="#" class="forgetIdPwd">아이디 찾기</a>
                            <a href="#" class="getForgetPwdNow" style="color:#0d6efd !important">비밀번호 찾기</a>
                            <div class="modal-policy">
                                <p>막놀자닷컴 회원 가입 시 <a href="#" style="color:#0d6efd !important">이용약관</a> 및 <a href="#" style="color:#0d6efd !important">개인정보정책</a>에 동의하는 것으로 간주합니다.</p>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary-w95 mb-5" id="btn-login">로그인</button>
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
                    <p>아직 막놀자닷컴 회원이 아니세요? <a href="#" class="modal2-register" style="color:#0d6efd !important">회원가입 ></a></p>
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
                    <form id="modal-register" method="post" action="/register">
                        <div class="row px-2 mb-2">
                            <p>이메일</p>
                            <input type="email" class="modal-form-control" id="registerUserId" name="id"
                                   placeholder="이메일 주소">
                        </div>
                        <div class="row px-2 mb-2">
                            <p>비밀번호</p>
                            <input type="password" class="modal-form-control" id="registerUserPwd" name="password"
                                   placeholder="비밀번호를 입력하세요">
                        </div>
                        <div class="row px-2 mb-2">
                            <div class="modal-policy-login">
                                <input type="checkbox" name="agreePolicy" value="agree" checked/><span>막놀자닷컴 회원 가입 시 <a
                                    href="#">이용약관</a> 및 <a href="#">개인정보정책</a>에 동의하는 것으로 간주합니다.</span>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary-w95 mb-5" id="btn-register">회원가입</button>
                    </form>
                </div>
                <div class="modal-last-footer">
                    <p>막놀자닷컴 회원이신가요? <a href="#" id="modal2-login" style="color:#0d6efd !important">로그인 ></a></p>
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
                    <p>아직 막놀자닷컴 회원이 아니세요? <a href="#" class="modal2-register" style="color:#0d6efd !important">회원가입 ></a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 사진 클릭시 나오는 모달 -->
<div class="smart-modal_mask" style="display:none;">
    <div class="smart-modal_container gallery-modal hotel-gallery" style="width: 1014px;">
        <div class="smart-modal_title">
            <div></div>
        </div>
        <div class="smart-modal_content" style="padding-bottom: 61%;">
            <div class="hoteldetail-container gallery-container">
                <div class="scrollpanel">
                    <div class="hoteldetail-body">
                        <div>
                            <section class="hoteldetail-main" style="height: calc(100% - 152px);">
                                <article>
                                    <div class="hoteldetail-title PC">
                                        <div class="hoteldetail-title_container"><span
                                                class="u-btn u-btn-radiusnone u-btn-primary" id="hotelPhotosBtn">호텔 제공 사진</span><span
                                                class="u-btn u-btn-radiusnone u-btn-white" id="hotelInfosBtn">호텔 정보</span></div>
                                    </div>
                                    <div class="gallery">
                                        <div class="gallery-window">
                                            <div class="gallery-pic gallery-hotelPic gallery-pic-translate_0">
                                                <div class="gallery-pic-item" style="width: 551.829px; height: 414px;">
                                                    <div class="m-lazyImg" style="width: 551.829px; height: 414px;"><img
                                                            id="mainBigimage"
                                                            class="m-lazyImg__img"
                                                            style="width: 551.829px; height: 414px; background-size:cover; background-repeat: no-repeat; object-fit: cover; background-position: center center; background-image:url(/resources/images/hotel/HotelsInfo/ready.png); background-color: rgb(240, 242, 245);">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <div class="hoteldetail-side gallery-side PC"><h1 class="longText"><span>인기 시설</span>
                                </h1>
                                    <div class="scrollpanel">
                                        <div class="hoteldetail-side-panel hotel gallery-side-panel">
                                            <div>
                                                <ul class="hotelside-facility">
                                                    <c:if test="${hotelInfo.hasHotelWifi eq 'Y'}">
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_wifi"
                                                                                           class="u-icon u-icon-ic_new_fa_wifi"></i><span
                                                            class="hotelside-facility-text">Wi-Fi (공공장소)<span
                                                            class="icon-charge free">(무료)</span></span></li>
                                                    </c:if>
                                                    <c:if test="${hotelInfo.hasrestaurant eq 'Y'}">
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_breakfast"
                                                                                           class="u-icon u-icon-ic_new_fa_breakfast"></i><span
                                                            class="hotelside-facility-text">레스토랑</span></li>
                                                    </c:if>
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_bar"
                                                                                           class="u-icon u-icon-ic_new_fa_bar"></i><span
                                                            class="hotelside-facility-text">바 (Bar)</span></li>
                                                    <c:if test="${hotelInfo.hasSmokeBanArea}">
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_no_smoking"
                                                                                           class="u-icon u-icon-ic_new_fa_no_smoking"></i><span
                                                            class="hotelside-facility-text">금연층</span></li>
                                                    </c:if>
                                                    <li class="hotelside-facility-item"><i type="ic_new_conversion_line"
                                                                                           class="u-icon u-icon-ic_new_conversion_line"></i><span
                                                            class="hotelside-facility-text">환전 서비스</span></li>
                                                    <c:if test="${hotelInfo.hasFrontDesk eq 'Y'}">
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_24h_service"
                                                                                           class="u-icon u-icon-ic_new_fa_24h_service"></i><span
                                                            class="hotelside-facility-text">프론트데스크 (24시간)</span></li>
                                                    </c:if>
                                                    <c:if test="${hotelInfo.hasCoffeeShop eq 'Y'}">
                                                        <li class="hotelside-facility-item"><i type="ic_new_fa_24h_service"
                                                                                               class="u-icon u-icon-ic_new_fa_coffee"></i><span
                                                                class="hotelside-facility-text">커피숍</span></li>
                                                    </c:if>
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_wake_up"
                                                                                           class="u-icon u-icon-ic_new_fa_wake_up"></i><span
                                                            class="hotelside-facility-text">모닝콜 서비스</span></li>
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_gym"
                                                                                           class="u-icon u-icon-ic_new_fa_gym"></i><span
                                                            class="hotelside-facility-text">피트니스센터</span></li>
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_swimming"
                                                                                           class="u-icon u-icon-ic_new_fa_swimming"></i><span
                                                            class="hotelside-facility-text">실내 수영장</span></li>
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_sauna"
                                                                                           class="u-icon u-icon-ic_new_fa_sauna"></i><span
                                                            class="hotelside-facility-text">사우나</span></li>
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_baggage"
                                                                                           class="u-icon u-icon-ic_new_fa_baggage"></i><span
                                                            class="hotelside-facility-text">짐 보관 서비스</span></li>
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_business"
                                                                                           class="u-icon u-icon-ic_new_fa_business"></i><span
                                                            class="hotelside-facility-text">회의실<span
                                                            class="icon-charge nofree"> (별도 요금)</span></span></li>
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_kidstoys"
                                                                                           class="u-icon u-icon-ic_new_fa_kidstoys"></i><span
                                                            class="hotelside-facility-text">키즈클럽</span></li>
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_polyglot"
                                                                                           class="u-icon u-icon-ic_new_fa_polyglot"></i><span
                                                            class="hotelside-facility-text">다국어 서비스 직원</span></li>
                                                    <li class="hotelside-facility-item"><i type="order_printer"
                                                                                           class="u-icon u-icon-order_printer"></i><span
                                                            class="hotelside-facility-text">팩스•복사 서비스<span
                                                            class="icon-charge nofree"> (별도 요금)</span></span></li>
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_multimedia"
                                                                                           class="u-icon u-icon-ic_new_fa_multimedia"></i><span
                                                            class="hotelside-facility-text">다목적홀</span></li>
                                                    <li class="hotelside-facility-item"><i type="ic_new_fa_atm"
                                                                                           class="u-icon u-icon-ic_new_fa_atm"></i><span
                                                            class="hotelside-facility-text">현금지급기(ATM)</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hoteldetail-selectroom PC">
                                        <button type="button" class="u-btn u-btn-primary" id="closeModalText"><span>객실 선택</span></button>
                                    </div>
                                </div>
                            </section>
                            <div class="gallery-thumbnail">
                                <ul>
                                    <!--이미지 추가되는곳 -->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hoteldetail-selectroom iPad">
                    <button type="button" class="u-btn u-btn-primary"><span>객실 선택</span></button>
                </div>
            </div>
        </div>
        <i type="ic_new_close_line" class="u-icon u-icon-ic_new_close_line smart-modal_close"></i></div>
</div>


<!-- 더보기 & 호텔 정보 눌렀을 때 실행되는 모달 -->
<div class="m-confirm-mask m-mask" style="display:none;" id="moreInfoHotelInfo">
    <div class="m-confirm hotel-detail-desc-modal popIn"><span class="m-confirm_close"><i type="close"
                                                                                          class="u-icon u-icon-close"></i></span>
        <div class="m-confirm_content clearfix">
            <div class="tipTxt">
                <div class="title">호텔 소개</div>
                <div class="content">
                    <div class="popshowDesc">
                        <img class="hotelImg"
                             src="/resources/images/hotel/HotelsInfo/ready.png">
                        <div class="hotelDesc">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 지도 클릭하면 나타나는 모달 -->
<div class="mapModal">
    <div class="modal_content">
        <div style="width:100%; height:100%; display:flex;">
            <div style="width:80%; height:100%">
                <div class="map_wrap">
                    <div id="map" style="width:100%;height: 100%;position:relative;overflow:hidden;"></div>
                    <ul id="category">
                        <li id="BK9" data-order="0">
                            <span class="category_bg bank"></span>
                            은행
                        </li>
                        <li id="MT1" data-order="1">
                            <span class="category_bg mart"></span>
                            마트
                        </li>
                        <li id="PM9" data-order="2">
                            <span class="category_bg pharmacy"></span>
                            약국
                        </li>
                        <li id="OL7" data-order="3">
                            <span class="category_bg oil"></span>
                            주유소
                        </li>
                        <li id="CE7" data-order="4">
                            <span class="category_bg cafe"></span>
                            카페
                        </li>
                        <li id="CS2" data-order="5">
                            <span class="category_bg store"></span>
                            편의점
                        </li>
                    </ul>
                </div>
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
                    <p class="detail-map-list_price_box"><span class="price" id="modalBasicPrice"></span></p>
                    <p class="detail-map-list_price_note">1박당 객실요금 (세금 포함)</p>
                    <div class="detail-map-list_select">객실 선택</div>

                </section>
                <section class="detail-map-list_tab active-traffic">
                    <i type="flight" class="u-icon u-icon-flight"></i>
                    <span class="detail-map-list_tab_item">공항</span></section>
                <section class="detail-map-list_list">
                    <div class="detail-map-poilist_container">
                        <div class="detail-map-poilist_category">
                            <div id="airPort-INC" class="detail-map-poilist_item">
                                <div class="detail-map-poilist_item_content"><p class="detail-map-poilist_item_title">인천 국제공항</p>
                                    <p class="detail-map-poilist_item_poi"></p></div>
                                <div class="detail-map-poilist_item_info" id="INC"></div>
                            </div>

                            <div id="airPort-CJU" class="detail-map-poilist_item">
                                <div class="detail-map-poilist_item_content"><p class="detail-map-poilist_item_title">제주 국제공항</p>
                                    <p class="detail-map-poilist_item_poi"></p></div>
                                <div class="detail-map-poilist_item_info" id="CJU"></div>
                            </div>

                            <div id="airPort-GMP" class="detail-map-poilist_item">
                                <div class="detail-map-poilist_item_content"><p class="detail-map-poilist_item_title">김포 국제공항</p>
                                    <p class="detail-map-poilist_item_poi"></p></div>
                                <div class="detail-map-poilist_item_info" id="GMP"></div>
                            </div>

                            <div id="airPort-PUS" class="detail-map-poilist_item">
                                <div class="detail-map-poilist_item_content"><p class="detail-map-poilist_item_title">김해 국제공항</p>
                                    <p class="detail-map-poilist_item_poi"></p></div>
                                <div class="detail-map-poilist_item_info" id="PUS"></div>
                            </div>

                            <div id="airPort-TAE" class="detail-map-poilist_item">
                                <div class="detail-map-poilist_item_content"><p class="detail-map-poilist_item_title">대구 국제공항</p>
                                    <p class="detail-map-poilist_item_poi"></p></div>
                                <div class="detail-map-poilist_item_info" id="TAE"></div>
                            </div>

                            <div id="airPort-CJJ" class="detail-map-poilist_item">
                                <div class="detail-map-poilist_item_content"><p class="detail-map-poilist_item_title">청주 국제공항</p>
                                    <p class="detail-map-poilist_item_poi"></p></div>
                                <div class="detail-map-poilist_item_info" id="CJJ"></div>
                            </div>

                            <div id="airPort-YNY" class="detail-map-poilist_item">
                                <div class="detail-map-poilist_item_content"><p class="detail-map-poilist_item_title">양양 국제공항</p>
                                    <p class="detail-map-poilist_item_poi"></p></div>
                                <div class="detail-map-poilist_item_info" id="YNY"></div>
                            </div>
                        </div>
                    </div>
                </section>
                <i class="u-icon u-icon-close detail-map-list_close" id="mapModalCloseBtn" type="close"></i></div>
        </div>
    </div>
</div>
<%--카카오맵--%>
<%--<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=04c5761c7c14f56e85653c2337fcd203"></script>--%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=04c5761c7c14f56e85653c2337fcd203&libraries=services"></script>

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

    // 객실 선택시 이동
    $(".detail-headline-price_select, #closeModalText").click(function(e){
        e.stopPropagation();
        $('.smart-modal_mask').css('display','none');
        let trip = $(".detailPage_goldenVip").offset();
        $('html').animate({
            scrollTop: trip.top
        });
    })

    // 사진 && 모달 안의 '호텔 제공 사진' 클릭시 상세정보 출력
    $('.detail-headalbum_container,#hotelPhotosBtn, .detail-headamenity_showmore, .seeroom').on('click',function(){
        $('.smart-modal_mask').css('display','flex');
        $('#hotelInfosBtn').removeClass('.u-btn-primary');
        var hotelNo = getParameter('no');
        $('.gallery-thumbnail ul li').removeClass('selected');
        $('.gallery-thumbnail ul li:first').addClass('selected');

        $.ajax({
            type:'GET',
            crossDomain: true,
            url:'http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailInfo',
            data: {ServiceKey:'xxH+5pNF785sUeZ3C6Msv0Djp8VUC1Sys+NzBte8IL6ZQVGZp1S4FS4xG+V8yHWyLXbTNBUL/gjPhGLz12NSHA==',contentTypeId:'32',contentId:hotelNo,MobileOS:'ETC',MobileApp:'TourAPI3.0_Guide',listYN:'Y'},
            dataType:'xml'
        })
        .done(function(xmcDoc){
            $(xmcDoc).find('item').each(function(index, item){
                var image1 = $(item).find('roomimg1').text();
                var image2 = $(item).find('roomimg2').text();
                var image3 = $(item).find('roomimg3').text();
                var image4 = $(item).find('roomimg4').text();

                var $body = $('.gallery-thumbnail ul');
                var $item = "";

                if(image1 != '') {
                    $item +=     '<li class="">'
                    $item +=         '<div class="m-lazyImg" style="width: 100%; height: 100%;">';
                    $item +=             '<div class="m-lazyImg__bg" style="width: 100%; height: 100%; background-color: rgb(240, 242, 245); background-size: cover; background-position: center center; background-repeat: no-repeat; background-image: url(' +  image1  + ');"></div>'
                    $item +=         '</div>'
                    $item +=     '</li>'
                    $($body).append($item)
                    $item = '';
                }
                if(image2 != '') {
                    $item +=     '<li class="">'
                    $item +=         '<div class="m-lazyImg" style="width: 100%; height: 100%;">';
                    $item +=             '<div class="m-lazyImg__bg"  style="width: 100%; height: 100%; background-color: rgb(240, 242, 245); background-size: cover; background-position: center center; background-repeat: no-repeat; background-image: url(' +  image2  + ');"></div>'
                    $item +=         '</div>'
                    $item +=     '</li>'
                    $($body).append($item)
                    $item = '';
                }
                if(image3!= '') {
                    $item +=     '<li class="">'
                    $item +=         '<div class="m-lazyImg" style="width: 100%; height: 100%;">';
                    $item +=             '<div class="m-lazyImg__bg"  style="width: 100%; height: 100%; background-color: rgb(240, 242, 245); background-size: cover; background-position: center center; background-repeat: no-repeat; background-image: url(' +  image3  + ');"></div>'
                    $item +=         '</div>'
                    $item +=     '</li>'
                    $($body).append($item)
                    $item = '';
                }
                if(image4 != '') {
                    $item +=     '<li class="">'
                    $item +=         '<div class="m-lazyImg" style="width: 100%; height: 100%;">';
                    $item +=             '<div class="m-lazyImg__bg"  style="width: 100%; height: 100%; background-color: rgb(240, 242, 245); background-size: cover; background-position: center center; background-repeat: no-repeat; background-image: url(' +  image4  + ');"></div>'
                    $item +=         '</div>'
                    $item +=     '</li>'
                    $($body).append($item);
                }
            })
        })
        .fail(function(){
            alert('조회 중 에러가 발생하였습니다.')
        })
    })
    // 모달 이미지 SELECT 설정
    $(document).on('click','.gallery-thumbnail ul li',function(){
        $('.gallery-thumbnail ul li').removeClass('selected');
        $(this).addClass('selected');
        var selectedImage = $(this).find('.m-lazyImg__bg').css('backgroundImage');
        $('#mainBigimage').css('backgroundImage',selectedImage);
    })

    // 호텔 사진 모달 닫기
    $('.smart-modal_close').on('click',function(){
        $('.smart-modal_mask').css('display','none');
    })

    //호텔 정보 클릭시 발생되는 이벤트
    $('#hotelInfosBtn, .detail-headline_desc_showmore').on('click',function(){
        $('.smart-modal_mask').css('display','none');
        $(".m-mask").css('display','flex');

    })
    // 호텔 정보에 있는 X 클릭시 발생하는 이벤트
    $('.m-confirm_close').on('click',function(){
        $(".m-mask").css('display','none');
    })

    // 호텔 정보에 가까운 거리 찾기 & 공항 안내하기
    var mapX = $('.mapX').val();
    var maxY = $('.maxY').val();

    // 인천공항까지의 거리
    var polyline=new daum.maps.Polyline({
        path : [
            new daum.maps.LatLng(37.448716053808596,126.45126773429946),
            new daum.maps.LatLng(maxY,mapX)
        ]
    });
    var toINC = Math.round(polyline.getLength());
    if(toINC >= 1000){
        toINC = toINC/1000
        $('#airPort-INC').find('.detail-map-poilist_item_poi').text('호텔에서 직선거리: ' + toINC.toFixed(1) + 'km');
        $('#INC').text(toINC.toFixed(1) + 'km');
    }else{
        $('#airPort-INC').find('.detail-map-poilist_item_poi').text('호텔에서 직선거리: ' + toINC + 'm');
        $('#INC').text(toINC + 'm');
    }

    // 제주공항까지의 거리
    var polyline=new daum.maps.Polyline({
        path : [
            new daum.maps.LatLng(33.511111,126.492778),
            new daum.maps.LatLng(maxY,mapX)
        ]
    });
    var toCJU = Math.round(polyline.getLength());
    if(toCJU >= 1000){
        toCJU = toCJU/1000
        $('#airPort-CJU').find('.detail-map-poilist_item_poi').text('호텔에서 직선거리: ' + toCJU.toFixed(1) + 'km');
        $('#CJU').text(toCJU.toFixed(1) + 'km');
    }else{
        $('#airPort-CJU').find('.detail-map-poilist_item_poi').text('호텔에서 직선거리: ' + toCJU + 'm');
        $('#CJU').text(CJU + 'm');
    }

    // 김포공항까지의 거리
    var polyline=new daum.maps.Polyline({
        path : [
            new daum.maps.LatLng(37.558056,126.790556),
            new daum.maps.LatLng(maxY,mapX)
        ]
    });
    var toGMP = Math.round(polyline.getLength());
    if(toGMP >= 1000){
        toGMP = toGMP/1000
        $('#airPort-GMP').find('.detail-map-poilist_item_poi').text('호텔에서 직선거리: ' + toGMP.toFixed(1) + 'km');
        $('#GMP').text(toGMP.toFixed(1) + 'km');
    }else{
        $('#airPort-GMP').find('.detail-map-poilist_item_poi').text('호텔에서 직선거리: ' + toGMP + 'm');
        $('#GMP').text(toGMP + 'm');
    }

    // 김해공항까지의 거리
    var polyline=new daum.maps.Polyline({
        path : [
            new daum.maps.LatLng(35.179444,128.938056),
            new daum.maps.LatLng(maxY,mapX)
        ]
    });
    var toPUS = Math.round(polyline.getLength());
    if(toPUS >= 1000){
        toPUS = toPUS/1000
        $('#airPort-PUS').find('.detail-map-poilist_item_poi').text('호텔에서 직선거리: ' + toPUS.toFixed(1) + 'km');
        $('#PUS').text(toPUS.toFixed(1) + 'km');
    }else{
        $('#airPort-PUS').find('.detail-map-poilist_item_poi').text('호텔에서 직선거리: ' + toPUS + 'm');
        $('#PUS').text(toPUS + 'm');
    }

    // 대구공항까지의 거리
    var polyline=new daum.maps.Polyline({
        path : [
            new daum.maps.LatLng(35.893889,128.658889),
            new daum.maps.LatLng(maxY,mapX)
        ]
    });
    var toTAE = Math.round(polyline.getLength());
    if(toTAE >= 1000){
        toTAE = toTAE/1000
        $('#airPort-TAE').find('.detail-map-poilist_item_poi').text('호텔에서 직선거리: ' + toTAE.toFixed(1) + 'km');
        $('#TAE').text(toTAE.toFixed(1) + 'km');
    }else{
        $('#airPort-TAE').find('.detail-map-poilist_item_poi').text('호텔에서 직선거리: ' + toTAE + 'm');
        $('#TAE').text(toTAE + 'm');
    }

    // 청주공항까지의 거리
    var polyline=new daum.maps.Polyline({
        path : [
            new daum.maps.LatLng(36.716389,127.498889),
            new daum.maps.LatLng(maxY,mapX)
        ]
    });
    var toCJJ = Math.round(polyline.getLength());
    if(toCJJ >= 1000){
        toCJJ = toCJJ/1000
        $('#airPort-CJJ').find('.detail-map-poilist_item_poi').text('호텔에서 직선거리: ' + toCJJ.toFixed(1) + 'km');
        $('#CJJ').text(toCJJ.toFixed(1) + 'km');
    }else{
        $('#airPort-CJJ').find('.detail-map-poilist_item_poi').text('호텔에서 직선거리: ' + toCJJ + 'm');
        $('#CJJ').text(toCJJ + 'm');
    }

    // 양양공항까지의 거리
    var polyline=new daum.maps.Polyline({
        path : [
            new daum.maps.LatLng(38.061111,128.668889),
            new daum.maps.LatLng(maxY,mapX)
        ]
    });
    var toYNY = Math.round(polyline.getLength());
    if(toYNY >= 1000){
        toYNY = toYNY/1000
        $('#airPort-YNY').find('.detail-map-poilist_item_poi').text('호텔에서 직선거리: ' + toYNY.toFixed(1) + 'km');
        $('#YNY').text(toYNY.toFixed(1) + 'km');
    }else{
        $('#airPort-YNY').find('.detail-map-poilist_item_poi').text('호텔에서 직선거리: ' + toYNY + 'm');
        $('#YNY').text(toYNY + 'm');
    }

    // 모든 공항까지의 거리 계산 담아서 객체에 저장
    var arrs = [
        {name: '인천 국제공항',distance:toINC },
        {name: '제주 국제공항',distance:toCJU },
        {name: '양양 국제공항',distance:toYNY },
        {name: '김포 국제공항',distance:toGMP },
        {name: '김해 국제공항',distance:toPUS },
        {name: '대구 국제공항',distance:toTAE },
        {name: '청주 국제공항',distance:toCJJ },
    ]
    // 거리가 가까운 순으로 정렬한다.
    result = arrs.sort(function(a,b){
        return a.distance - b.distance;
    })
    // 가장 가까운 거리의 공항을 Detail 페이지의 공항 정보에 표시한다.
    var naerAirportName = result[0].name;
    var nearAirportDistance = result[0].distance
    $('.item_distance').text(naerAirportName + " : " + nearAirportDistance.toFixed(1) + 'km')

    // 지도에서 호텔보기, 맵 모양 클릭시 위치 표시
    var body = $('body');
    $('.detail-headline_position_showmore, .detail-headtraffic_map_icon, .detail-headtraffic_traffic_desc_showmore').on('click',function(){
        $(body).css('overflow','hidden');

        $('.mapModal').fadeIn();

        // 맵 클릭시 실행되는 모달
        var hotelName = $('.hotelTag-title_h1').text();
        var hotelAddr = $.trim($('.detail-headline_position_text').text());
        var basicPrice = $('#mainEventPrice').text();
        var mapX = $('.mapX').val();
        var maxY = $('.maxY').val();
        var zipCode = $('.zipCode').val();
        var tel = $('.tel').val();
        var firstImage = $('.firstImage').val();
        if(firstImage == ''){firstImage = '/resources/images/hotel/HotelsInfo/ready.png'}
        $('#modalBasicPrice').text(basicPrice);


        var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}),
            contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다
            markers = [], // 마커를 담을 배열입니다
            currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다

        var mapContainer = document.getElementById('map'), // 지도의 중심좌표
            mapOption = {
                center: new kakao.maps.LatLng(maxY, mapX), // 지도의 중심좌표
                level: 1 // 지도의 확대 레벨
            };

        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

        // 장소 검색 객체를 생성합니다
        var ps = new kakao.maps.services.Places(map);

        // 지도에 idle 이벤트를 등록합니다
        kakao.maps.event.addListener(map, 'idle', searchPlaces);

        // 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다
        contentNode.className = 'placeinfo_wrap';

        // 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
        // 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 kakao.maps.event.preventMap 메소드를 등록합니다
        addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
        addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);

        // 커스텀 오버레이 컨텐츠를 설정합니다
        placeOverlay.setContent(contentNode);

        // 각 카테고리에 클릭 이벤트를 등록합니다
        addCategoryClickEvent();

        // 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
        function addEventHandle(target, type, callback) {
            if (target.addEventListener) {
                target.addEventListener(type, callback);
            } else {
                target.attachEvent('on' + type, callback);
            }
        }

        // 카테고리 검색을 요청하는 함수입니다
        function searchPlaces() {
            if (!currCategory) {
                return;
            }

            // 커스텀 오버레이를 숨깁니다
            placeOverlay.setMap(null);

            // 지도에 표시되고 있는 마커를 제거합니다
            removeMarker();

            ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true});
        }

        // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
        function placesSearchCB(data, status, pagination) {
            if (status === kakao.maps.services.Status.OK) {

                // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
                displayPlaces(data);
            } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
                // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

            } else if (status === kakao.maps.services.Status.ERROR) {
                // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요

            }
        }

        // 지도에 마커를 표출하는 함수입니다
        function displayPlaces(places) {

            // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
            // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
            var order = document.getElementById(currCategory).getAttribute('data-order');



            for ( var i=0; i<places.length; i++ ) {

                // 마커를 생성하고 지도에 표시합니다
                var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);

                // 마커와 검색결과 항목을 클릭 했을 때
                // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
                (function(marker, place) {
                    kakao.maps.event.addListener(marker, 'click', function() {
                        displayPlaceInfo(place);
                    });
                })(marker, places[i]);
            }
        }

        function addMarker(position, order) {
            var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                imageSize = new kakao.maps.Size(27, 28),  // 마커 이미지의 크기
                imgOptions =  {
                    spriteSize : new kakao.maps.Size(72, 208), // 스프라이트 이미지의 크기
                    spriteOrigin : new kakao.maps.Point(46, (order*36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                    offset: new kakao.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                },
                markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                marker = new kakao.maps.Marker({
                    position: position, // 마커의 위치
                    image: markerImage
                });

            marker.setMap(map); // 지도 위에 마커를 표출합니다
            markers.push(marker);  // 배열에 생성된 마커를 추가합니다

            return marker;
        }

        // 지도 위에 표시되고 있는 마커를 모두 제거합니다
        function removeMarker() {
            for ( var i = 0; i < markers.length; i++ ) {
                markers[i].setMap(null);
            }
            markers = [];
        }

        // 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
        function displayPlaceInfo (place) {
            var content = '<div class="placeinfo">' +
                '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';

            if (place.road_address_name) {
                content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
                    '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
            }  else {
                content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
            }

            content += '    <span class="tel">' + place.phone + '</span>' +
                '</div>' +
                '<div class="after"></div>';

            contentNode.innerHTML = content;
            placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
            placeOverlay.setMap(map);
        }

        // 각 카테고리에 클릭 이벤트를 등록합니다
        function addCategoryClickEvent() {
            var category = document.getElementById('category'),
                children = category.children;

            for (var i=0; i<children.length; i++) {
                children[i].onclick = onClickCategory;
            }
        }

        // 카테고리를 클릭했을 때 호출되는 함수입니다
        function onClickCategory() {
            var id = this.id,
                className = this.className;

            placeOverlay.setMap(null);

            if (className === 'on') {
                currCategory = '';
                changeCategoryClass();
                removeMarker();
            } else {
                currCategory = id;
                changeCategoryClass(this);
                searchPlaces();
            }
        }

        // 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
        function changeCategoryClass(el) {
            var category = document.getElementById('category'),
                children = category.children,
                i;

            for ( i=0; i<children.length; i++ ) {
                children[i].className = '';
            }

            if (el) {
                el.className = 'on';
            }
        }


        // 지도에 마커를 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: new kakao.maps.LatLng(maxY, mapX)
        });

        // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
        var mapTypeControl = new kakao.maps.MapTypeControl();

        // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
        // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
        map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

        // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
        var zoomControl = new kakao.maps.ZoomControl();
        map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

        // 지도에 교통정보를 표시하도록 지도타입을 추가합니다
        map.addOverlayMapTypeId(kakao.maps.MapTypeId.TRAFFIC);

        // 커스텀 오버레이에 표시할 컨텐츠 입니다
        // 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
        // 별도의 이벤트 메소드를 제공하지 않습니다
        var content = '<div class="wrap">' +
            '    <div class="info">' +
            '        <div class="title">' +
                hotelName +
            '            <div class="close" title="닫기"></div>' +
            '        </div>' +
            '        <div class="body">' +
            '            <div class="img">' +
            '                <img src="'+firstImage+'" width="73" height="70">' +
            '           </div>' +
            '            <div class="desc">' +
            '                <div class="ellipsis">' + hotelAddr + '</div>' +
            '                <div class="jibun ellipsis">우편번호 : ' + zipCode + '</div>' +
            '                <div class="jibun ellipsis">연락처 : ' + tel + '</div>' +
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

    // 지도모달 닫기
    $('#mapModalCloseBtn, .detail-map-list_select').on('click',function(){
        $('.mapModal').fadeOut();
        $(body).css('overflow','');
    })

    // 지역 목록을 보여주는 이벤트
    $("#hotels-destination").on('click',function(e) {
        e.preventDefault();
        let picker = $("#search-picker").show();
        $(".search-box-drop-list").hide();

        $(".cityName").mouseover(function(){

            $(this).css('background-color','#A4C4EE');

            $($(this)).on('click',function(f) {
                f.preventDefault();
                var textData = $.trim($(this).text());

                $("#hotels-destination").val(textData);
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
        if(!$(e.target).hasClass("show-hightlight-1")) {
            $("#search-picker").hide();
        }
    });

    // 호텔리스트 검색 기능
    $("#hotels-destination").keyup(delay(function(){

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
        $('#hotels-destination').val($.trim($(this).find("div p:eq(0)").text()));
        $('#keyword').val($(this).find("div p:eq(1)").text());

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

    // close 클릭하면 closeFreeCancel 사라지게하기
    $("#closeIcon").click(function(){
        $("#closeFreeCancel").remove();
    })

    // 호텔 디테일 가져오기
    let localHotelIdNo = $('#localHotelIdNo').data('hotelidnumber');
    $.ajax({
        type:"GET",
        crossDomain: true,
        url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon",
        data:{ServiceKey:'xxH+5pNF785sUeZ3C6Msv0Djp8VUC1Sys+NzBte8IL6ZQVGZp1S4FS4xG+V8yHWyLXbTNBUL/gjPhGLz12NSHA==',contentId:localHotelIdNo,MobileOS:'ETC',MobileApp:'TourAPI3.0_Guide',defaultYN:'Y',firstImageYN:'Y',areacodeYN:'Y',catcodeYN:'Y',addrinfoYN:'Y',mapinfoYN:'Y',overviewYN:'Y',transGuideYN:'Y'},
        dataType:'xml'
    })
    .done(function(response){

        var text = $(response).find('overview').text();
        $.trim($('#localHotelIdNo').text(text));
        $('.hotelDesc').text(text);
    })
    .fail(function(){
        alert('조회중 에러가 발생하였습니다.');
    })

    // 호텔 사진 가져오기
    $.ajax({
        type:"GET",
        crossDomain: true,
        url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailImage",
        data:{ServiceKey:'xxH+5pNF785sUeZ3C6Msv0Djp8VUC1Sys+NzBte8IL6ZQVGZp1S4FS4xG+V8yHWyLXbTNBUL/gjPhGLz12NSHA==',contentId:localHotelIdNo,MobileOS:'ETC',MobileApp:'TourAPI3.0_Guide',imageYN:'Y'},
        dataType:'xml'
    })
        .done(function(response){
            var images = $(response).find('item').find('originimgurl');
            var image1, image2, image3, image4, image5, image6, image7;

                image1 = $(images[0]).text();
                image2 = $(images[1]).text();
                image3 = $(images[2]).text();
                image4 = $(images[3]).text();
                image5 = $(images[4]).text();
                image6 = $(images[5]).text();
                image7 = $(images[6]).text();

            var $body = $('.gallery-thumbnail ul');
            var $item = "";

            // 메인이미지 추가
            if(image1 == ''){
                $('#mainImage').append('<img class="m-lazyImg__img" src="/resources/images/hotel/HotelsInfo/ready.png" style="width: 100%; height: 100%; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);">')
            }else{
                $('#mainImage').append('<img class="m-lazyImg__img" src=' + image1 +' style="width: 100%; height: 100%; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);">')
                $item +=     '<li class="">'
                $item +=         '<div class="m-lazyImg" style="width: 100%; height: 100%;">';
                $item +=             '<div class="m-lazyImg__bg"  style="width: 100%; height: 100%; background-color: rgb(240, 242, 245); background-size: cover; background-position: center center; background-repeat: no-repeat; background-image: url(' +  image1  + ');"></div>'
                $item +=         '</div>'
                $item +=     '</li>'
                $($body).append($item)
                $item = '';
                $('#mainBigimage').css('backgroundImage',"url("+image1+")");
                $('.hotelImg').attr('src',image1);
            }
            // 나머지 이미지들 존재시 추가, 아닐시 이미지 준비중 표시
            if(image2 != ''){
                $("#image1").attr('src',image2);
                $item +=     '<li class="">'
                $item +=         '<div class="m-lazyImg" style="width: 100%; height: 100%;">';
                $item +=             '<div class="m-lazyImg__bg"  style="width: 100%; height: 100%; background-color: rgb(240, 242, 245); background-size: cover; background-position: center center; background-repeat: no-repeat; background-image: url(' +  image2  + ');"></div>'
                $item +=         '</div>'
                $item +=     '</li>'
                $($body).append($item)
                $item = '';
            }
            if(image3 != ''){
                $("#image2").attr('src',image3);
                $item +=     '<li class="">'
                $item +=         '<div class="m-lazyImg" style="width: 100%; height: 100%;">';
                $item +=             '<div class="m-lazyImg__bg" style="width: 100%; height: 100%; background-color: rgb(240, 242, 245); background-size: cover; background-position: center center; background-repeat: no-repeat; background-image: url(' +  image3  + ');"></div>'
                $item +=         '</div>'
                $item +=     '</li>'
                $($body).append($item)
                $item = '';
            }
            if(image4 != '') {
                $("#image3").attr('src',image4);
                $item +=     '<li class="">'
                $item +=         '<div class="m-lazyImg" style="width: 100%; height: 100%;">';
                $item +=             '<div class="m-lazyImg__bg" style="width: 100%; height: 100%; background-color: rgb(240, 242, 245); background-size: cover; background-position: center center; background-repeat: no-repeat; background-image: url(' +  image4  + ');"></div>'
                $item +=         '</div>'
                $item +=     '</li>'
                $($body).append($item)
                $item = '';
            }
            if(image5 != '') {
                $("#image4").attr('src',image5);
                $item +=     '<li class="">'
                $item +=         '<div class="m-lazyImg" style="width: 100%; height: 100%;">';
                $item +=             '<div class="m-lazyImg__bg" style="width: 100%; height: 100%; background-color: rgb(240, 242, 245); background-size: cover; background-position: center center; background-repeat: no-repeat; background-image: url(' +  image5  + ');"></div>'
                $item +=         '</div>'
                $item +=     '</li>'
                $($body).append($item)
                $item = '';
            }
            if(image6 != '') {
                $("#image5").attr('src',image6);
                $item +=     '<li class="">'
                $item +=         '<div class="m-lazyImg" style="width: 100%; height: 100%;">';
                $item +=             '<div class="m-lazyImg__bg" style="width: 100%; height: 100%; background-color: rgb(240, 242, 245); background-size: cover; background-position: center center; background-repeat: no-repeat; background-image: url(' +  image6  + ');"></div>'
                $item +=         '</div>'
                $item +=     '</li>'
                $($body).append($item)
                $item = '';
            }
            if(image7 != '') {
                $("#image6").attr('src',image7);
                $item +=     '<li class="">'
                $item +=         '<div class="m-lazyImg" style="width: 100%; height: 100%;">';
                $item +=             '<div class="m-lazyImg__bg" style="width: 100%; height: 100%; background-color: rgb(240, 242, 245); background-size: cover; background-position: center center; background-repeat: no-repeat; background-image: url(' +  image7  + ');"></div>'
                $item +=         '</div>'
                $item +=     '</li>'
                $($body).append($item)
                $item = '';
            }
        })
        .fail(function(){
            alert('조회중 에러가 발생하였습니다.');
        })
    // 호텔 헤더부분에 가격 넣기
    $("#mainPrice").text($("#listOriginalPrice").text());
    $("#mainEventPrice").text($("#listEventPrice").text());
    // 헤더부분 최소코인 추가
    var minCoinInfo = $("#forCoin").data("mincoin");
    $('#displayCoint').text(minCoinInfo + ' 막놀자 코인');

    // Parameter값 가져오는 함수
    function getParameter(name) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
            results = regex.exec(location.search);
        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
    // 페이지에 들어올때, 넘어온 값을 전달받아서 navbar 에 넣어준다.
    var checkinDate = getParameter("checkIn");
    var checkOutDate = getParameter("checkOut");
    var traveller = getParameter("traveler");
    var areaName = getParameter("areaName");

    $("#input-start").val(checkinDate);
    $("#input-end").val(checkOutDate);
    $("#info").val(traveller);
    $("#hotels-destination").val(areaName);

    $(document).on('click','.book-box',function(){
        // 인원수
        var roomCount = traveller.substring(2,3);
        var adultCount = traveller.substring(7,9);
        adultCount = adultCount.replace(',','');
        adultCount = adultCount.replace('명','');
        var foundI = traveller.indexOf('아이');
        var childCount = traveller.substring(foundI);
        childCount = childCount.replace('명','');
        childCount = childCount.replace('아이','');
        childCount = childCount.replace(' ','');

        $(".hotelNo").val(localHotelIdNo);
        $(".roomCount").val(roomCount);
        $(".adults").val(adultCount);
        $(".childs").val(childCount);
        $(".checkIn").val(checkinDate);
        $(".checkOut").val(checkOutDate);

        $(this).closest('.sendReservationForm').submit();
    })

    /*호텔 옵션 나타내기*/

    var count = $('.roomname').length;

    if(count != 0) {
        var $filterData = '<li class="filter-tag">';
        $filterData    +=   '<i type="ic_new_fa_allRoom" class="u-icon u-icon-ic_new_fa_allRoom"></i>'
        $filterData    +=   '전체보기 (' + count + ')';
        $filterData    += '</li>';
        $('.filter-ul').append($filterData);
    }else{
        var $filterData = '<li class="filter-tag disabled">';
        $filterData    +=   '<i type="ic_new_fa_allRoom" class="u-icon u-icon-ic_new_fa_allRoom"></i>'
        $filterData    +=   '전체 (0)';
        $filterData    += '</li>';
        $('.filter-ul').append($filterData);
    }

    var text = $('.roomname').text();
    var count = 0;
    var searchText = '그랜드 프리미어 스위트룸';
    var pos = text.indexOf(searchText);

    while(pos !== -1){
        count ++;
        pos = text.indexOf(searchText, pos + 1);
    }
    if(count != 0) {
        var $filterData = '<li class="filter-tag">';
        $filterData    +=   '<i type="ic_new_fa_grandRoom" class="u-icon u-icon-ic_new_fa_grandRoom"></i>'
        $filterData    +=   '그랜드 프리미어 스위트룸 (' + count + ')';
        $filterData    += '</li>';
        $('.filter-ul').append($filterData);
    }else{
        var $filterData = '<li class="filter-tag disabled">';
        $filterData    +=   '<i type="ic_new_fa_grandRoom" class="u-icon u-icon-ic_new_fa_grandRoom"></i>'
        $filterData    +=   '그랜드 프리미어 스위트룸 (0)';
        $filterData    += '</li>';
        $('.filter-ul').append($filterData);
    }

    var text = $('.roomname').text();
    var count = 0;
    var searchText = '프리미어 디럭스 트윈룸';
    var pos = text.indexOf(searchText);

    while(pos !== -1){
        count ++;
        pos = text.indexOf(searchText, pos + 1);
    }
    if(count != 0) {
        var $filterData = '<li class="filter-tag">';
        $filterData    +=   '<i type="ic_new_fa_twinRoom" class="u-icon u-icon-ic_new_fa_twinRoom"></i>'
        $filterData    +=   '프리미어 디럭스 트윈룸 (' + count + ')';
        $filterData    += '</li>';
        $('.filter-ul').append($filterData);
    }else{
        var $filterData = '<li class="filter-tag disabled">';
        $filterData    +=   '<i type="ic_new_fa_twinRoom" class="u-icon u-icon-ic_new_fa_twinRoom"></i>'
        $filterData    +=   '프리미어 디럭스 트윈룸 (0)';
        $filterData    += '</li>';
        $('.filter-ul').append($filterData);
    }

    var text = $('.roomname').text();
    var count = 0;
    var searchText = '디럭스 더블룸';
    var pos = text.indexOf(searchText);

    while(pos !== -1){
        count ++;
        pos = text.indexOf(searchText, pos + 1);
    }
    if(count != 0) {
        var $filterData = '<li class="filter-tag">';
        $filterData    +=   '<i type="ic_new_fa_doubleRoom" class="u-icon u-icon-ic_new_fa_doubleRoom"></i>'
        $filterData    +=   '디럭스 더블룸 (' + count + ')';
        $filterData    += '</li>';
        $('.filter-ul').append($filterData);
    }else{
        var $filterData = '<li class="filter-tag disabled">';
        $filterData    +=   '<i type="ic_new_fa_doubleRoom" class="u-icon u-icon-ic_new_fa_doubleRoom"></i>'
        $filterData    +=   '디럭스 더블룸 (0)';
        $filterData    += '</li>';
        $('.filter-ul').append($filterData);
    }

    var text = $('.hasBreakFast').text();
    var count = 0;
    var searchText = '조식 뷔페 - 포함';
    var pos = text.indexOf(searchText);

    while(pos !== -1){
        count ++;
        pos = text.indexOf(searchText, pos + 1);
    }

    if(count != 0) {
        var $filterData = '<li class="filter-tag">';
        $filterData    +=   '<i type="ic_new_fa_breakfast" class="u-icon u-icon-ic_new_fa_breakfast"></i>'
        $filterData    +=   '조식 포함 (' + count + ')';
        $filterData    += '</li>';
        $('.filter-ul').append($filterData);
    }else{
        var $filterData = '<li class="filter-tag disabled">';
        $filterData    +=   '<i type="ic_new_fa_breakfast" class="u-icon u-icon-ic_new_fa_breakfast"></i>'
        $filterData    +=   '조식 포함 (0)';
        $filterData    += '</li>';
        $('.filter-ul').append($filterData);
    }

    // 필터 클릭시 조건별 나오게 하기
    $('.filter-tag').on('click',function(){
        $('.filter-tag').removeClass('selected');
        $(this).addClass('selected');
        var $body = $('#roomlist-baseroom-fit').empty();

        // 파라미터에 있는 값 가져오기
        var no = getParameter("hotelId");
        var checkinDate = getParameter("checkIn");
        var checkOutDate = getParameter("checkOut");
        var traveller = getParameter("traveler");

        // 데이터 설정값
        let option = {maximumFractionDigits: 0};
        var diffDays = $('.nights span').text();
        diffDays = diffDays.replace('박','');
        var addr1 = $.trim($('.detail-headline_position_text').text());
        var hotelStar = $('.u-icon-ic_new_star').length;
        var hotelName = $('.hotelTag-title_h1').text();
        var hasFrontDesk = '<c:out value="${hotelInfo.hasFrontDesk}" />';
        var hasrestaurant = '<c:out value="${hotelInfo.hasrestaurant}" />';
        var hasHotelWifi = '<c:out value="${hotelInfo.hasHotelWifi}" />';
        var hasSmokeBanArea = '<c:out value="${hotelInfo.hasSmokeBanArea}" />';
        var hasCoffeeShop = '<c:out value="${hotelInfo.hasCoffeeShop}" />';
        var mapX = '<c:out value="${hotelInfo.mapX}" />';
        var maxY = '<c:out value="${hotelInfo.maxY}" />';
        var zipCode = '<c:out value="${hotelInfo.zipCode}" />';
        var modifiedDate = '<c:out value="${hotelInfo.modifiedDate}" />';
        var tel = '<c:out value="${hotelInfo.tel}" />';
        var firstImage = '<c:out value="${hotelInfo.firstImage}" />';

            if($(this).text().indexOf('조식') >= 0) {

                $.ajax({
                    type:'GET',
                    url:'hotelFilter',
                    data:{hotelId:no,checkIn:checkinDate,checkOut:checkOutDate,traveler:traveller},
                    dataType:'json'
                })
                    .done(function(response){
                        $.each(response,function(index,room) {

                            if (room.breakfast == 'Y') {
                                var $item = "";
                                $item += '<form action="reservation" method="post" class="sendReservationForm">';
                                $item += '<input type="hidden" name="hotelNo" class="hotelNo" value="" />'
                                $item += '<input type="hidden" name="roomId" value="' + room.roomId + '"/>'
                                $item += '<input type="hidden" name="checkIn" class="checkIn" value=""/>'
                                $item += '<input type="hidden" name="checkOut" class="checkOut" value=""/>'
                                $item += '<input type="hidden" name="diffDays" class="diffDays" value="' + diffDays + '"/>'
                                $item += '<input type="hidden" name="type" value="' + room.type + '"/>'
                                $item += '<input type="hidden" name="adults" class="adults" value=""/>'
                                $item += '<input type="hidden" name="childs" class="childs" value=""/>'
                                $item += '<input type="hidden" name="hotelId" value="' + room.hotelId + '"/>'
                                $item += '<input type="hidden" name="roomSize" value="' + room.roomSize + '"/>'
                                $item += '<input type="hidden" name="describe" value="' + room.describe + '"/>'
                                $item += '<input type="hidden" name="bedType" value="' + room.bedType + '"/>'
                                $item += '<input type="hidden" name="roomView" value="' + room.roomView + '"/>'
                                $item += '<input type="hidden" name="bedCount" value="' + room.bedCount + '"/>'
                                $item += '<input type="hidden" name="price" value="' + room.price + '"/>'
                                $item += '<input type="hidden" name="eventPrice" value="' + room.eventPrice + '"/>'
                                $item += '<input type="hidden" name="breakfast" value="' + room.breakfast + '"/>'
                                $item += '<input type="hidden" name="roomRef" value="' + room.roomRef + '"/>'
                                $item += '<input type="hidden" name="roomBooth" value="' + room.roomBooth + '"/>'
                                $item += '<input type="hidden" name="roomTv" value="' + room.roomTv + '"/>'
                                $item += '<input type="hidden" name="roomAircon" value="' + room.roomAircon + '"/>'
                                $item += '<input type="hidden" name="roomSmoking" value="' + room.roomSmoking + '"/>'
                                $item += '<input type="hidden" name="roomWifi" value="' + room.roomWifi + '"/>'
                                $item += '<input type="hidden" name="addr1" value="' + addr1 + ' "/>'
                                $item += '<input type="hidden" name="hotelStar" value="' + hotelStar + '"/>'
                                $item += '<input type="hidden" name="name" value="' + hotelName + '"/>'
                                $item += '<input type="hidden" name="hasFrontDesk" value="' + hasFrontDesk + '"/>'
                                $item += '<input type="hidden" name="hasrestaurant" value="' + hasrestaurant + '"/>'
                                $item += '<input type="hidden" name="hasHotelWifi" value="' + hasHotelWifi + '"/>'
                                $item += '<input type="hidden" name="hasSmokeBanArea" value="' + hasSmokeBanArea + '"/>'
                                $item += '<input type="hidden" name="hasCoffeeShop" value="' + hasCoffeeShop + '"/>'
                                $item += '<input type="hidden" name="roomCount" class="roomCount" value=""/>'
                                $item += '<input type="hidden" class="mapX" value="' + mapX + '"/>'
                                $item += '<input type="hidden" class="maxY" value="' + maxY + '"/>'
                                $item += '<input type="hidden" class="zipCode" value="' + zipCode + '"/>'
                                $item += '<input type="hidden" class="modifiedDate"  value="' + modifiedDate + '"/>'
                                $item += '<input type="hidden" class="tel" value="' + tel + '"/>'
                                $item += '<input type="hidden" class="firstImage" value="' + firstImage + '"/>'
                                $item += '<div class="roomlist-baseroom-card" id="' + room.roomId + '">'
                                $item += '<div class="roomtitle ">'
                                $item += '<div class="img-container">'
                                $item += '<div class="m-lazyImg" style="width: 121px; height: 86px;">'
                                $item += '<img class="m-lazyImg__img" alt="룸이미지" src="' + '../../../resources/images/hotel/rooms/' + room.photo + '" style="width: 121px; height: 86px; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);">'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '<div class="baseroomInfo-container">'
                                $item += '<div class="roomname">' + room.type + '</div>'
                                $item += '<div class="roomEncourage">'
                                $item += '<div class="roomEncourage-encourage">' + room.roomView + '</div>'
                                $item += '</div>'
                                $item += '<div class="roomFacility">'
                                $item += '<div class="roomFacility-basic">'
                                $item += '<i type="ic_new_fa_acreage" class="u-icon u-icon-ic_new_fa_acreage">'
                                $item += room.roomSize + 'm²'
                                $item += '</i>'
                                /*$item += '<i type="ic_new_fa_floor" class="u-icon u-icon-ic_new_fa_floor">'
                                $item += 'x-xx층'*/
                                $item += '</i>'
                                $item += '<div class="line"></div>'
                                $item += '</div>'
                                $item += '<div class="roomFacility-hotFacility">'
                                $item += '<span class="roomFacility-facilities">'
                                if (room.roomBooth == 'Y') {
                                    $item += '<i type="ic_new_fa_shower" class="u-icon u-icon-ic_new_fa_shower facilityHover">'
                                    $item += '개별 샤워룸'
                                    $item += '</i>'
                                }
                                if (room.roomRef == 'Y') {
                                    $item += '<i type="ic_new_fa_fridge" class="u-icon u-icon-ic_new_fa_fridge facilityHover">'
                                    $item += '냉장고'
                                    $item += '</i>'
                                }
                                if (room.roomTv == 'Y') {
                                    $item += '<i type="ic_new_fa_telephone" class="u-icon u-icon-ic_new_fa_telephone facilityHover">'
                                    $item += '전화기'
                                    $item += '</i>'
                                }
                                $item += '</span>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '<div class="seeroom">'
                                $item += '<span>사진 & 시설 정보</span>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '<div class="roomcard">'
                                $item += '<div class="saleroomlist">'
                                $item += '<div class="salecardlist-rooms">'
                                $item += '<div class="ubt-salecard salecard">'
                                $item += '<div class="minpriceroom">'
                                $item += '<div class="icon"></div>'
                                $item += '<span class="content">오늘의 최저가</span>'
                                $item += '</div>'
                                $item += '<div class="salecard-frame">'
                                $item += '<div class="salecard-baseinfo">'
                                $item += '<div class="bookinfo-desc positive">'
                                $item += '<i type="=ic_new_fa_confirmation" class="u-icon u-icon-ic_new_fa_confirmation"></i>'
                                $item += '<span>'
                                $item += '<span class="bookinfo-desc-span hoverBookInfo">대기없이 바로 확정</span>'
                                $item += '</span>'
                                $item += '</div>'
                                $item += '<div class="bookinfo-desc">'
                                $item += '<i type="ic_new_fa_breakfast" class="u-icon u-icon-ic_new_fa_breakfast"></i>'
                                $item += '<span>'
                                $item += '<span class="bookinfo-desc-span hoverBookInfo hasBreakFast">'
                                if (room.breakfast == 'N') {
                                    $item += '조식 뷔페 - 별도요금 12,000원'
                                }
                                if (room.breakfast == 'Y') {
                                    $item += '조식 뷔페 - 포함'
                                }
                                $item += '</span>'
                                $item += '</span>'
                                $item += '</div>'
                                $item += '<div class="bookinfo-desc red">'
                                $item += '<i type="ic_new_fa_defect" class="u-icon u-icon-ic_new_fa_defect"></i>'
                                $item += '<span>'
                                $item += '<span class="bookinfo-desc-span hoverBookInfo">특별 할인가 (환불 불가)</span>'
                                $item += '</span>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '<div class="salecard-personinfo">'
                                $item += '<div class="adult">'
                                for (var i = 0; i < room.maxGuest; i++) {
                                    $item += '<i type="ic_new_fa_occupant" style="margin-right:4px;" class="u-icon u-icon-ic_new_fa_occupant"></i>'
                                }
                                $item += '</div>'
                                $item += '</div>'
                                $item += '<div class="salecard-facilityInfo">'
                                $item += '<div class="bed">'
                                $item += '<div class="bed-icon">'
                                for (var i = 0; i < room.bedCount; i++) {
                                    $item += '<i type="ic_new_twobeds" style="margin-right:4px;" class="u-icon u-icon-ic_new_twobeds"></i>'
                                }
                                $item += '</div>'
                                $item += '<div class="bed-content">'
                                $item += '<span class="hover">' + room.bedType + ' ' + room.bedCount + '개</span>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '<div class="facility">'
                                if (room.roomWifi == 'Y') {
                                    $item += '<i type="ic_new_no_fa_wifi" class="u-icon u-icon-ic_new_no_fa_wifi hover"></i>'
                                }
                                if (room.roomSmoking == 'Y') {
                                    $item += '<i type="ic_new_fa_no_smoking" class="u-icon u-icon-ic_new_fa_no_smoking hover"></i>'
                                }
                                if (room.roomTv == 'Y') {
                                    $item += '<i type="window" class="u-icon u-icon-window hover"></i>'
                                }
                                $item += '</div>'
                                $item += '</div>'
                                $item += '<div class="salecard-priceinfo">'
                                $item += '<div class="salecard-priceinfo_top">'
                                $item += '<div class="salecard-priceinfo_top_left">'
                                $item += '<div class="des-with-icon orange" style="justify-content: flex-end;">'
                                $item += '<i class="u-icon u-icon-ic_new_tripcoins normal-icon undefined" type="ic_new_tripcoins" style="font-size: 12px; height: 12px; vertical-align: baseline;"></i>'
                                $item += '<span class="desc-text orange hover" style="font-size: 14px;" id="forCoin" data-minCoin="' + (room.eventPrice * 0.03).toLocaleString('ko-KR',option) + '">' + (room.eventPrice * 0.03).toLocaleString('ko-KR',option) + ' 막놀자코인 추가적립</span>'
                                $item += '</div>'
                                $item += '</div>'
                                /*$item += '<div class="salecard-priceinfo_top_right">'
                                $item += '<div class="roomhold">딱 X개! 남은 막놀자닷컴 객실</div>'
                                $item += '</div>'*/
                                $item += '</div>'
                                $item += '<div class="salecard-priceinfo_bottom">'
                                $item += '<div class="salecard-priceinfo_bottom_left">'
                                $item += '<div class="percent">'
                                $item += '20% 할인'
                                $item += '</div>'
                                $item += '<div class="price">'
                                $item += '<span id="listOriginalPrice" class="price-delete">' + room.price.toLocaleString('ko-KR',option) + ' 원</span>'
                                $item += '<div class="price-display labelColor" id="detail-real-price">'
                                $item += '<div id="listEventPrice">' + room.eventPrice.toLocaleString('ko-KR',option) + ' 원</div>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '<div class="note">1박당 객실요금 (세금 포함)</div>'
                                $item += '</div>'
                                $item += '<div class="salecard-priceinfo_bottom_right">'
                                $item += '<div class="paytype">지금 결제</div>'
                                $item += '<div class="book-box">'
                                $item += '<button type="button" class="book">예약</button>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '</div>'
                                $item += '</form>'
                                $($body).append($item);

                            }
                        })
                    })
                    .fail(function(){
                        alert('조회 중 에러가 발생하였습니다. 잠시 후 다시 시도해 주세요.')
                    })
            }

        if($(this).text().indexOf('디럭스 더블룸') >= 0) {

            $.ajax({
                type:'GET',
                url:'hotelFilter',
                data:{hotelId:no,checkIn:checkinDate,checkOut:checkOutDate,traveler:traveller},
                dataType:'json'
            })
                .done(function(response){
                    $.each(response,function(index,room) {

                        if (room.type == '디럭스 더블룸') {
                            var $item = "";
                            $item += '<form action="reservation" method="post" class="sendReservationForm">';
                            $item += '<input type="hidden" name="hotelNo" class="hotelNo" value="" />'
                            $item += '<input type="hidden" name="roomId" value="' + room.roomId + '"/>'
                            $item += '<input type="hidden" name="checkIn" class="checkIn" value=""/>'
                            $item += '<input type="hidden" name="checkOut" class="checkOut" value=""/>'
                            $item += '<input type="hidden" name="diffDays" class="diffDays" value="' + diffDays + '"/>'
                            $item += '<input type="hidden" name="type" value="' + room.type + '"/>'
                            $item += '<input type="hidden" name="adults" class="adults" value=""/>'
                            $item += '<input type="hidden" name="childs" class="childs" value=""/>'
                            $item += '<input type="hidden" name="hotelId" value="' + room.hotelId + '"/>'
                            $item += '<input type="hidden" name="roomSize" value="' + room.roomSize + '"/>'
                            $item += '<input type="hidden" name="describe" value="' + room.describe + '"/>'
                            $item += '<input type="hidden" name="bedType" value="' + room.bedType + '"/>'
                            $item += '<input type="hidden" name="roomView" value="' + room.roomView + '"/>'
                            $item += '<input type="hidden" name="bedCount" value="' + room.bedCount + '"/>'
                            $item += '<input type="hidden" name="price" value="' + room.price + '"/>'
                            $item += '<input type="hidden" name="eventPrice" value="' + room.eventPrice + '"/>'
                            $item += '<input type="hidden" name="breakfast" value="' + room.breakfast + '"/>'
                            $item += '<input type="hidden" name="roomRef" value="' + room.roomRef + '"/>'
                            $item += '<input type="hidden" name="roomBooth" value="' + room.roomBooth + '"/>'
                            $item += '<input type="hidden" name="roomTv" value="' + room.roomTv + '"/>'
                            $item += '<input type="hidden" name="roomAircon" value="' + room.roomAircon + '"/>'
                            $item += '<input type="hidden" name="roomSmoking" value="' + room.roomSmoking + '"/>'
                            $item += '<input type="hidden" name="roomWifi" value="' + room.roomWifi + '"/>'
                            $item += '<input type="hidden" name="addr1" value="' + addr1 + ' "/>'
                            $item += '<input type="hidden" name="hotelStar" value="' + hotelStar + '"/>'
                            $item += '<input type="hidden" name="name" value="' + hotelName + '"/>'
                            $item += '<input type="hidden" name="hasFrontDesk" value="' + hasFrontDesk + '"/>'
                            $item += '<input type="hidden" name="hasrestaurant" value="' + hasrestaurant + '"/>'
                            $item += '<input type="hidden" name="hasHotelWifi" value="' + hasHotelWifi + '"/>'
                            $item += '<input type="hidden" name="hasSmokeBanArea" value="' + hasSmokeBanArea + '"/>'
                            $item += '<input type="hidden" name="hasCoffeeShop" value="' + hasCoffeeShop + '"/>'
                            $item += '<input type="hidden" name="roomCount" class="roomCount" value=""/>'
                            $item += '<input type="hidden" class="mapX" value="' + mapX + '"/>'
                            $item += '<input type="hidden" class="maxY" value="' + maxY + '"/>'
                            $item += '<input type="hidden" class="zipCode" value="' + zipCode + '"/>'
                            $item += '<input type="hidden" class="modifiedDate" value="' + modifiedDate + '"/>'
                            $item += '<input type="hidden" class="tel" value="' + tel + '"/>'
                            $item += '<input type="hidden" class="firstImage" value="' + firstImage + '"/>'
                            $item += '<div class="roomlist-baseroom-card" id="' + room.roomId + '">'
                            $item += '<div class="roomtitle ">'
                            $item += '<div class="img-container">'
                            $item += '<div class="m-lazyImg" style="width: 121px; height: 86px;">'
                            $item += '<img class="m-lazyImg__img" src="' + '../../../resources/images/hotel/rooms/' + room.photo + '" style="width: 121px; height: 86px; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);">'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="baseroomInfo-container">'
                            $item += '<div class="roomname">' + room.type + '</div>'
                            $item += '<div class="roomEncourage">'
                            $item += '<div class="roomEncourage-encourage">' + room.roomView + '</div>'
                            $item += '</div>'
                            $item += '<div class="roomFacility">'
                            $item += '<div class="roomFacility-basic">'
                            $item += '<i type="ic_new_fa_acreage" class="u-icon u-icon-ic_new_fa_acreage">'
                            $item += room.roomSize + 'm²'
                            $item += '</i>'
                            /*$item += '<i type="ic_new_fa_floor" class="u-icon u-icon-ic_new_fa_floor">'
                            $item += 'x-xx층'*/
                            $item += '</i>'
                            $item += '<div class="line"></div>'
                            $item += '</div>'
                            $item += '<div class="roomFacility-hotFacility">'
                            $item += '<span class="roomFacility-facilities">'
                            if (room.roomBooth == 'Y') {
                                $item += '<i type="ic_new_fa_shower" class="u-icon u-icon-ic_new_fa_shower facilityHover">'
                                $item += '개별 샤워룸'
                                $item += '</i>'
                            }
                            if (room.roomRef == 'Y') {
                                $item += '<i type="ic_new_fa_fridge" class="u-icon u-icon-ic_new_fa_fridge facilityHover">'
                                $item += '냉장고'
                                $item += '</i>'
                            }
                            if (room.roomTv == 'Y') {
                                $item += '<i type="ic_new_fa_telephone" class="u-icon u-icon-ic_new_fa_telephone facilityHover">'
                                $item += '전화기'
                                $item += '</i>'
                            }
                            $item += '</span>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="seeroom">'
                            $item += '<span>사진 & 시설 정보</span>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="roomcard">'
                            $item += '<div class="saleroomlist">'
                            $item += '<div class="salecardlist-rooms">'
                            $item += '<div class="ubt-salecard salecard">'
                            $item += '<div class="minpriceroom">'
                            $item += '<div class="icon"></div>'
                            $item += '<span class="content">오늘의 최저가</span>'
                            $item += '</div>'
                            $item += '<div class="salecard-frame">'
                            $item += '<div class="salecard-baseinfo">'
                            $item += '<div class="bookinfo-desc positive">'
                            $item += '<i type="=ic_new_fa_confirmation" class="u-icon u-icon-ic_new_fa_confirmation"></i>'
                            $item += '<span>'
                            $item += '<span class="bookinfo-desc-span hoverBookInfo">대기없이 바로 확정</span>'
                            $item += '</span>'
                            $item += '</div>'
                            $item += '<div class="bookinfo-desc">'
                            $item += '<i type="ic_new_fa_breakfast" class="u-icon u-icon-ic_new_fa_breakfast"></i>'
                            $item += '<span>'
                            $item += '<span class="bookinfo-desc-span hoverBookInfo hasBreakFast">'
                            if (room.breakfast == 'N') {
                                $item += '조식 뷔페 - 별도요금 12,000원'
                            }
                            if (room.breakfast == 'Y') {
                                $item += '조식 뷔페 - 포함'
                            }
                            $item += '</span>'
                            $item += '</span>'
                            $item += '</div>'
                            $item += '<div class="bookinfo-desc red">'
                            $item += '<i type="ic_new_fa_defect" class="u-icon u-icon-ic_new_fa_defect"></i>'
                            $item += '<span>'
                            $item += '<span class="bookinfo-desc-span hoverBookInfo">특별 할인가 (환불 불가)</span>'
                            $item += '</span>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="salecard-personinfo">'
                            $item += '<div class="adult">'
                            for (var i = 0; i < room.maxGuest; i++) {
                                $item += '<i type="ic_new_fa_occupant" style="margin-right:4px;" class="u-icon u-icon-ic_new_fa_occupant"></i>'
                            }
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="salecard-facilityInfo">'
                            $item += '<div class="bed">'
                            $item += '<div class="bed-icon">'
                            for (var i = 0; i < room.bedCount; i++) {
                                $item += '<i type="ic_new_twobeds" style="margin-right:4px;" class="u-icon u-icon-ic_new_twobeds"></i>'
                            }
                            $item += '</div>'
                            $item += '<div class="bed-content">'
                            $item += '<span class="hover">' + room.bedType + ' ' + room.bedCount + '개</span>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="facility">'
                            if (room.roomWifi == 'Y') {
                                $item += '<i type="ic_new_no_fa_wifi" class="u-icon u-icon-ic_new_no_fa_wifi hover"></i>'
                            }
                            if (room.roomSmoking == 'Y') {
                                $item += '<i type="ic_new_fa_no_smoking" class="u-icon u-icon-ic_new_fa_no_smoking hover"></i>'
                            }
                            if (room.roomTv == 'Y') {
                                $item += '<i type="window" class="u-icon u-icon-window hover"></i>'
                            }
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="salecard-priceinfo">'
                            $item += '<div class="salecard-priceinfo_top">'
                            $item += '<div class="salecard-priceinfo_top_left">'
                            $item += '<div class="des-with-icon orange" style="justify-content: flex-end;">'
                            $item += '<i class="u-icon u-icon-ic_new_tripcoins normal-icon undefined" type="ic_new_tripcoins" style="font-size: 12px; height: 12px; vertical-align: baseline;"></i>'
                            $item += '<span class="desc-text orange hover" style="font-size: 14px;" id="forCoin" data-minCoin="' + (room.eventPrice * 0.03).toLocaleString('ko-KR',option) + '">' + (room.eventPrice * 0.03).toLocaleString('ko-KR',option) + ' 막놀자코인 추가적립</span>'
                            $item += '</div>'
                            $item += '</div>'
                            /*$item += '<div class="salecard-priceinfo_top_right">'
                            $item += '<div class="roomhold">딱 X개! 남은 막놀자닷컴 객실</div>'
                            $item += '</div>'*/
                            $item += '</div>'
                            $item += '<div class="salecard-priceinfo_bottom">'
                            $item += '<div class="salecard-priceinfo_bottom_left">'
                            $item += '<div class="percent">'
                            $item += '20% 할인'
                            $item += '</div>'
                            $item += '<div class="price">'
                            $item += '<span id="listOriginalPrice" class="price-delete">' + room.price.toLocaleString('ko-KR',option) + ' 원</span>'
                            $item += '<div class="price-display labelColor" id="detail-real-price">'
                            $item += '<div id="listEventPrice">' + room.eventPrice.toLocaleString('ko-KR',option) + ' 원</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="note">1박당 객실요금 (세금 포함)</div>'
                            $item += '</div>'
                            $item += '<div class="salecard-priceinfo_bottom_right">'
                            $item += '<div class="paytype">지금 결제</div>'
                            $item += '<div class="book-box">'
                            $item += '<button type="button" class="book">예약</button>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</form>'
                            $($body).append($item);

                        }
                    })
                })
                .fail(function(){
                    alert('조회 중 에러가 발생하였습니다. 잠시 후 다시 시도해 주세요.')
                })
        }


        if($(this).text().indexOf('프리미어 디럭스 트윈룸') >= 0) {

            $.ajax({
                type:'GET',
                url:'hotelFilter',
                data:{hotelId:no,checkIn:checkinDate,checkOut:checkOutDate,traveler:traveller},
                dataType:'json'
            })
                .done(function(response){
                    $.each(response,function(index,room) {

                        if (room.type == '프리미어 디럭스 트윈룸') {
                            var $item = "";
                            $item += '<form action="reservation" method="post" class="sendReservationForm">';
                            $item += '<input type="hidden" name="hotelNo" class="hotelNo" value="" />'
                            $item += '<input type="hidden" name="roomId" value="' + room.roomId + '"/>'
                            $item += '<input type="hidden" name="checkIn" class="checkIn" value=""/>'
                            $item += '<input type="hidden" name="checkOut" class="checkOut" value=""/>'
                            $item += '<input type="hidden" name="diffDays" class="diffDays" value="' + diffDays + '"/>'
                            $item += '<input type="hidden" name="type" value="' + room.type + '"/>'
                            $item += '<input type="hidden" name="adults" class="adults" value=""/>'
                            $item += '<input type="hidden" name="childs" class="childs" value=""/>'
                            $item += '<input type="hidden" name="hotelId" value="' + room.hotelId + '"/>'
                            $item += '<input type="hidden" name="roomSize" value="' + room.roomSize + '"/>'
                            $item += '<input type="hidden" name="describe" value="' + room.describe + '"/>'
                            $item += '<input type="hidden" name="bedType" value="' + room.bedType + '"/>'
                            $item += '<input type="hidden" name="roomView" value="' + room.roomView + '"/>'
                            $item += '<input type="hidden" name="bedCount" value="' + room.bedCount + '"/>'
                            $item += '<input type="hidden" name="price" value="' + room.price + '"/>'
                            $item += '<input type="hidden" name="eventPrice" value="' + room.eventPrice + '"/>'
                            $item += '<input type="hidden" name="breakfast" value="' + room.breakfast + '"/>'
                            $item += '<input type="hidden" name="roomRef" value="' + room.roomRef + '"/>'
                            $item += '<input type="hidden" name="roomBooth" value="' + room.roomBooth + '"/>'
                            $item += '<input type="hidden" name="roomTv" value="' + room.roomTv + '"/>'
                            $item += '<input type="hidden" name="roomAircon" value="' + room.roomAircon + '"/>'
                            $item += '<input type="hidden" name="roomSmoking" value="' + room.roomSmoking + '"/>'
                            $item += '<input type="hidden" name="roomWifi" value="' + room.roomWifi + '"/>'
                            $item += '<input type="hidden" name="addr1" value="' + addr1 + ' "/>'
                            $item += '<input type="hidden" name="hotelStar" value="' + hotelStar + '"/>'
                            $item += '<input type="hidden" name="name" value="' + hotelName + '"/>'
                            $item += '<input type="hidden" name="hasFrontDesk" value="' + hasFrontDesk + '"/>'
                            $item += '<input type="hidden" name="hasrestaurant" value="' + hasrestaurant + '"/>'
                            $item += '<input type="hidden" name="hasHotelWifi" value="' + hasHotelWifi + '"/>'
                            $item += '<input type="hidden" name="hasSmokeBanArea" value="' + hasSmokeBanArea + '"/>'
                            $item += '<input type="hidden" name="hasCoffeeShop" value="' + hasCoffeeShop + '"/>'
                            $item += '<input type="hidden" name="roomCount" class="roomCount" value=""/>'
                            $item += '<input type="hidden" class="mapX" value="' + mapX + '"/>'
                            $item += '<input type="hidden" class="maxY" value="' + maxY + '"/>'
                            $item += '<input type="hidden" class="zipCode" value="' + zipCode + '"/>'
                            $item += '<input type="hidden" class="modifiedDate" value="' + modifiedDate + '"/>'
                            $item += '<input type="hidden" class="tel" value="' + tel + '"/>'
                            $item += '<input type="hidden" class="firstImage" value="' + firstImage + '"/>'
                            $item += '<div class="roomlist-baseroom-card" id="' + room.roomId + '">'
                            $item += '<div class="roomtitle ">'
                            $item += '<div class="img-container">'
                            $item += '<div class="m-lazyImg" style="width: 121px; height: 86px;">'
                            $item += '<img class="m-lazyImg__img" src="' + '../../../resources/images/hotel/rooms/' + room.photo + '" style="width: 121px; height: 86px; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);">'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="baseroomInfo-container">'
                            $item += '<div class="roomname">' + room.type + '</div>'
                            $item += '<div class="roomEncourage">'
                            $item += '<div class="roomEncourage-encourage">' + room.roomView + '</div>'
                            $item += '</div>'
                            $item += '<div class="roomFacility">'
                            $item += '<div class="roomFacility-basic">'
                            $item += '<i type="ic_new_fa_acreage" class="u-icon u-icon-ic_new_fa_acreage">'
                            $item += room.roomSize + 'm²'
                            $item += '</i>'
                            /*$item += '<i type="ic_new_fa_floor" class="u-icon u-icon-ic_new_fa_floor">'
                            $item += 'x-xx층'*/
                            $item += '</i>'
                            $item += '<div class="line"></div>'
                            $item += '</div>'
                            $item += '<div class="roomFacility-hotFacility">'
                            $item += '<span class="roomFacility-facilities">'
                            if (room.roomBooth == 'Y') {
                                $item += '<i type="ic_new_fa_shower" class="u-icon u-icon-ic_new_fa_shower facilityHover">'
                                $item += '개별 샤워룸'
                                $item += '</i>'
                            }
                            if (room.roomRef == 'Y') {
                                $item += '<i type="ic_new_fa_fridge" class="u-icon u-icon-ic_new_fa_fridge facilityHover">'
                                $item += '냉장고'
                                $item += '</i>'
                            }
                            if (room.roomTv == 'Y') {
                                $item += '<i type="ic_new_fa_telephone" class="u-icon u-icon-ic_new_fa_telephone facilityHover">'
                                $item += '전화기'
                                $item += '</i>'
                            }
                            $item += '</span>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="seeroom">'
                            $item += '<span>사진 & 시설 정보</span>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="roomcard">'
                            $item += '<div class="saleroomlist">'
                            $item += '<div class="salecardlist-rooms">'
                            $item += '<div class="ubt-salecard salecard">'
                            $item += '<div class="minpriceroom">'
                            $item += '<div class="icon"></div>'
                            $item += '<span class="content">오늘의 최저가</span>'
                            $item += '</div>'
                            $item += '<div class="salecard-frame">'
                            $item += '<div class="salecard-baseinfo">'
                            $item += '<div class="bookinfo-desc positive">'
                            $item += '<i type="=ic_new_fa_confirmation" class="u-icon u-icon-ic_new_fa_confirmation"></i>'
                            $item += '<span>'
                            $item += '<span class="bookinfo-desc-span hoverBookInfo">대기없이 바로 확정</span>'
                            $item += '</span>'
                            $item += '</div>'
                            $item += '<div class="bookinfo-desc">'
                            $item += '<i type="ic_new_fa_breakfast" class="u-icon u-icon-ic_new_fa_breakfast"></i>'
                            $item += '<span>'
                            $item += '<span class="bookinfo-desc-span hoverBookInfo hasBreakFast">'
                            if (room.breakfast == 'N') {
                                $item += '조식 뷔페 - 별도요금 12,000원'
                            }
                            if (room.breakfast == 'Y') {
                                $item += '조식 뷔페 - 포함'
                            }
                            $item += '</span>'
                            $item += '</span>'
                            $item += '</div>'
                            $item += '<div class="bookinfo-desc red">'
                            $item += '<i type="ic_new_fa_defect" class="u-icon u-icon-ic_new_fa_defect"></i>'
                            $item += '<span>'
                            $item += '<span class="bookinfo-desc-span hoverBookInfo">특별 할인가 (환불 불가)</span>'
                            $item += '</span>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="salecard-personinfo">'
                            $item += '<div class="adult">'
                            for (var i = 0; i < room.maxGuest; i++) {
                                $item += '<i type="ic_new_fa_occupant" style="margin-right:4px;" class="u-icon u-icon-ic_new_fa_occupant"></i>'
                            }
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="salecard-facilityInfo">'
                            $item += '<div class="bed">'
                            $item += '<div class="bed-icon">'
                            for (var i = 0; i < room.bedCount; i++) {
                                $item += '<i type="ic_new_twobeds" style="margin-right:4px;" class="u-icon u-icon-ic_new_twobeds"></i>'
                            }
                            $item += '</div>'
                            $item += '<div class="bed-content">'
                            $item += '<span class="hover">' + room.bedType + ' ' + room.bedCount + '개</span>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="facility">'
                            if (room.roomWifi == 'Y') {
                                $item += '<i type="ic_new_no_fa_wifi" class="u-icon u-icon-ic_new_no_fa_wifi hover"></i>'
                            }
                            if (room.roomSmoking == 'Y') {
                                $item += '<i type="ic_new_fa_no_smoking" class="u-icon u-icon-ic_new_fa_no_smoking hover"></i>'
                            }
                            if (room.roomTv == 'Y') {
                                $item += '<i type="window" class="u-icon u-icon-window hover"></i>'
                            }
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="salecard-priceinfo">'
                            $item += '<div class="salecard-priceinfo_top">'
                            $item += '<div class="salecard-priceinfo_top_left">'
                            $item += '<div class="des-with-icon orange" style="justify-content: flex-end;">'
                            $item += '<i class="u-icon u-icon-ic_new_tripcoins normal-icon undefined" type="ic_new_tripcoins" style="font-size: 12px; height: 12px; vertical-align: baseline;"></i>'
                            $item += '<span class="desc-text orange hover" style="font-size: 14px;" id="forCoin" data-minCoin="' + (room.eventPrice * 0.03).toLocaleString('ko-KR',option) + '">' + (room.eventPrice * 0.03).toLocaleString('ko-KR',option) + ' 막놀자코인 추가적립</span>'
                            $item += '</div>'
                            $item += '</div>'
                            /*$item += '<div class="salecard-priceinfo_top_right">'
                            $item += '<div class="roomhold">딱 X개! 남은 막놀자닷컴 객실</div>'
                            $item += '</div>'*/
                            $item += '</div>'
                            $item += '<div class="salecard-priceinfo_bottom">'
                            $item += '<div class="salecard-priceinfo_bottom_left">'
                            $item += '<div class="percent">'
                            $item += '20% 할인'
                            $item += '</div>'
                            $item += '<div class="price">'
                            $item += '<span id="listOriginalPrice" class="price-delete">' + room.price.toLocaleString('ko-KR',option) + ' 원</span>'
                            $item += '<div class="price-display labelColor" id="detail-real-price">'
                            $item += '<div id="listEventPrice">' + room.eventPrice.toLocaleString('ko-KR',option) + ' 원</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="note">1박당 객실요금 (세금 포함)</div>'
                            $item += '</div>'
                            $item += '<div class="salecard-priceinfo_bottom_right">'
                            $item += '<div class="paytype">지금 결제</div>'
                            $item += '<div class="book-box">'
                            $item += '<button type="button" class="book">예약</button>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</form>'
                            $($body).append($item);

                        }
                    })
                })
                .fail(function(){
                    alert('조회 중 에러가 발생하였습니다. 잠시 후 다시 시도해 주세요.')
                })
        }

        if($(this).text().indexOf('그랜드 프리미어 스위트룸') >= 0) {

            $.ajax({
                type:'GET',
                url:'hotelFilter',
                data:{hotelId:no,checkIn:checkinDate,checkOut:checkOutDate,traveler:traveller},
                dataType:'json'
            })
                .done(function(response){
                    $.each(response,function(index,room) {

                        if (room.type == '그랜드 프리미어 스위트룸') {
                            var $item = "";
                            $item += '<form action="reservation" method="post" class="sendReservationForm">';
                            $item += '<input type="hidden" name="hotelNo" class="hotelNo" value="" />'
                            $item += '<input type="hidden" name="roomId" value="' + room.roomId + '"/>'
                            $item += '<input type="hidden" name="checkIn" class="checkIn" value=""/>'
                            $item += '<input type="hidden" name="checkOut" class="checkOut" value=""/>'
                            $item += '<input type="hidden" name="diffDays" class="diffDays" value="' + diffDays + '"/>'
                            $item += '<input type="hidden" name="type" value="' + room.type + '"/>'
                            $item += '<input type="hidden" name="adults" class="adults" value=""/>'
                            $item += '<input type="hidden" name="childs" class="childs" value=""/>'
                            $item += '<input type="hidden" name="hotelId" value="' + room.hotelId + '"/>'
                            $item += '<input type="hidden" name="roomSize" value="' + room.roomSize + '"/>'
                            $item += '<input type="hidden" name="describe" value="' + room.describe + '"/>'
                            $item += '<input type="hidden" name="bedType" value="' + room.bedType + '"/>'
                            $item += '<input type="hidden" name="roomView" value="' + room.roomView + '"/>'
                            $item += '<input type="hidden" name="bedCount" value="' + room.bedCount + '"/>'
                            $item += '<input type="hidden" name="price" value="' + room.price + '"/>'
                            $item += '<input type="hidden" name="eventPrice" value="' + room.eventPrice + '"/>'
                            $item += '<input type="hidden" name="breakfast" value="' + room.breakfast + '"/>'
                            $item += '<input type="hidden" name="roomRef" value="' + room.roomRef + '"/>'
                            $item += '<input type="hidden" name="roomBooth" value="' + room.roomBooth + '"/>'
                            $item += '<input type="hidden" name="roomTv" value="' + room.roomTv + '"/>'
                            $item += '<input type="hidden" name="roomAircon" value="' + room.roomAircon + '"/>'
                            $item += '<input type="hidden" name="roomSmoking" value="' + room.roomSmoking + '"/>'
                            $item += '<input type="hidden" name="roomWifi" value="' + room.roomWifi + '"/>'
                            $item += '<input type="hidden" name="addr1" value="' + addr1 + ' "/>'
                            $item += '<input type="hidden" name="hotelStar" value="' + hotelStar + '"/>'
                            $item += '<input type="hidden" name="name" value="' + hotelName + '"/>'
                            $item += '<input type="hidden" name="hasFrontDesk" value="' + hasFrontDesk + '"/>'
                            $item += '<input type="hidden" name="hasrestaurant" value="' + hasrestaurant + '"/>'
                            $item += '<input type="hidden" name="hasHotelWifi" value="' + hasHotelWifi + '"/>'
                            $item += '<input type="hidden" name="hasSmokeBanArea" value="' + hasSmokeBanArea + '"/>'
                            $item += '<input type="hidden" name="hasCoffeeShop" value="' + hasCoffeeShop + '"/>'
                            $item += '<input type="hidden" name="roomCount" class="roomCount" value=""/>'
                            $item += '<input type="hidden" class="mapX" value="' + mapX + '"/>'
                            $item += '<input type="hidden" class="maxY" value="' + maxY + '"/>'
                            $item += '<input type="hidden" class="zipCode" value="' + zipCode + '"/>'
                            $item += '<input type="hidden" class="modifiedDate" value="' + modifiedDate + '"/>'
                            $item += '<input type="hidden" class="tel" value="' + tel + '"/>'
                            $item += '<input type="hidden" class="firstImage" value="' + firstImage + '"/>'
                            $item += '<div class="roomlist-baseroom-card" id="' + room.roomId + '">'
                            $item += '<div class="roomtitle ">'
                            $item += '<div class="img-container">'
                            $item += '<div class="m-lazyImg" style="width: 121px; height: 86px;">'
                            $item += '<img class="m-lazyImg__img" src="' + '../../../resources/images/hotel/rooms/' + room.photo + '" style="width: 121px; height: 86px; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);">'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="baseroomInfo-container">'
                            $item += '<div class="roomname">' + room.type + '</div>'
                            $item += '<div class="roomEncourage">'
                            $item += '<div class="roomEncourage-encourage">' + room.roomView + '</div>'
                            $item += '</div>'
                            $item += '<div class="roomFacility">'
                            $item += '<div class="roomFacility-basic">'
                            $item += '<i type="ic_new_fa_acreage" class="u-icon u-icon-ic_new_fa_acreage">'
                            $item += room.roomSize + 'm²'
                            $item += '</i>'
                            $item += '</i>'
                            $item += '<div class="line"></div>'
                            $item += '</div>'
                            $item += '<div class="roomFacility-hotFacility">'
                            $item += '<span class="roomFacility-facilities">'
                            if (room.roomBooth == 'Y') {
                                $item += '<i type="ic_new_fa_shower" class="u-icon u-icon-ic_new_fa_shower facilityHover">'
                                $item += '개별 샤워룸'
                                $item += '</i>'
                            }
                            if (room.roomRef == 'Y') {
                                $item += '<i type="ic_new_fa_fridge" class="u-icon u-icon-ic_new_fa_fridge facilityHover">'
                                $item += '냉장고'
                                $item += '</i>'
                            }
                            if (room.roomTv == 'Y') {
                                $item += '<i type="ic_new_fa_telephone" class="u-icon u-icon-ic_new_fa_telephone facilityHover">'
                                $item += '전화기'
                                $item += '</i>'
                            }
                            $item += '</span>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="seeroom">'
                            $item += '<span>사진 & 시설 정보</span>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="roomcard">'
                            $item += '<div class="saleroomlist">'
                            $item += '<div class="salecardlist-rooms">'
                            $item += '<div class="ubt-salecard salecard">'
                            $item += '<div class="minpriceroom">'
                            $item += '<div class="icon"></div>'
                            $item += '<span class="content">오늘의 최저가</span>'
                            $item += '</div>'
                            $item += '<div class="salecard-frame">'
                            $item += '<div class="salecard-baseinfo">'
                            $item += '<div class="bookinfo-desc positive">'
                            $item += '<i type="=ic_new_fa_confirmation" class="u-icon u-icon-ic_new_fa_confirmation"></i>'
                            $item += '<span>'
                            $item += '<span class="bookinfo-desc-span hoverBookInfo">대기없이 바로 확정</span>'
                            $item += '</span>'
                            $item += '</div>'
                            $item += '<div class="bookinfo-desc">'
                            $item += '<i type="ic_new_fa_breakfast" class="u-icon u-icon-ic_new_fa_breakfast"></i>'
                            $item += '<span>'
                            $item += '<span class="bookinfo-desc-span hoverBookInfo hasBreakFast">'
                            if (room.breakfast == 'N') {
                                $item += '조식 뷔페 - 별도요금 12,000원'
                            }
                            if (room.breakfast == 'Y') {
                                $item += '조식 뷔페 - 포함'
                            }
                            $item += '</span>'
                            $item += '</span>'
                            $item += '</div>'
                            $item += '<div class="bookinfo-desc red">'
                            $item += '<i type="ic_new_fa_defect" class="u-icon u-icon-ic_new_fa_defect"></i>'
                            $item += '<span>'
                            $item += '<span class="bookinfo-desc-span hoverBookInfo">특별 할인가 (환불 불가)</span>'
                            $item += '</span>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="salecard-personinfo">'
                            $item += '<div class="adult">'
                            for (var i = 0; i < room.maxGuest; i++) {
                                $item += '<i type="ic_new_fa_occupant" style="margin-right:4px;" class="u-icon u-icon-ic_new_fa_occupant"></i>'
                            }
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="salecard-facilityInfo">'
                            $item += '<div class="bed">'
                            $item += '<div class="bed-icon">'
                            for (var i = 0; i < room.bedCount; i++) {
                                $item += '<i type="ic_new_twobeds" style="margin-right:4px;" class="u-icon u-icon-ic_new_twobeds"></i>'
                            }
                            $item += '</div>'
                            $item += '<div class="bed-content">'
                            $item += '<span class="hover">' + room.bedType + ' ' + room.bedCount + '개</span>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="facility">'
                            if (room.roomWifi == 'Y') {
                                $item += '<i type="ic_new_no_fa_wifi" class="u-icon u-icon-ic_new_no_fa_wifi hover"></i>'
                            }
                            if (room.roomSmoking == 'Y') {
                                $item += '<i type="ic_new_fa_no_smoking" class="u-icon u-icon-ic_new_fa_no_smoking hover"></i>'
                            }
                            if (room.roomTv == 'Y') {
                                $item += '<i type="window" class="u-icon u-icon-window hover"></i>'
                            }
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="salecard-priceinfo">'
                            $item += '<div class="salecard-priceinfo_top">'
                            $item += '<div class="salecard-priceinfo_top_left">'
                            $item += '<div class="des-with-icon orange" style="justify-content: flex-end;">'
                            $item += '<i class="u-icon u-icon-ic_new_tripcoins normal-icon undefined" type="ic_new_tripcoins" style="font-size: 12px; height: 12px; vertical-align: baseline;"></i>'
                            $item += '<span class="desc-text orange hover" style="font-size: 14px;" id="forCoin" data-minCoin="' + (room.eventPrice * 0.03).toLocaleString('ko-KR',option) + '">' + (room.eventPrice * 0.03).toLocaleString('ko-KR',option) + ' 막놀자코인 추가적립</span>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="salecard-priceinfo_bottom">'
                            $item += '<div class="salecard-priceinfo_bottom_left">'
                            $item += '<div class="percent">'
                            $item += '20% 할인'
                            $item += '</div>'
                            $item += '<div class="price">'
                            $item += '<span id="listOriginalPrice" class="price-delete">' + room.price.toLocaleString('ko-KR',option) + ' 원</span>'
                            $item += '<div class="price-display labelColor" id="detail-real-price">'
                            $item += '<div id="listEventPrice">' + room.eventPrice.toLocaleString('ko-KR',option) + ' 원</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '<div class="note">1박당 객실요금 (세금 포함)</div>'
                            $item += '</div>'
                            $item += '<div class="salecard-priceinfo_bottom_right">'
                            $item += '<div class="paytype">지금 결제</div>'
                            $item += '<div class="book-box">'
                            $item += '<button type="button" class="book">예약</button>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</div>'
                            $item += '</form>'
                            $($body).append($item);
                        }
                    })
                })
                .fail(function(){
                    alert('조회 중 에러가 발생하였습니다. 잠시 후 다시 시도해 주세요.')
                })
        }

        if($(this).text().indexOf('전체') >= 0) {
            AllResult();
        }
    })

    function AllResult(){
        var $body = $('#roomlist-baseroom-fit').empty();

        // 파라미터에 있는 값 가져오기
        var no = getParameter("hotelId");
        var checkinDate = getParameter("checkIn");
        var checkOutDate = getParameter("checkOut");
        var traveller = getParameter("traveler");

        // 데이터 설정값
        let option = {maximumFractionDigits: 0};
        var diffDays = $('.nights span').text();
        diffDays = diffDays.replace('박','');
        var addr1 = $.trim($('.detail-headline_position_text').text());
        var hotelStar = $('.u-icon-ic_new_star').length;
        var hotelName = $('.hotelTag-title_h1').text();
        var hasFrontDesk = '<c:out value="${hotelInfo.hasFrontDesk}" />';
        var hasrestaurant = '<c:out value="${hotelInfo.hasrestaurant}" />';
        var hasHotelWifi = '<c:out value="${hotelInfo.hasHotelWifi}" />';
        var hasSmokeBanArea = '<c:out value="${hotelInfo.hasSmokeBanArea}" />';
        var hasCoffeeShop = '<c:out value="${hotelInfo.hasCoffeeShop}" />';
        var mapX = '<c:out value="${hotelInfo.mapX}" />';
        var maxY = '<c:out value="${hotelInfo.maxY}" />';
        var zipCode = '<c:out value="${hotelInfo.zipCode}" />';
        var modifiedDate = '<c:out value="${hotelInfo.modifiedDate}" />';
        var tel = '<c:out value="${hotelInfo.tel}" />';
        var firstImage = '<c:out value="${hotelInfo.firstImage}" />';

        $.ajax({
            type:'GET',
            url:'hotelFilter',
            data:{hotelId:no,checkIn:checkinDate,checkOut:checkOutDate,traveler:traveller},
            dataType:'json'
        })
            .done(function(response){
                $.each(response,function(index,room) {

                    var $item = "";
                    $item += '<form action="reservation" method="post" class="sendReservationForm">';
                    $item += '<input type="hidden" name="hotelNo" class="hotelNo" value="" />'
                    $item += '<input type="hidden" name="roomId" value="' + room.roomId + '"/>'
                    $item += '<input type="hidden" name="checkIn" class="checkIn" value=""/>'
                    $item += '<input type="hidden" name="checkOut" class="checkOut" value=""/>'
                    $item += '<input type="hidden" name="diffDays" class="diffDays" value="' + diffDays + '"/>'
                    $item += '<input type="hidden" name="type" value="' + room.type + '"/>'
                    $item += '<input type="hidden" name="adults" class="adults" value=""/>'
                    $item += '<input type="hidden" name="childs" class="childs" value=""/>'
                    $item += '<input type="hidden" name="hotelId" value="' + room.hotelId + '"/>'
                    $item += '<input type="hidden" name="roomSize" value="' + room.roomSize + '"/>'
                    $item += '<input type="hidden" name="describe" value="' + room.describe + '"/>'
                    $item += '<input type="hidden" name="bedType" value="' + room.bedType + '"/>'
                    $item += '<input type="hidden" name="roomView" value="' + room.roomView + '"/>'
                    $item += '<input type="hidden" name="bedCount" value="' + room.bedCount + '"/>'
                    $item += '<input type="hidden" name="price" value="' + room.price + '"/>'
                    $item += '<input type="hidden" name="eventPrice" value="' + room.eventPrice + '"/>'
                    $item += '<input type="hidden" name="breakfast" value="' + room.breakfast + '"/>'
                    $item += '<input type="hidden" name="roomRef" value="' + room.roomRef + '"/>'
                    $item += '<input type="hidden" name="roomBooth" value="' + room.roomBooth + '"/>'
                    $item += '<input type="hidden" name="roomTv" value="' + room.roomTv + '"/>'
                    $item += '<input type="hidden" name="roomAircon" value="' + room.roomAircon + '"/>'
                    $item += '<input type="hidden" name="roomSmoking" value="' + room.roomSmoking + '"/>'
                    $item += '<input type="hidden" name="roomWifi" value="' + room.roomWifi + '"/>'
                    $item += '<input type="hidden" name="addr1" value="' + addr1 + ' "/>'
                    $item += '<input type="hidden" name="hotelStar" value="' + hotelStar + '"/>'
                    $item += '<input type="hidden" name="name" value="' + hotelName + '"/>'
                    $item += '<input type="hidden" name="hasFrontDesk" value="' + hasFrontDesk + '"/>'
                    $item += '<input type="hidden" name="hasrestaurant" value="' + hasrestaurant + '"/>'
                    $item += '<input type="hidden" name="hasHotelWifi" value="' + hasHotelWifi + '"/>'
                    $item += '<input type="hidden" name="hasSmokeBanArea" value="' + hasSmokeBanArea + '"/>'
                    $item += '<input type="hidden" name="hasCoffeeShop" value="' + hasCoffeeShop + '"/>'
                    $item += '<input type="hidden" name="roomCount" class="roomCount" value=""/>'
                    $item += '<input type="hidden" class="mapX" value="' + mapX + '"/>'
                    $item += '<input type="hidden" class="maxY" value="' + maxY + '"/>'
                    $item += '<input type="hidden" class="zipCode" value="' + zipCode + '"/>'
                    $item += '<input type="hidden" class="modifiedDate" value="' + modifiedDate + '"/>'
                    $item += '<input type="hidden" class="tel" value="' + tel + '"/>'
                    $item += '<input type="hidden" class="firstImage" value="' + firstImage + '"/>'
                    $item += '<div class="roomlist-baseroom-card" id="' + room.roomId + '">'
                    $item += '<div class="roomtitle ">'
                    $item += '<div class="img-container">'
                    $item += '<div class="m-lazyImg" style="width: 121px; height: 86px;">'
                    $item += '<img class="m-lazyImg__img" src="' + '../../../resources/images/hotel/rooms/' + room.photo + '" style="width: 121px; height: 86px; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);">'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '<div class="baseroomInfo-container">'
                    $item += '<div class="roomname">' + room.type + '</div>'
                    $item += '<div class="roomEncourage">'
                    $item += '<div class="roomEncourage-encourage">' + room.roomView + '</div>'
                    $item += '</div>'
                    $item += '<div class="roomFacility">'
                    $item += '<div class="roomFacility-basic">'
                    $item += '<i type="ic_new_fa_acreage" class="u-icon u-icon-ic_new_fa_acreage">'
                    $item += room.roomSize + 'm²'
                    $item += '</i>'
                    $item += '</i>'
                    $item += '<div class="line"></div>'
                    $item += '</div>'
                    $item += '<div class="roomFacility-hotFacility">'
                    $item += '<span class="roomFacility-facilities">'
                    if (room.roomBooth == 'Y') {
                        $item += '<i type="ic_new_fa_shower" class="u-icon u-icon-ic_new_fa_shower facilityHover">'
                        $item += '개별 샤워룸'
                        $item += '</i>'
                    }
                    if (room.roomRef == 'Y') {
                        $item += '<i type="ic_new_fa_fridge" class="u-icon u-icon-ic_new_fa_fridge facilityHover">'
                        $item += '냉장고'
                        $item += '</i>'
                    }
                    if (room.roomTv == 'Y') {
                        $item += '<i type="ic_new_fa_telephone" class="u-icon u-icon-ic_new_fa_telephone facilityHover">'
                        $item += '전화기'
                        $item += '</i>'
                    }
                    $item += '</span>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '<div class="seeroom">'
                    $item += '<span>사진 & 시설 정보</span>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '<div class="roomcard">'
                    $item += '<div class="saleroomlist">'
                    $item += '<div class="salecardlist-rooms">'
                    $item += '<div class="ubt-salecard salecard">'
                    $item += '<div class="minpriceroom">'
                    $item += '<div class="icon"></div>'
                    $item += '<span class="content">오늘의 최저가</span>'
                    $item += '</div>'
                    $item += '<div class="salecard-frame">'
                    $item += '<div class="salecard-baseinfo">'
                    $item += '<div class="bookinfo-desc positive">'
                    $item += '<i type="=ic_new_fa_confirmation" class="u-icon u-icon-ic_new_fa_confirmation"></i>'
                    $item += '<span>'
                    $item += '<span class="bookinfo-desc-span hoverBookInfo">대기없이 바로 확정</span>'
                    $item += '</span>'
                    $item += '</div>'
                    $item += '<div class="bookinfo-desc">'
                    $item += '<i type="ic_new_fa_breakfast" class="u-icon u-icon-ic_new_fa_breakfast"></i>'
                    $item += '<span>'
                    $item += '<span class="bookinfo-desc-span hoverBookInfo hasBreakFast">'
                    if (room.breakfast == 'N') {
                        $item += '조식 뷔페 - 별도요금 12,000원'
                    }
                    if (room.breakfast == 'Y') {
                        $item += '조식 뷔페 - 포함'
                    }
                    $item += '</span>'
                    $item += '</span>'
                    $item += '</div>'
                    $item += '<div class="bookinfo-desc red">'
                    $item += '<i type="ic_new_fa_defect" class="u-icon u-icon-ic_new_fa_defect"></i>'
                    $item += '<span>'
                    $item += '<span class="bookinfo-desc-span hoverBookInfo">특별 할인가 (환불 불가)</span>'
                    $item += '</span>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '<div class="salecard-personinfo">'
                    $item += '<div class="adult">'
                    for (var i = 0; i < room.maxGuest; i++) {
                        $item += '<i type="ic_new_fa_occupant" style="margin-right:4px;" class="u-icon u-icon-ic_new_fa_occupant"></i>'
                    }
                    $item += '</div>'
                    $item += '</div>'
                    $item += '<div class="salecard-facilityInfo">'
                    $item += '<div class="bed">'
                    $item += '<div class="bed-icon">'
                    for (var i = 0; i < room.bedCount; i++) {
                        $item += '<i type="ic_new_twobeds" style="margin-right:4px;" class="u-icon u-icon-ic_new_twobeds"></i>'
                    }
                    $item += '</div>'
                    $item += '<div class="bed-content">'
                    $item += '<span class="hover">' + room.bedType + ' ' + room.bedCount + '개</span>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '<div class="facility">'
                    if (room.roomWifi == 'Y') {
                        $item += '<i type="ic_new_no_fa_wifi" class="u-icon u-icon-ic_new_no_fa_wifi hover"></i>'
                    }
                    if (room.roomSmoking == 'Y') {
                        $item += '<i type="ic_new_fa_no_smoking" class="u-icon u-icon-ic_new_fa_no_smoking hover"></i>'
                    }
                    if (room.roomTv == 'Y') {
                        $item += '<i type="window" class="u-icon u-icon-window hover"></i>'
                    }
                    $item += '</div>'
                    $item += '</div>'
                    $item += '<div class="salecard-priceinfo">'
                    $item += '<div class="salecard-priceinfo_top">'
                    $item += '<div class="salecard-priceinfo_top_left">'
                    $item += '<div class="des-with-icon orange" style="justify-content: flex-end;">'
                    $item += '<i class="u-icon u-icon-ic_new_tripcoins normal-icon undefined" type="ic_new_tripcoins" style="font-size: 12px; height: 12px; vertical-align: baseline;"></i>'
                    $item += '<span class="desc-text orange hover" style="font-size: 14px;" id="forCoin" data-minCoin="' + (room.eventPrice * 0.03).toLocaleString('ko-KR',option) + '">' + (room.eventPrice * 0.03).toLocaleString('ko-KR',option) + ' 막놀자코인 추가적립</span>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '<div class="salecard-priceinfo_bottom">'
                    $item += '<div class="salecard-priceinfo_bottom_left">'
                    $item += '<div class="percent">'
                    $item += '20% 할인'
                    $item += '</div>'
                    $item += '<div class="price">'
                    $item += '<span id="listOriginalPrice" class="price-delete">' + room.price.toLocaleString('ko-KR',option) + ' 원</span>'
                    $item += '<div class="price-display labelColor" id="detail-real-price">'
                    $item += '<div id="listEventPrice">' + room.eventPrice.toLocaleString('ko-KR',option) + ' 원</div>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '<div class="note">1박당 객실요금 (세금 포함)</div>'
                    $item += '</div>'
                    $item += '<div class="salecard-priceinfo_bottom_right">'
                    $item += '<div class="paytype">지금 결제</div>'
                    $item += '<div class="book-box">'
                    $item += '<button type="button" class="book">예약</button>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '</div>'
                    $item += '</form>'
                    $($body).append($item);
                })
            })
            .fail(function(){
                alert('조회 중 에러가 발생하였습니다. 잠시 후 다시 시도해 주세요.')
            })
    }
})

</script>

</body>
</html>