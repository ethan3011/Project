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
    <title>MAKNOLJA</title>


<style>
    .hotel-list-page {background: #f5f7fa;padding-bottom: 50px;}
    @media screen and (min-width: 1280px){  .short-search {padding: 12px 0;}  }
    .list-search-container {position: relative;    width: 100%;background: #fff;box-shadow: 0 8px 20px 0 rgb(97 121 157 / 16%);box-sizing: border-box;}
    .list-search-container-dark {background: antiquewhite;}
    @media screen and (min-width: 1280px){  .list-search-container .ul {max-width: 1160px;}  }
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
    .u-icon {font-family: "smarticon", sans-serif !important;font-display: swap;display: inline-block;font-style: normal;vertical-align: baseline;-webkit-font-smoothing: antialiased;-moz-osx-font-smoothing: grayscale;}
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
    .u-icon-ic_new_star:before {content: "\f005";font-family: "Font Awesome 5 Free";font-weight: 900;}
    .list-card-transport .transport {color: #455873;line-height: 18px;font-size: 14px;margin-bottom: 8px;}
    .list-card-transport .transport .position {padding-right: 8px;}
    .list-card-transport .transport .map {color: #287DFA;cursor: pointer;font-size: 14px;font-weight: 700;line-height: 18px;letter-spacing: 0px;width: 64px;white-space: nowrap;}
    .list-encourage-review {color: #4978ce;line-height: 18px;display: flex;align-items: flex-start;}
    .list-encourage-review .user {width: 18px;height: 18px;font-size: 18px;display: inline-flex;justify-content: center;border-radius: 100%;background: rgba(73,120,206,0.1);margin-right: 4px;overflow: hidden;flex-shrink: 0;}
    .list-encourage-review .user .occupant {position: relative;top: 3px;color: rgba(73,120,206,0.5);}
    .u-icon-ic_new_fa_occupant:before { content: "\f007";font-family: 'Font Awesome 5 Free';font-weight: 900;}
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
    .u-icon-ic_new_twobeds:before {content: "\f236";font-family: 'Font Awesome 5 Pro';font-weight: 900;}
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
    .isNotExist{ padding: 50px;margin: 0;color: dodgerblue;font-weight: 700;text-align: center;}
    .getForgetPwdNow {color: #0d6efd !important;text-decoration: underline !important;}
    .forAgree {color: #0d6efd !important;text-decoration: underline !important;}
</style>
</head>
<body>
<%@include file="../common/header.jsp" %>

<%--Body 시작--%>
<div class="hotel-main-container">
    <div class="hotel-list-page">
        <div class="list-search-container list-search-container-dark short-search">
            <form action="#" method="post" id="navBarSearchForm">
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
                                                                    <c:choose>
                                                                        <c:when test="${area.areaCode eq 1}">
                                                                            서울
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 2}">
                                                                            인천
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 3}">
                                                                            대전
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 4}">
                                                                            대구
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 5}">
                                                                            광주
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 6}">
                                                                            부산
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 7}">
                                                                            울산
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 8}">
                                                                            세종특별자치시
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 31}">
                                                                            경기도
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 32}">
                                                                            강원도
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 33}">
                                                                            충청북도
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 34}">
                                                                            충청남도
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 35}">
                                                                            경상북도
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 36}">
                                                                            경상남도
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 37}">
                                                                            전라북도
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 38}">
                                                                            전라남도
                                                                        </c:when>
                                                                        <c:when test="${area.areaCode eq 39}">
                                                                            제주
                                                                        </c:when>
                                                                    </c:choose>
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
                                                                    <c:choose>
                                                                        <c:when test="${hotel.areaCode eq 1}">
                                                                            서울
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 2}">
                                                                            인천
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 3}">
                                                                            대전
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 4}">
                                                                            대구
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 5}">
                                                                            광주
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 6}">
                                                                            부산
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 7}">
                                                                            울산
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 8}">
                                                                            세종특별자치시
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 31}">
                                                                            경기도
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 32}">
                                                                            강원도
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 33}">
                                                                            충청북도
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 34}">
                                                                            충청남도
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 35}">
                                                                            경상북도
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 36}">
                                                                            경상남도
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 37}">
                                                                            전라북도
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 38}">
                                                                            전라남도
                                                                        </c:when>
                                                                        <c:when test="${hotel.areaCode eq 39}">
                                                                            제주
                                                                        </c:when>
                                                                    </c:choose>
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
                                                        <input class="inputQty" type="number" min="0" value="1" max="5">
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
                            <input type="text" id="keyword" autocomplete="off" placeholder="공항, 역, 지역, 호텔 이름" value="${hotelName}" name="hotelName">
                            <div class="drop-result-list" style="left: -1px; display: none;">
                                <p class="not_found">죄송합니다. ''에 대한 검색 결과를 찾지 못했습니다.</p>
                            </div>
                        </div>
                    </li>
                    <li class="list-item list-btn">
                        <div class="search-btn-wrap search-btn-wrap_detailnormal">
                            <button type="button" id="searchButton" class="search-btn-wrap-text">검색</button>
                        </div>
                    </li>
                </ul>
            </form>
        </div>
        <section class="main-container main-content">
            <div class="filter-mask"></div>
            <div class="filter-wrap">
                <div class="mapfilter-wrap">
                    <div class="mapfilter-container bg-map">
                        <div class="map-item">
                            <i type="ic_new_map" class="u-icon u-icon-ic_new_map map_location"></i>
                            <div class="map-txt-new">지도에서 호텔보기</div>
                        </div>
                    </div>
                </div>
                <div class="popularFilter-wrap versionA">
                    <div class="popularFilter-container">
                        <div class="popularFilter-title">
                            <p>인기 검색 조건
                                <i type="ic_new_hot" class="u-icon u-icon-ic_new_hot"></i>
                            </p>
                        </div>
                        <ul class="m-checkbox">
                            <li class="m-checkbox_item">
                                <i type="checkbox" class="u-icon u-icon-checkbox icon-top"></i>
                                <span class="checkboxTxt">조식 포함</span>
                            </li>
                            <li class="m-checkbox_item">
                                <i type="checkbox" class="u-icon u-icon-checkbox icon-top"></i>
                                <span class="checkboxTxt">무료 취소</span>
                            </li>
                            <li class="m-checkbox_item">
                                <i type="checkbox" class="u-icon u-icon-checkbox icon-top"></i>
                                <span class="checkboxTxt">더블 침대 1개</span>
                            </li>
                            <li class="m-checkbox_item">
                                <i type="checkbox" class="u-icon u-icon-checkbox icon-top"></i>
                                <span class="checkboxTxt">싱글 침대 2개</span>
                            </li>
                            <li class="m-checkbox_item">
                                <i type="checkbox" class="u-icon u-icon-checkbox icon-top"></i>
                                <span class="checkboxTxt">대기없이 바로확정!</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="starrating-wrap">
                    <div class="starrating-container">
                        <div class="starrating-title">
                            <p>
                                호텔 성급
                                <i type="ic_new_question_line"
                                   class="u-icon u-icon-ic_new_question_line ic_question"></i>
                            </p>
                        </div>
                        <div class="starrating-content">
                            <ul class="sr-ul">
                                <li class="sr-li">
                                    <span class="sr-checkbox">
                                        <i type="checkbox" class="u-icon u-icon-checkbox"></i>
                                    </span>
                                    <span class="sr-level">
                                        <div class="more-star-repeat">
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                        </div>
                                    </span>
                                </li>
                                <li class="sr-li">
                                    <span class="sr-checkbox">
                                        <i type="checkbox" class="u-icon u-icon-checkbox"></i>
                                    </span>
                                    <span class="sr-level">
                                        <div class="more-star-repeat">
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                        </div>
                                    </span>
                                </li>
                                <li class="sr-li">
                                    <span class="sr-checkbox">
                                        <i type="checkbox" class="u-icon u-icon-checkbox"></i>
                                    </span>
                                    <span class="sr-level">
                                        <div class="more-star-repeat">
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                        </div>
                                    </span>
                                </li>
                                <li class="sr-li">
                                    <span class="sr-checkbox">
                                        <i type="checkbox" class="u-icon u-icon-checkbox"></i>
                                    </span>
                                    <span class="sr-level">
                                        <div class="more-star-repeat">
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                        </div>
                                    </span>
                                </li>
                                <li class="sr-li">
                                    <span class="sr-checkbox">
                                        <i type="checkbox" class="u-icon u-icon-checkbox"></i>
                                    </span>
                                    <span class="sr-level">
                                        <div class="more-star-repeat">
                                            <i type="ic_new_star" class="u-icon u-icon-ic_new_star own-star"></i>
                                        </div>
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <ul class="long-list" id="long-list">
                <li class="long-list-head">
                    <article>
                        <div class="filterWrapper">
                            <div class="current-filter-wrap">
                                <div class="filter-title clearfix">
                                    <h3>검색된 숙소 : ${totalHotelCount} 개</h3>
                                </div>
                            </div>
                            <div class="m-priceDesc">
                                <span class="m-priceDesc_text">객실당 1박 요금 (세금&서비스비용 포함)</span>
                            </div>
                        </div>
                        <div class="tab-sort-placeholder">
                            <div class="tab-sort-wrap" id="list_hotel_sort" style="top: 120px;">
                                <div class="tab-sort-inner-wrap">
                                    <div class="tab-sort-content">
                                        <div class="tab-item active" id="recommend">
                                            <span class="font-bold">추천</span>
                                        </div>
                                        <div class="tab-item" id="lowPrice">
                                            <span class="font-bold">객실 요금(낮은순)</span>
                                        </div>
                                        <div class="tab-item" id="lowStar">
                                            <span class="font-bold">호텔 성급 (낮은순)</span>
                                        </div>
                                        <div class="tab-item" id="highStar">
                                            <span class="font-bold">호텔 성급 (높은순)</span>
                                        </div>
                                        <div class="tab-item" id="review">
                                            <span class="font-bold">투숙객 평점</span>
                                        </div>
                                        <div class="tab-item" id="highPrice">
                                            <span class="font-bold">객실 요금 (높은순)</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </article>
                </li>
                <li>
                    <div class="tcb-notification m-announcement tcb-notification-bg-orange">
                        <ul class="tcb-notification-list">
                            <li class="tcb-notification-item">
                                <span class="tcb-notification-tit">[중요 공지] </span>
                                <span class="tcb-notification-cnt">해당 지역은 코로나19 관련 출입국 정책이 적용될 수 있습니다.</span>
                                <a class="tcb-notification-link" rel="noopener noreferrer" target="_blank" href="/info/coronaList">자세히보기</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <c:if test="${empty hotel && empty hotelRooms}">
                    <li>
                        <h3 class="isNotExist">일치하는 호텔이 존재하지 않습니다.</h3>
                    </li>
                </c:if>
                <c:choose>
                    <c:when test="${not empty hotel}">
                        <li>
                            <div class="with-decorator-wrap">
                                <div class="border -border">
                                    <div class="compressmeta-hotel-wrap">
                                        <div class="hotel-info">
                                            <div class="lf">
                                                <div class="m-lazyImg" style="width: 100%; height: 100%;">
                                                    <div class="m-lazyImg__img"
                                                         style="width: 100%; height: 100%; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);
                                                         <c:choose>
                                                         <c:when test="${empty hotel.secondImage}">
                                                                 background-image: url('/resources/images/hotel/HotelsInfo/ready.png');
                                                         </c:when>
                                                         <c:otherwise>
                                                                 background-image:url('${hotel.secondImage}');
                                                         </c:otherwise>
                                                         </c:choose>
                                                                 background-size:195px 170px;"></div>
                                                </div>
                                            </div>
                                            <div class="rt">
                                                <div class="rt-head">
                                                    <div class="rt-head-title">
                                                        <div class="list-card-tagAndTitle">
                                                            <div class="list-card-tag">
                                                                <div class="m-hotelTag arrayTag">
                                                                    <c:if test="${hotel.readCount ge 10000}">
                                                                        <div class="m-hotelTag_list popular">
                                                                            <i type="ic_new_hot"
                                                                               class="u-icon u-icon-ic_new_hot m-hotelTag_list_icon"></i>
                                                                            <span class="m-hotelTag_list_content isHover">인기상승호텔</span>
                                                                        </div>
                                                                    </c:if>
                                                                </div>
                                                            </div>
                                                            <div class="list-card-title ">
                                                                <span class="name font-bold">${hotel.name}</span>
                                                                <div class="more-star-repeat">
                                                                    <c:forEach begin="1" end="${hotel.hotelStar}">
                                                                        <i type="ic_new_star"
                                                                           class="u-icon u-icon-ic_new_star own-star"
                                                                           style="color: rgb(255, 149, 0);"></i>
                                                                    </c:forEach>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="list-card-transport">
                                                            <p class="transport">
                                                            <span class="position">
                                                                ${hotel.addr1}
                                                                <span> | </span>
<%--                                                                도심까지 거리: 1.2km--%>
                                                            </span>
                                                                <span class="map">지도에서 호텔보기</span>
                                                            </p>
                                                        </div>
                                                        <div class="list-encourage-review">
                                                        <span class="user">
                                                            <i type="ic_new_fa_occupant"
                                                               class="u-icon u-icon-ic_new_fa_occupant occupant"></i>
                                                        </span>
                                                            <p class="review-rt">
                                                            <span class="review-item">
                                                                "쇼핑하기 편리함"
                                                            </span>
                                                                <span class="review-item">
                                                                "우수한 시설"
                                                            </span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="rt-head-reviewandstatus">
                                                        <div class="list-card-comment">
                                                            <div class="me">
                                                                <div class="describe">
                                                                    <p class="outstanding font-bold">아주좋음</p>
                                                                    <p class="count">
                                                                        <a>리뷰 514개</a>
                                                                    </p>
                                                                </div>
                                                                <div class="score">
                                                                    <span class="real font-bold">4.5</span>
                                                                    <span class="full">/5</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="room-type">
                                                    <div class="room-panel-roominfo">
                                                        <div class="room-panel-roominfo-middle">
                                                            <span class="room-panel-roominfo-name">슈페리어 싱글룸</span>
                                                            <span class="room-panel-roominfo-people">
                                                            <i type="ic_new_fa_occupant"
                                                               class="u-icon u-icon-ic_new_fa_occupant"></i>
                                                            <i type="ic_new_fa_occupant"
                                                               class="u-icon u-icon-ic_new_fa_occupant"></i>
                                                        </span>
                                                            <span class="room-panel-roominfo-bed">
                                                            <i class="u-icon u-icon-ic_new_twobeds bed-icon-customer ic_new_twobeds"
                                                               type="ic_new_twobeds"></i>
                                                        </span>
                                                        </div>
                                                        <div class="list-card-promotion">
                                                            <div class="des-with-icon orange">
                                                                <i class="smartcoloricon normal-bg color-icon-bg tripcoins-icon-bg color-icon-ic_new_trip_coins">
                                                                    <i class="path1"></i>
                                                                    <i class="path2"></i>
                                                                    <i class="path3"></i>
                                                                </i>
                                                                <span class="desc-text orange spanClass"
                                                                      style="font-size: 14px;"><fmt:formatNumber
                                                                        pattern="###,###">${hotel.roomEventPrice*0.03}</fmt:formatNumber> 막놀자코인 추가적립</span>
                                                            </div>
                                                        </div>
                                                        <%--<div class="encourageMsg">xx분 전 예약됨</div>--%>
                                                    </div>
                                                    <div class="room-panel-rt">
                                                        <div class="room-panel-promotion"></div>
                                                        <div class="room-panel-price-btn">
                                                            <div class="room-panel-price">
                                                                <div class="whole">
                                                                    <div class="real font-bold labelColor"
                                                                         id="meta-real-price">
                                                                    <span>
                                                                        <div><fmt:formatNumber
                                                                                pattern="##,###">${hotel.roomEventPrice}</fmt:formatNumber> 원</div>
                                                                    </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="btn-bottom">
                                                                <div class="next font-bold" id="detailPage1" data-id="${hotel.id}", data-hotel="${hotel.hotelId}">
                                                                    예약가능여부확인
                                                                    <i type="ic_new_more_line1"
                                                                       class="u-icon u-icon-ic_new_more_line1"></i>
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
                        </li>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="list" items="${hotelRooms}">
                            <li>
                                <div class="with-decorator-wrap">
                                    <div class="border -border">
                                        <div class="compressmeta-hotel-wrap">
                                            <div class="hotel-info">
                                                <div class="lf">
                                                    <div class="m-lazyImg" style="width: 100%; height: 100%;">
                                                        <div class="m-lazyImg__img"
                                                             style="width: 100%; height: 100%; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245);
                                                             <c:choose>
                                                             <c:when test="${empty list.secondImage}">
                                                                     background-image: url('/resources/images/hotel/HotelsInfo/ready.png');
                                                             </c:when>
                                                             <c:otherwise>
                                                                     background-image:url('${list.secondImage}');
                                                             </c:otherwise>
                                                             </c:choose>
                                                                     background-size:195px 170px;"></div>
                                                    </div>
                                                </div>
                                                <div class="rt">
                                                    <div class="rt-head">
                                                        <div class="rt-head-title">
                                                            <div class="list-card-tagAndTitle">
                                                                <div class="list-card-tag">
                                                                    <div class="m-hotelTag arrayTag">
                                                                        <c:if test="${list.readCount ge 10000}">
                                                                            <div class="m-hotelTag_list popular">
                                                                                <i type="ic_new_hot"
                                                                                   class="u-icon u-icon-ic_new_hot m-hotelTag_list_icon"></i>
                                                                                <span class="m-hotelTag_list_content isHover">인기상승호텔</span>
                                                                            </div>
                                                                        </c:if>
                                                                    </div>
                                                                </div>
                                                                <div class="list-card-title ">
                                                                    <span class="name font-bold">${list.name}</span>
                                                                    <div class="more-star-repeat">
                                                                        <c:forEach begin="1" end="${list.hotelStar}">
                                                                            <i type="ic_new_star"
                                                                           class="u-icon u-icon-ic_new_star own-star"
                                                                           style="color: rgb(255, 149, 0);"></i>
                                                                        </c:forEach>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="list-card-transport">
                                                                <p class="transport">
                                                            <span class="position">
                                                                ${list.addr1}
                                                                <span> | </span>
                                                                <%--도심까지 거리: 1.2km--%>
                                                            </span>
                                                                    <span class="map">지도에서 호텔보기</span>
                                                                </p>
                                                            </div>
                                                            <div class="list-encourage-review">
                                                        <span class="user">
                                                            <i type="ic_new_fa_occupant"
                                                               class="u-icon u-icon-ic_new_fa_occupant occupant"></i>
                                                        </span>
                                                                <p class="review-rt">
                                                            <span class="review-item">
                                                                "쇼핑하기 편리함"
                                                            </span>
                                                                    <span class="review-item">
                                                                "우수한 시설"
                                                            </span>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="rt-head-reviewandstatus">
                                                            <div class="list-card-comment">
                                                                <div class="me">
                                                                    <div class="describe">
                                                                        <p class="outstanding font-bold">아주좋음</p>
                                                                        <p class="count">
                                                                            <a>리뷰 514개</a>
                                                                        </p>
                                                                    </div>
                                                                    <div class="score">
                                                                        <span class="real font-bold">4.5</span>
                                                                        <span class="full">/5</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="room-type">
                                                        <div class="room-panel-roominfo">
                                                            <div class="room-panel-roominfo-middle">
                                                                <span class="room-panel-roominfo-name">싱글 룸</span>
                                                                <span class="room-panel-roominfo-people">
                                                            <i type="ic_new_fa_occupant"
                                                               class="u-icon u-icon-ic_new_fa_occupant"></i>
                                                            <i type="ic_new_fa_occupant"
                                                               class="u-icon u-icon-ic_new_fa_occupant"></i>
                                                        </span>
                                                                <span class="room-panel-roominfo-bed">
                                                            <i class="u-icon u-icon-ic_new_twobeds bed-icon-customer ic_new_twobeds"
                                                               type="ic_new_twobeds"></i>
                                                        </span>
                                                            </div>
                                                            <div class="list-card-promotion">
                                                                <div class="des-with-icon orange">
                                                                    <i class="smartcoloricon normal-bg color-icon-bg tripcoins-icon-bg color-icon-ic_new_trip_coins">
                                                                        <i class="path1"></i>
                                                                        <i class="path2"></i>
                                                                        <i class="path3"></i>
                                                                    </i>
                                                                    <span class="desc-text orange spanClass"
                                                                          style="font-size: 14px;"><fmt:formatNumber
                                                                            pattern="###,###">${list.roomEventPrice*0.03}</fmt:formatNumber> 막놀자코인 추가적립</span>
                                                                </div>
                                                            </div>
                                                            <%--<div class="encourageMsg">52분 전 예약됨</div>--%>
                                                        </div>
                                                        <div class="room-panel-rt">
                                                            <div class="room-panel-promotion"></div>
                                                            <div class="room-panel-price-btn">
                                                                <div class="room-panel-price">
                                                                    <div class="whole">
                                                                        <div class="real font-bold labelColor"
                                                                             id="discount-real-price">
                                                                    <span>
                                                                        <div><fmt:formatNumber
                                                                                pattern="##,###">${list.roomEventPrice}</fmt:formatNumber> 원</div>
                                                                    </span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="btn-bottom">
                                                                    <div class="next font-bold detailPage2" data-id="${list.id}", data-hotel="${list.hotelId}">
                                                                        예약가능여부확인
                                                                        <i type="ic_new_more_line1"
                                                                           class="u-icon u-icon-ic_new_more_line1"></i>
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
                            </li>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </ul>
        </section>
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
                            <a href="#" class="forgetId" style="color: #0d6efd !important;">아이디 찾기</a>
                            <a href="#" class="getForgetPwdNow">비밀번호 찾기</a>
                            <div class="modal-policy">
                                <p>막놀자닷컴 회원 가입 시 <a href="#" class="forAgree">이용약관</a> 및 <a href="#" class="forAgree">개인정보정책</a>에 동의하는 것으로 간주합니다.</p>
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
                    <p>아직 막놀자닷컴 회원이 아니세요? <a href="#" class="modal2-register" style="color: #0d6efd !important;">회원가입 ></a></p>
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

    // keyup 시간 지연 함수
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


    // 네비바 검색시 제출
    $('.search-btn-wrap_detailnormal').click(function(){
        $('#navBarSearchForm').submit();
    })

    // 호텔 검색조건별 나누기
    $(".tab-item").click(function(){
        $(".tab-item").removeClass('active');
        $('.sr-li').removeClass('sr-checked');
        $(this).addClass("active");

        $("#long-list li:gt(2)").remove();

        let areaName = $.trim('<%= request.getParameter("areaName") %>')
        let checkIn = $.trim('<%= request.getParameter("check-in") %>')
        let checkOut = $.trim('<%= request.getParameter("check-out") %>')
        let traveller = $.trim('<%= request.getParameter("traveler") %>')

        var searchType = $(this).find('.font-bold').text();

        $.ajax({
            type:"GET",
            url:"SearchHotelListJson",
            data:{cityName:areaName,'check-in':encodeURIComponent(checkIn),'check-out':encodeURIComponent(checkOut),traveler:encodeURIComponent(traveller)},
            dataType:'json'
        })
            .done(function(response){
                let sortOption;

                if(searchType == '추천'){
                    sortOption = response;
                }

                if(searchType == '객실 요금(낮은순)'){
                    sortOption = response.sort(function(a, b){
                        return a.roomEventPrice - b.roomEventPrice;
                    })
                }
                if(searchType == '호텔 성급 (낮은순)'){
                    sortOption = response.sort(function(a, b){
                        return a.hotelStar - b.hotelStar;
                    })
                }
                if(searchType == '호텔 성급 (높은순)'){
                    sortOption = response.sort(function(a, b){
                        return b.hotelStar - a.hotelStar;
                    })
                }
                if(searchType == '투숙객 평점'){
                    sortOption = response;
                }
                if(searchType == '객실 요금 (높은순)') {
                    sortOption = response.sort(function(a, b){
                        return b.roomEventPrice - a.roomEventPrice;
                    })
                }

                let option = {maximumFractionDigits: 0};
                $.each(sortOption, function(index, item){

                    var $item = "<li>";
                    $item+=         "<div class='with-decorator-wrap'>";
                    $item+=             "<div class='border -border'>";
                    $item+=                 "<div class='compressmeta-hotel-wrap'>";
                    $item+=                     "<div class='hotel-info'>";
                    $item+=                         "<div class=lf>";
                    $item+=                             "<div class='m-lazyImg' style='width: 100%; height: 100%;'>";
                    if(item.secondImage == null){
                    $item+=                                 "<div class='m-lazyImg__img' style='width: 100%; height: 100%; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245); background-image: url(/resources/images/hotel/HotelsInfo/ready.png); background-size:195px 170px;'>";
                    }else{
                    $item+=                                 "<div class='m-lazyImg__img' style='width: 100%; height: 100%; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245); background-image:url(" + item.secondImage + "); background-size:195px 170px;'>";
                    }
                    $item+=                                 "</div>";
                    $item+=                             "</div>"
                    $item+=                         "</div>"
                    $item+=                         "<div class='rt'>";
                    $item+=                             "<div class='rt-head'>"
                    $item+=                                 "<div class='rt-head-title'>"
                    $item+=                                     "<div class='list-card-tagAndTitle'>"
                    $item+=                                         "<div class='list-card-tag'>"
                    if(item.readCount >= 10000) {
                        $item+=                                             "<div class='m-hotelTag arrayTag'>"
                        $item+=                                                 "<div class='m-hotelTag_list popular'>"
                        $item+=                                                     "<i type='ic_new_hot' class='u-icon u-icon-ic_new_hot m-hotelTag_list_icon' ></i>"
                        $item+=                                                     "<span class='m-hotelTag_list_content isHover'>인기상승호텔</span>"
                        $item+=                                                 "</div>"
                        $item+=                                             "</div>"
                    }
                    $item+=                                         "</div>"
                    $item+=                                         "<div class='list-card-title'>"
                    $item+=                                             "<span class='name font-bold'>"+ item.name +"</span>"
                    $item+=                                             "<div class='more-star-repeat'>"
                    for(var i=0; i<item.hotelStar; i++) {
                        $item+=                                                 "<i type='ic_new_star' class='u-icon u-icon-ic_new_star own-star' style='color: rgb(255, 149, 0);'></i>"
                    }
                    $item+=                                             "</div>"
                    $item+=                                         "</div>"
                    $item+=                                     "</div>"
                    $item+=                                     '<div class="list-card-transport">'
                    $item+=                                         '<p class="transport">'
                    $item+=                                             '<span class="position">'
                    $item+=                                                 item.addr1
                    $item+=                                                 '<span> | </span>'
                    /*            $item+=                                                 '도심까지 거리: 1.2km'*/
                    $item+=                                             '</span>'
                    $item+=                                             '<span class="map">지도에서 호텔보기</span>'
                    $item+=                                         '</p>'
                    $item+=                                     '</div>'
                    $item+=                                     '<div class="list-encourage-review">'
                    $item+=                                         '<span class="user">'
                    $item+=                                             '<i type="ic_new_fa_occupant" class="u-icon u-icon-ic_new_fa_occupant occupant"></i>'
                    $item+=                                         '</span>'
                    $item+=                                         '<p class="review-rt">'
                    $item+=                                             '<span class="review-item">'
                    $item+=                                                 '"쇼핑하기 편리함"'
                    $item+=                                             '</span>'
                    $item+=                                             '<span class="review-item">'
                    $item+=                                                 '"우수한 시설"'
                    $item+=                                             '</span>'
                    $item+=                                         '</p>'
                    $item+=                                     '</div>'
                    $item+=                                 "</div>"
                    $item+=                                 "<div class='rt-head-reviewandstatus'>"
                    $item+=                                     "<div class='list-card-comment'>"
                    $item+=                                         "<div class='me'>"
                    $item+=                                             "<div class='describe'>"
                    $item+=                                                 "<p class='outstanding font-bold'>아주좋음</p>"
                    $item+=                                                 "<p class='count'>"
                    $item+=                                                 "<a>리뷰 514개</a>"
                    $item+=                                                 "</p>"
                    $item+=                                             "</div>"
                    $item+=                                             "<div class='score'>"
                    $item+=                                                 '<span class="real font-bold">4.5</span>'
                    $item+=                                                 '<span class="full">/5</span>'
                    $item+=                                             "</div>"
                    $item+=                                         "</div>"
                    $item+=                                     "</div>"
                    $item+=                                 "</div>"
                    $item+=                             "</div>"
                    $item+=                             '<div class="room-type">'
                    $item+=                                 '<div class="room-panel-roominfo">'
                    $item+=                                     '<div class="room-panel-roominfo-middle">'
                    $item+=                                         '<span class="room-panel-roominfo-name">'+ item.roomType +'</span>'
                    $item+=                                         '<span class="room-panel-roominfo-people">'
                    for(var i=0; i<item.roomMaxGuest; i++){
                        $item+=                                             '<i type="ic_new_fa_occupant" class="u-icon u-icon-ic_new_fa_occupant"></i>'
                    }
                    $item+=                                         '</span>'
                    $item+=                                         '<span class="room-panel-roominfo-bed">'
                    for (var i=0; i<item.roomBedCount; i++) {
                        $item+=                                             '<i class="u-icon u-icon-ic_new_twobeds bed-icon-customer ic_new_twobeds" type="ic_new_twobeds"></i>'
                    }
                    $item+=                                         '</span>'
                    $item+=                                     '</div>'
                    $item+=                                     '<div class="list-card-promotion">'
                    $item+=                                         '<div class="des-with-icon orange">'
                    $item+=                                             '<i class="smartcoloricon normal-bg color-icon-bg tripcoins-icon-bg color-icon-ic_new_trip_coins">'
                    $item+=                                                 '<i class="path1"></i>'
                    $item+=                                                 '<i class="path2"></i>'
                    $item+=                                                 '<i class="path3"></i>'
                    $item+=                                             '</i>'
                    $item+=                                             '<span class="desc-text orange spanClass" style="font-size: 14px;">' + (item.roomEventPrice * 0.03).toLocaleString('ko-KR',option) + ' 막놀자코인 추가 적립</span>'
                    $item+=                                         '</div>'
                    $item+=                                     '</div>'
                    /*$item+=                                     '<div class="encourageMsg">xx분 전 예약됨</div>'*/
                    $item+=                                 '</div>'
                    $item+=                                 '<div class="room-panel-rt">'
                    $item+=                                     '<div class="room-panel-promotion"></div>'
                    $item+=                                     '<div class="room-panel-price-btn">'
                    $item+=                                         '<div class="room-panel-price">'
                    $item+=                                             '<div class="whole">'
                    $item+=                                                 '<div class="real font-bold labelColor" id="meta-real-price">'
                    $item+=                                                     '<span>'
                    $item+=                                                         '<div>' +  item.roomEventPrice.toLocaleString('ko-KR') +' 원</div>'
                    $item+=                                                     '</span>'
                    $item+=                                                 '</div>'
                    $item+=                                             '</div>'
                    $item+=                                         '</div>'
                    $item+=                                         '<div class="btn-bottom">'
                    $item+=                                             '<div class="next font-bold detailPage2" id="detailPage1" data-id="'+item.id+'", data-hotel="'+item.hotelId+'">'
                    $item+=                                             '예약가능여부확인 '
                    $item+=                                             '<i type="ic_new_more_line1"class="u-icon u-icon-ic_new_more_line1"></i>'
                    $item+=                                         '</div>'
                    $item+=                                     '</div>'
                    $item+=                                '</div>'
                    $item+=                             '</div>'
                    $item+=                         '</div>'
                    $item+=                     "</div>"
                    $item+=                 "</div>"
                    $item+=             "</div>"
                    $item+=         "</div>"
                    $item+=     "</div>"
                    $item+= "</li>"

                    $("#long-list").append($item);
                })
                var totalHotelCount = $('.hotel-info').length;
                $('.clearfix h3').text('검색된 숙소 : ' + totalHotelCount + ' 개');
            })
            .fail(function(){
                alert('정렬중 에러가 발생하였습니다. 잠시 후 다시 시도해주세요.')
            })
    })
    // 호텔 등급별 나누기
    $(".sr-li").click(function(){
        $('.sr-li').removeClass('sr-checked');
        $(".tab-item").removeClass('active');
        $(this).addClass('sr-checked')
        $("#long-list li:gt(2)").remove();
        let selectedStar = $(this).find('.own-star').length;
        let areaName = $.trim('<%= request.getParameter("areaName") %>')
        let checkIn = $.trim('<%= request.getParameter("check-in") %>')
        let checkOut = $.trim('<%= request.getParameter("check-out") %>')
        let traveller = $.trim('<%= request.getParameter("traveler") %>')

        $.ajax({
            type:"GET",
            url:"SearchHotelListJson",
            data:{cityName:areaName,'check-in':encodeURIComponent(checkIn),'check-out':encodeURIComponent(checkOut),traveler:encodeURIComponent(traveller)},
            dataType:'json'
        })
            .done(function(response){
                let option = {maximumFractionDigits: 0};
                $.each(response, function(index, item){
                    if(item.hotelStar == selectedStar){
                        var $item = "<li>";
                        $item+=         "<div class='with-decorator-wrap'>";
                        $item+=             "<div class='border -border'>";
                        $item+=                 "<div class='compressmeta-hotel-wrap'>";
                        $item+=                     "<div class='hotel-info'>";
                        $item+=                         "<div class=lf>";
                        $item+=                             "<div class='m-lazyImg' style='width: 100%; height: 100%;'>";
                        if(item.secondImage == null){
                            $item+=                                 "<div class='m-lazyImg__img' style='width: 100%; height: 100%; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245); background-image: url(/resources/images/hotel/HotelsInfo/ready.png); background-size:195px 170px;'>";
                        }else{
                            $item+=                                 "<div class='m-lazyImg__img' style='width: 100%; height: 100%; object-fit: cover; object-position: center center; background-color: rgb(240, 242, 245); background-image:url(" + item.secondImage + "); background-size:195px 170px;'>";
                        }
                        $item+=                                 "</div>";
                        $item+=                             "</div>"
                        $item+=                         "</div>"
                        $item+=                         "<div class='rt'>";
                        $item+=                             "<div class='rt-head'>"
                        $item+=                                 "<div class='rt-head-title'>"
                        $item+=                                     "<div class='list-card-tagAndTitle'>"
                        $item+=                                         "<div class='list-card-tag'>"
                        if(item.readCount >= 10000) {
                            $item+=                                             "<div class='m-hotelTag arrayTag'>"
                            $item+=                                                 "<div class='m-hotelTag_list popular'>"
                            $item+=                                                     "<i type='ic_new_hot' class='u-icon u-icon-ic_new_hot m-hotelTag_list_icon' ></i>"
                            $item+=                                                     "<span class='m-hotelTag_list_content isHover'>인기상승호텔</span>"
                            $item+=                                                 "</div>"
                            $item+=                                             "</div>"
                        }
                        $item+=                                         "</div>"
                        $item+=                                         "<div class='list-card-title'>"
                        $item+=                                             "<span class='name font-bold'>"+ item.name +"</span>"
                        $item+=                                             "<div class='more-star-repeat'>"
                        for(var i=0; i<item.hotelStar; i++) {
                            $item+=                                                 "<i type='ic_new_star' class='u-icon u-icon-ic_new_star own-star' style='color: rgb(255, 149, 0);'></i>"
                        }
                        $item+=                                             "</div>"
                        $item+=                                         "</div>"
                        $item+=                                     "</div>"
                        $item+=                                     '<div class="list-card-transport">'
                        $item+=                                         '<p class="transport">'
                        $item+=                                             '<span class="position">'
                        $item+=                                                 item.addr1
                        $item+=                                                 '<span> | </span>'
                        /*            $item+=                                                 '도심까지 거리: 1.2km'*/
                        $item+=                                             '</span>'
                        $item+=                                             '<span class="map">지도에서 호텔보기</span>'
                        $item+=                                         '</p>'
                        $item+=                                     '</div>'
                        $item+=                                     '<div class="list-encourage-review">'
                        $item+=                                         '<span class="user">'
                        $item+=                                             '<i type="ic_new_fa_occupant" class="u-icon u-icon-ic_new_fa_occupant occupant"></i>'
                        $item+=                                         '</span>'
                        $item+=                                         '<p class="review-rt">'
                        $item+=                                             '<span class="review-item">'
                        $item+=                                                 '"쇼핑하기 편리함"'
                        $item+=                                             '</span>'
                        $item+=                                             '<span class="review-item">'
                        $item+=                                                 '"우수한 시설"'
                        $item+=                                             '</span>'
                        $item+=                                         '</p>'
                        $item+=                                     '</div>'
                        $item+=                                 "</div>"
                        $item+=                                 "<div class='rt-head-reviewandstatus'>"
                        $item+=                                     "<div class='list-card-comment'>"
                        $item+=                                         "<div class='me'>"
                        $item+=                                             "<div class='describe'>"
                        $item+=                                                 "<p class='outstanding font-bold'>아주좋음</p>"
                        $item+=                                                 "<p class='count'>"
                        $item+=                                                 "<a>리뷰 514개</a>"
                        $item+=                                                 "</p>"
                        $item+=                                             "</div>"
                        $item+=                                             "<div class='score'>"
                        $item+=                                                 '<span class="real font-bold">4.5</span>'
                        $item+=                                                 '<span class="full">/5</span>'
                        $item+=                                             "</div>"
                        $item+=                                         "</div>"
                        $item+=                                     "</div>"
                        $item+=                                 "</div>"
                        $item+=                             "</div>"
                        $item+=                             '<div class="room-type">'
                        $item+=                                 '<div class="room-panel-roominfo">'
                        $item+=                                     '<div class="room-panel-roominfo-middle">'
                        $item+=                                         '<span class="room-panel-roominfo-name">'+ item.roomType +'</span>'
                        $item+=                                         '<span class="room-panel-roominfo-people">'
                        for(var i=0; i<item.roomMaxGuest; i++){
                            $item+=                                             '<i type="ic_new_fa_occupant" class="u-icon u-icon-ic_new_fa_occupant"></i>'
                        }
                        $item+=                                         '</span>'
                        $item+=                                         '<span class="room-panel-roominfo-bed">'
                        for (var i=0; i<item.roomBedCount; i++) {
                            $item+=                                             '<i class="u-icon u-icon-ic_new_twobeds bed-icon-customer ic_new_twobeds" type="ic_new_twobeds"></i>'
                        }
                        $item+=                                         '</span>'
                        $item+=                                     '</div>'
                        $item+=                                     '<div class="list-card-promotion">'
                        $item+=                                         '<div class="des-with-icon orange">'
                        $item+=                                             '<i class="smartcoloricon normal-bg color-icon-bg tripcoins-icon-bg color-icon-ic_new_trip_coins">'
                        $item+=                                                 '<i class="path1"></i>'
                        $item+=                                                 '<i class="path2"></i>'
                        $item+=                                                 '<i class="path3"></i>'
                        $item+=                                             '</i>'
                        $item+=                                             '<span class="desc-text orange spanClass" style="font-size: 14px;">' + (item.roomEventPrice * 0.03).toLocaleString('ko-KR',option) + ' 막놀자코인 추가 적립</span>'
                        $item+=                                         '</div>'
                        $item+=                                     '</div>'
                        /*$item+=                                     '<div class="encourageMsg">xx분 전 예약됨</div>'*/
                        $item+=                                 '</div>'
                        $item+=                                 '<div class="room-panel-rt">'
                        $item+=                                     '<div class="room-panel-promotion"></div>'
                        $item+=                                     '<div class="room-panel-price-btn">'
                        $item+=                                         '<div class="room-panel-price">'
                        $item+=                                             '<div class="whole">'
                        $item+=                                                 '<div class="real font-bold labelColor" id="meta-real-price">'
                        $item+=                                                     '<span>'
                        $item+=                                                         '<div>' +  item.roomEventPrice.toLocaleString('ko-KR') +' 원</div>'
                        $item+=                                                     '</span>'
                        $item+=                                                 '</div>'
                        $item+=                                             '</div>'
                        $item+=                                         '</div>'
                        $item+=                                         '<div class="btn-bottom">'
                        $item+=                                             '<div class="next font-bold detailPage2" id="detailPage1" data-id="'+item.id+'", data-hotel="'+item.hotelId+'">'
                        $item+=                                             '예약가능여부확인 '
                        $item+=                                             '<i type="ic_new_more_line1"class="u-icon u-icon-ic_new_more_line1"></i>'
                        $item+=                                         '</div>'
                        $item+=                                     '</div>'
                        $item+=                                '</div>'
                        $item+=                             '</div>'
                        $item+=                         '</div>'
                        $item+=                     "</div>"
                        $item+=                 "</div>"
                        $item+=             "</div>"
                        $item+=         "</div>"
                        $item+=     "</div>"
                        $item+= "</li>"

                        $("#long-list").append($item);
                    }
                })
                // 검색된 조건의 호텔 숙소숫자 계산하기
                var totalHotelCount = $('.hotel-info').length;
                $('.clearfix h3').text('검색된 숙소 : ' + totalHotelCount + ' 개');
            })
            .fail(function(){
                alert('정렬중 에러가 발생하였습니다. 잠시 후 다시 시도해주세요.')
            })
    })

    // 호텔 한개 검색
    $(document).on('click','#detailPage1',function(){

        var hotelNo = $(this).data("id");
        var hotelId = $(this).data("hotel");
        var traveler = $("#info").val();
        var checkIn = $("#input-start").val();
        var checkOut = $("#input-end").val();
        var areaName = $("#hotels-destination").val();

        location.href = ("/hotel/detail?no=" + hotelNo + "&hotelId=" + hotelId + "&checkIn=" + checkIn + "&checkOut=" + checkOut + "&traveler=" + traveler + "&areaName=" + areaName);

    })
    // 호텔 리스트에서 검색
    $(document).on('click','.detailPage2',function(){

        var hotelNo = $(this).data("id");
        var hotelId = $(this).data("hotel");
        var traveler = $("#info").val();
        var checkIn = $("#input-start").val();
        var checkOut = $("#input-end").val();
        var areaName = $("#hotels-destination").val();

        location.href = ("/hotel/detail?no=" + hotelNo + "&hotelId=" + hotelId + "&checkIn=" + checkIn + "&checkOut=" + checkOut + "&traveler=" + traveler + "&areaName=" + areaName);
    })

})

</script>
</body>
</html>