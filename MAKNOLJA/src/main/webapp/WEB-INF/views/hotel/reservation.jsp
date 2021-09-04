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

    <title>MAKNOLJA</title>

    <style>
        .p-book {padding: 16px 32px;color: #0F294D;max-width: 1160px !important;position: relative;display: flex;}
        .g-container {min-width: 768px;max-width: 1180px;margin: 0 auto;}
        @media screen and (max-width: 1024px){ .p-book {min-width: 620px;flex-direction: column;}}
        @media screen and (max-width: 1024px){ .g-container {padding: 16px 32px;box-sizing: border-box;height: 100%;width: 100%;min-width: 768px;}}
        .p-book .bookMain {flex: 1;margin-right: 16px;}
        .p-book-dashedWrapper {background-color: #fff;}
        .p-book-dashedWrapper>div {border-bottom: 1px dashed #DADFE6;}
        .m-hotelDetail {padding: 24px 0 12px;margin: 0 24px;}
        .m-hotelDetail-name {font-size: 24px;line-height: 30px;font-weight: bold;color: #0F294D;}
        .m-hotelDetail-name .u-level {margin-left: 12px;}
        .u-level {display: inline-block;position: relative;top: -2px;font-size: 12px;color: #FF9500;vertical-align: middle;}
        .u-icon {font-family: "smarticon", sans-serif !important;font-display: swap;display: inline-block;font-style: normal;vertical-align: baseline;-webkit-font-smoothing: antialiased;-moz-osx-font-smoothing: grayscale;}
        dfn, em, i {font-weight: 400;font-style: normal;}
        .u-icon-star:before {content: "\f005";font-family: "Font Awesome 5 Free"; font-weight:900;}
        .m-hotelFacility {margin-top: 8px;}
        .m-hotelFacility-head {display: flex;justify-content: space-between;font-size: 14px;line-height: 2;}
        .m-hotelFacility-head .main {display: flex;flex-wrap: wrap;}
        .m-hotelFacility-head .main div {margin-right: 16px;}
        .m-hotelFacility-head .title {font-weight: bold;}
        .m-hotelFacility-head .facility i {margin-right: 6px;}
        .u-icon-person:before { content: "\f007";font-family: 'FontAwesome'; }
        .u-icon-child:before { content: "\f1ae";font-family: 'FontAwesome'; }
        .u-icon-ic_new_fa_wifi:before {content: "\f1eb";font-family: 'FontAwesome';}
        .u-icon-ic_new_fa_bed:before {content: "\f236";font-family: 'FontAwesome';}
        .u-icon-ic_new_fa_breakfast:before {content: "\f2e7";font-family: 'FontAwesome';}
        .m-hotelFacility-head .main div:last-child {margin-right: 0;}
        .m-hotelFacility-head .cancelpolicy.freeCancel {color: #06aebd;}
        .m-hotelFacility-head .main div {margin-right: 16px;}
        .u-icon-advantage:before {content: "\f0e7";font-family: 'FontAwesome';}
        .m-hotelFacility-head .showMore {margin-left: 16px;white-space: nowrap;color: #287dfa;font-weight: bold;cursor: pointer;}
        .p-book-dashedWrapper>div:last-child {border-bottom: none;}
        .m-dateInfoB {display: flex;justify-content: space-between;padding: 16px 0;margin: 0 24px;}
        .date-selectorB {flex: 3;display: flex;align-items: center;position: relative;font-size: 16px;white-space: nowrap;}
        .u-icon-ic_new_calendar_line:before {content: "\f073";font-family: 'FontAwesome';}
        .date-selectorB .date {margin: 0 8px;font-weight: bold;flex: 1;text-align: center;}
        .date-selectorB .nights {font-size: 14px;color: #455873;margin: 0 16px;}
        .date-selectorB .arrow {color: #acb4bf;}
        .u-icon-arrowLineDown:before {content: "\f078";font-family: 'FontAwesome';}
        /*.date-selectorB::after {display: block;content: "";height: 18px;border-right: 2px solid #acb4bf;margin-left: 48px;}*/
        .m-roomsB {flex: 2;display: flex;align-items: center;font-size: 16px;position: relative;padding-left: 48px;}
        .m-roomsB .rooms {font-weight: bold;}
        .m-roomsB i {margin-left: 8px;color: #acb4bf;}
        .p-book-form {border: 4px solid #DADFE6;margin: 8px 0;}
        .p-book-form>div:last-child {margin-bottom: 0;}
        .p-book-dashedWrapper {background-color: #fff;}
        .p-book-dashedWrapper>div:last-child {border-bottom: none;}
        .m-guestInfo {padding: 16px 0;margin: 0 16px;}
        .p-book h3 {font-size: 18px;}
        .g-container h3 {font-size: 20px;line-height: 26px;}
        .m-guestInfo_remark {color: #455873;font-size: 14px;line-height: 18px;padding-top: 8px;}
        .m-guestInfo .u-icon-ic_new_question_line {cursor: pointer;margin-left: 5px;font-size: 16px;color: #8592A6;}
        .m-guest {margin-top: 16px;}
        .m-guest .m-room-item.singleRoom {margin-bottom: 32px;background-color: transparent;padding: 0px;}
        .m-guest .m-room-item {margin-bottom: 8px;background-color: #f5f7fa;padding: 16px;position: relative;}
        .m-guest-item {margin-bottom: 16px;}
        .m-guest-item .guestContainer {position: relative;}
        .m-guest-item .guestContainer .guestContainer-input {display: flex;}
        .guestContainer-input .m-input-border, .guestContainer-input .m-inputBox {flex: 1;}
        .m-inputBox {display: inline-block;position: relative;}
        .m-inputBox_label {color: #455873;font-size: 14px;line-height: 18px;}
        .m-inputBox .inputWrapper {position: relative;display: inline-block;width: 100%;}
        .m-concatInfo {font-size: 14px;}
        .m-concatInfo_email, .m-concatInfo_phone {margin-top: 16px;display: block;}
        .m-inputBox {display: inline-block;position: relative;}
        .m-concatInfo_account {margin-top: 8px;}
        .m-concatInfo_email, .m-concatInfo_phone {margin-top: 16px;display: block;}
        .m-concatInfo .phoneLabel {color: #455873;font-size: 14px;line-height: 18px;}
        .tcp-online-rs {margin: 0;padding: 0;}
        .tcp-online-rs>.tcp-online-rs__content.withCommonStyle {border: none;}
        .tcp-online-rs>.tcp-online-rs__content {width: 100%;height: 40px;box-sizing: border-box;position: relative;display: flex;}
        .u-clearfix:after, .u-clearfix:before {content: "";display: table;}
        .tcp-online-rs>.tcp-online-rs__content.withCommonStyle .country-select {border: none;border-bottom: 1px solid #ced2d9;width: 80px;}
        .tcp-online-rs>.tcp-online-rs__content .country-select {border: 1px solid #e4e4e4;color: #333;background: #fff;border-radius: 2px;width: 90px;}
        .tcp-online-rs>.tcp-online-rs__content.withCommonStyle .country-select .selected-box {border: none;font-size: 16px;padding: 0;height: 38px;line-height: 40px;margin: 0;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .selected-box {box-sizing: border-box;overflow: hidden;height: 22px;line-height: 22px;margin-top: 8px;padding: 0 10px;font-size: 14px;font-weight: 700;cursor: pointer;position: relative;}
        .tcp-online-rs>.tcp-online-rs__content.withCommonStyle .country-select .selected-box span {color: #0f294d;font-weight: 700;}
        .tcp-online-rs>.tcp-online-rs__content.withCommonStyle .country-select .selected-box i {position: absolute;top: 0;right: 0;color: #8592a6;}
        .tcp-online-rs .fi_regionselect {font-family: fi-regionselect,sans-serif;font-style: normal;font-weight: 400;font-size: 12px;-webkit-font-smoothing: antialiased;-moz-osx-font-smoothing: grayscale;}
        .tcp-online-rs .fi-down:before {content: "\e32c";}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list {background: #fff;position: absolute;z-index: 11;top: 39px;left: -1px;right: 0;height: 450px;border: 1px solid #ddd;box-sizing: border-box;box-shadow: 0 8px 20px 0 rgb(0 41 99 / 20%);display: none;overflow: hidden;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list_top-box {display: block;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .selected-list {background: #fff;padding: 10px 5px 10px 10px;}
        .tcp-online-rs ol, .tcp-online-rs ul {margin: 0;padding: 0;list-style: none;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .selected-list .list-title {font-size: 14px;line-height: 18px;color: #999;}
        ul, li {margin: 0;padding: 0;list-style: none;}
        li {display: list-item;text-align: -webkit-match-parent;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .selected-list .list-item {height: 36px;line-height: 36px;font-size: 14px;color: #287dfa;position: relative;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .selected-list .list-item .country-name {display: inline-block;max-width: 228px;white-space: nowrap;text-overflow: ellipsis;overflow: hidden;vertical-align: top;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .selected-list .list-item .country-number {margin-left: 10px;display: inline-block;vertical-align: top;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .selected-list .list-item i {font-size: 14px;position: absolute;right: 0;top: 0;}
        .tcp-online-rs .fi_regionselect {font-family: fi-regionselect,sans-serif;font-style: normal;font-weight: 400;font-size: 12px;-webkit-font-smoothing: antialiased;-moz-osx-font-smoothing: grayscale;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .selected-list .search-input-box {border: 1px solid #e4e4e4;padding-left: 35px;position: relative;line-height: 1.2;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .selected-list .search-input-box i {color: #333;font-size: 25px;position: absolute;top: 5px;left: 10px;}
        .tcp-online-rs .fi_regionselect {font-family: fi-regionselect,sans-serif;font-style: normal;font-weight: 400;font-size: 12px;-webkit-font-smoothing: antialiased;-moz-osx-font-smoothing: grayscale;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .selected-list .search-input-box .search-input {box-sizing: border-box;width: 100%;height: 38px;line-height: 38px;font-size: 14px;outline-style: none;border: none;padding: 0 10px;color: #333;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .result-list.isSelected {height: 336px;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .result-list {display: none;overflow-x: hidden;overflow-y: auto;position: relative;height: 390px;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list_bottom-box {overflow-x: hidden;overflow-y: auto;}
        .tcp-online-rs ol, .tcp-online-rs ul {margin: 0;padding: 0;list-style: none;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .section-list .list-item.selected, .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .top-list .list-item.selected {color: #287dfa;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .section-list .list-item, .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .top-list .list-item {position: relative;box-sizing: border-box;height: 36px;line-height: 36px;padding: 0 15px 0 10px;font-size: 14px;color: #333;cursor: pointer;display: flex;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .section-list .list-item .country-name, .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .top-list .list-item .country-name {display: inline-block;max-width: 228px;white-space: nowrap;text-overflow: ellipsis;overflow: hidden;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .section-list .list-item.selected .country-number, .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .top-list .list-item.selected .country-number {color: #287dfa;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .section-list .list-item .country-number, .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .top-list .list-item .country-number {display: inline-block;color: #999;margin-left: 10px;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .section-list .list-item.selected i, .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .top-list .list-item.selected i {display: block;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .section-list .list-item i, .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .top-list .list-item i {position: absolute;top: 0;right: 5px;display: none;font-size: 14px;}
        .tcp-online-rs .fi_regionselect {font-family: fi-regionselect,sans-serif;font-style: normal;font-weight: 400;font-size: 12px;-webkit-font-smoothing: antialiased;-moz-osx-font-smoothing: grayscale;}
        .tcp-online-rs .fi_regionselect.fi-tick:before {content: "\e530";}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .section-list .list-item, .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .top-list .list-item {position: relative;box-sizing: border-box;height: 36px;line-height: 36px;padding: 0 15px 0 10px;font-size: 14px;color: #333;cursor: pointer;display: flex;}
        .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .section-list .list-item i, .tcp-online-rs>.tcp-online-rs__content .country-select .country-list .top-list .list-item i {position: absolute;top: 0;right: 5px;display: none;font-size: 14px;}
        .tcp-online-rs .fi_regionselect {font-family: fi-regionselect,sans-serif;font-style: normal;font-weight: 400;font-size: 12px;-webkit-font-smoothing: antialiased;-moz-osx-font-smoothing: grayscale;}
        .tcp-online-rs>.tcp-online-rs__content.withCommonStyle .number-input-wrapper {/*margin-left: 12px;*/border: none;border-bottom: 1px solid #ced2d9;border-radius: 0;}
        .tcp-online-rs>.tcp-online-rs__content .number-input-wrapper {/*margin-left: 4px;*/border: 1px solid #e4e4e4;border-radius: 2px;color: #333;background: #fff;flex: 1 1 auto;display: flex;}
        .tcp-online-rs>.tcp-online-rs__content.withCommonStyle .number-input-wrapper .number-input {height: 39px;margin: 0;font-size: 16px;color: #0f294d;font-weight: 700;}
        .tcp-online-rs>.tcp-online-rs__content .number-input-wrapper .number-input {flex: 1 1 auto;font-size: 14px;font-weight: 700;height: 22px;line-height: 22px;margin-top: 8px;outline-style: none;border: none;/*padding: 0 10px;*/color: inherit;background: transparent;}
        button, input, select, textarea {font-family: inherit;}
        input, textarea {outline: 0;box-sizing: border-box;}
        .u-clearfix:after {clear: both;}
        .u-clearfix:after, .u-clearfix:before {content: "";display: table;}
        .p-book-extra-info {margin-bottom: 8px;}
        .p-book-extra-info>div {margin: 2px 0;}
        .m-specialReuest {margin-bottom: 8px;padding: 24px 16px;background: #fff;position: relative;}
        .m-specialReuest .m-title {position: relative;}
        .m-specialReuest .m-title .main-title h3 {display: inline-block; font-weight:900;}
        .p-book h3 {font-size: 18px;}
        .g-container h3 {font-size: 20px;line-height: 26px;}
        .m-specialReuest .m-title .main-title span {color: #0F294D;margin-left: 8px;font-size: 14px;}
        .m-specialReuest .m-title .sub-title {margin-top: 8px;color: #455873;font-size: 14px;}
        .m-specialReuest .toggleButton {color: #287dfa;font-size: 14px;font-weight: bold;text-align: right;cursor: pointer;min-width: 150px;display: inline-block;position: absolute;top: 24px;right: 16px;}
        .m-specialReuest .toggleButton .u-icon {padding-left: 8px;}
        .u-icon-ic_new_showmore_line:before {content: "\f13a";font-family: 'FontAwesome';}
        .u-icon-ic_new_close_line:before {content: "\f139";font-family: 'FontAwesome';}

        .m-specialReuest .hide {display: none;}
        .m-specialReuest .m-content {margin-top: 16px;font-size: 14px;}
        .m-specialReuest .m-content h4 {margin-bottom: 8px;font-size: 16px;}
        .m-specialReuest .m-content .m-input {width: 100%;}
        .m-input {display: inline-block;position: relative;}
        .m-specialReuest .m-content .m-input textarea {width: 100%;height: 100px;padding: 8px;border-color: #DADFE6;}
        .m-input textarea {padding: 10px;line-height: 20px;}
        .m-input input, .m-input textarea {background: #fff;width: 100%;box-sizing: border-box;font-size: 14px;border: 1px solid #E5E5E5;transition: border-color .25s;}
        button, input, select, textarea {font-family: inherit;}
        .p-book-extra-info>div {margin: 2px 0;}
        .m-discount>div:only-child {margin: 0;}
        .p-book-pay {background-color: #fff;padding: 24px;}
        .m-GDPR {margin-bottom: 16px;font-size: 14px;display: flex;}
        .m-GDPR .u-icon-checkbox {cursor: pointer;font-size: 16px;vertical-align: middle;padding-right: 8px;}
        .m-GDPR .u-icon-checkedBox {cursor: pointer;font-size: 16px;vertical-align: middle;padding-right: 8px;}
        .u-icon-checkbox:before {color: #ccc;content: "\f0c8";font-family: 'FontAwesome';}
        .u-icon-checkedBox:before {color: #ccc;content: "\f14a";font-family: 'FontAwesome'; color:#5897fb;}
        .m-GDPR .m-GDPR_txt {vertical-align: middle;line-height: 24px;}
        .p-book .online-subscribe-checkbox {padding: 0 0 16px 24px;}
        .online-subscribe-checkbox {display: inline-block;width: 100%;box-sizing: border-box;position: relative;padding: 8px 24px 8px 48px;line-height: 18px;}
        .p-book .online-subscribe-checkbox .check-box {left: 0;top: 2px;}
        .online-subscribe-checkbox .check-box {position: absolute;top: 10px;left: 24px;display: inline-block;cursor: pointer;height: 14px;width: 14px;line-height: 14px;color: #8592a6;border: 1px solid #ced2d9;font-size: 14px;border-radius: 1px;}
        .online-subscribe-checkbox .subscribe-txt {display: inline-block;box-sizing: border-box;width: 100%;text-align: left;font-size: 14px;color: #8592a6;line-height: 18px;}
        .m-payment {align-items: center;display: flex;}
        .m-payment .u-btn-warn {height: 56px;line-height: 56px;font-size: 18px;font-weight: bold;width: 100%;}
        .u-btn-warn {background: #FF9500 !important;}
        .u-btn-lg {height: 58px;line-height: 58px;padding: 0 24px;font-size: 20px;}
        .u-btn {font-size: 16px;display: inline-block;height: 40px;padding: 0 16px;box-sizing: border-box;line-height: 40px;color: #fff;text-align: center;vertical-align: middle;white-space: nowrap;border-radius: 2px;cursor: pointer;border: 0 none;*display: inline;*zoom: 1;background: none;}
        button, input, select, textarea {font-family: inherit;}
        .m-payment .u-icon-ic_new_more_line1 {padding-left: 5px;}
        .u-icon-ic_new_more_line1:before {content: "\f054";font-family: 'FontAwesome';}
        .m-postSale {display: inline-flex;padding: 24px 0 0px;margin-top: 0;text-align: left;cursor: pointer;}
        .m-postSale .u-icon-tripLogo {width: 60px;height: 16px;display: inline-block;vertical-align: middle;flex-shrink: 0;margin-right: 16px;}
        .u-icon-tripLogo {width: 83px;height: 20px;background: url('/resources/images/logo/logo6.png') no-repeat;background-size: 100% 100%;vertical-align: middle;}
        .m-postSale-content {color: #2681FF;font-weight: bold;}
        .p-book .bookSide {width: 376px;}
        .bookSide .price-container {background: #FFFFFF;padding: 24px;color: #0F294D;}
        .m-PerNightPriceDetail_cmaTotal, .m-PerNightPriceDetail_total {margin-bottom: 8px;display: flex;justify-content: space-between;vertical-align: middle;}
        .m-PerNightPriceDetail_cmaTotal_title, .m-PerNightPriceDetail_total_title {font-size: 20px;font-weight: 700;display: inline-block;line-height: 26px;}
        .m-PerNightPriceDetail_cmaTotal_content, .m-PerNightPriceDetail_total_content {display: inline-block;}
        .m-PerNightPriceDetail .needPay {color: #287DFA;}
        .m-PerNightPriceDetail_cmaTotal_content_price, .m-PerNightPriceDetail_total_content_price {font-size: 20px;text-align: right;font-weight: 700;line-height: 26px;}
        .m-PerNightPriceDetail_content {margin-top: 16px;}
        .m-PerNightPriceDetail_content_list_title {display: flex;justify-content: space-between;vertical-align: middle;margin-bottom: 8px;font-size: 14px;}
        .m-PerNightPriceDetail_content_list_title .title {line-height: 18px;}
        .m-PerNightPriceDetail_content_list_title .roomPrice {color: #0F294D;margin-bottom: 0;}
        .m-PerNightPriceDetail_content_list_title .titlePrice {color: #FF6F00;}
        .m-PerNightPriceDetail_content_list_includedTax {font-size: 12px;color: #8592A6;line-height: 18px;text-align: right;margin-bottom: 8px;}
        .m-PerNightPriceDetail .u-icon-ic_new_question_line {font-size: 16px;margin-left: 4px;color: #8592A6;}
        .u-icon-ic_new_question_line:before {content: "\f059";font-family: 'FontAwesome';}
        .m-PerNightPriceDetail_content_list_title .title {line-height: 18px;}
        .m-PerNightPriceDetail_content_list_title .titlePrice {color: #FF6F00;}
        .m-PerNightPriceDetail_afterStay {border-top: 1px dashed #DADFE6;padding-top: 16px;margin-top: 16px;}
        .m-PerNightPriceDetail_afterStay .afterStayTitle {font-size: 16px;line-height: 18px;margin-bottom: 8px;font-weight: 700;}
        .m-PerNightPriceDetail_afterStay .afterStay {font-size: 14px;line-height: 18px;}
        .m-PerNightPriceDetail_afterStay .afterStay_title {margin-bottom: 8px;display: flex;justify-content: space-between;vertical-align: middle;}
        .m-PerNightPriceDetail_afterStay .afterStayPrice {font-size: 12px;text-align: right;line-height: 18px;text-align: right;margin-top: 8px;}
        .m-PerNightPriceDetail_afterStay .afterStayTip {font-size: 12px;color: #8592A6;text-align: right;line-height: 18px;text-align: right;margin-top: 8px;}
        .p-book-notice-bg {background-color: #fff;}
        .p-book-notice {margin: 8px 0;}
        .m-importantInfo {padding: 16px 0;margin: 0 24px;background: #fff;position: relative;}
        .m-importantInfo h5 {font-size: 18px; font-weight:600;}
        .m-importantInfo_container_more {font-size: 14px;color: #287dfa;text-align: right;line-height: 18px;cursor: pointer;font-weight: bold;position: absolute;right: 0;top: 18px;}
        .m-importantInfo_container_li {padding-top: 8px;display: flex;}
        .m-importantInfo_container_li .li_left {margin-right: 8px;flex-shrink: 0;}
        .m-importantInfo_container_li .u-icon {margin: -4px 0;font-size: 18px;}
        .u-icon-ic_new_check_line:before {content: "\f05a";font-family: 'FontAwesome';}
        .m-importantInfo_container_li .li_right {width: calc(100% - 26px);}
        .m-importantInfo_container_li .li_content {font-size: 14px;color: #0F294D;line-height: 18px;overflow: hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;word-break: break-word;}
        #hotel_container {background-color: #F5F7FA;}
        .m-guest .single-selector-input, .m-guest .m-inputBox input, .m-guest .tcp-online-rs>.tcp-online-rs__content .country-select {background: transparent !important;}
        .m-inputBox input {background: #fff;width: 100%;height: 40px;box-sizing: border-box;font-size: 16px;font-weight: bold;border: 1px solid #CED2D9;border-width: 0 0 1px 0;transition: border-color .25s;color: #0F294D;}
        .u-icon-ic_new_warning_line:before {content: "\f05a";font-family: 'FontAwesome';}
        .fi-select:before {content: "\e613";}
        .p-book .online-subscribe-checkbox .check-box.fi {background-color: #287DFA;}
        .online-subscribe-checkbox .check-box.fi {border: 1px solid #8592a6;}
        .m-PerNightPriceDetail .u-icon-arrowLineUp, .m-PerNightPriceDetail .u-icon-arrowLineDown {font-size: 18px;margin-left: 4px;vertical-align: bottom;}
        .u-icon-arrowLineDown:before {content: "\f078";font-family: 'FontAwesome';}
        .m-specialReuest .toggleButton .u-icon {padding-left: 8px;}
        .u-icon-ic_new_showless_line:before {content: "\e9ca";}
        .guestContainer-input .m-inputBox ~ .m-inputBox {margin-left: 24px;}
    </style>
</head>
<body>
<%@include file="../common/header.jsp" %>

<!-- Body 시작 Container -->
<div id="hotel_container">
    <div class="g-container p-book">
        <form action="credited" method="post" id="submitForm">
            <input type="hidden" name="checkIn" value="${checkIn}" />
            <input type="hidden" name="checkOut" value="${checkOut}" />
            <input type="hidden" name="roomId" value="${roomId}" />
            <input type="hidden" name="totalPrice" value="${eventPrice * diffDays * roomCount}" />
            <input type="hidden" name="adults" value="${adults}" />
            <input type="hidden" name="childs" value="${childs}" />
            <input type="hidden" name="roomCount" value="${roomCount}" />
            <input type="hidden" name="hotelNo" value="${hotelId}" />
            <input type="hidden" name="roomType" value="${type}" />
            <input type="hidden" name="savedCoin" value = "${eventPrice * diffDays * roomCount * 0.03}" />
            <input type="hidden" name="hotelName" value = "${name}" />

            <div class="bookMain" style="margin-top: 0px;">
                <div class="p-book-dashedWrapper">
                    <div class="m-hotelDetail">
                        <div class="m-hotelDetail-name">
                            ${name}
                            <span type="star" class="u-level">
                                <c:forEach begin="1" end="${hotelStar}">
                                <i type="star" class="u-icon u-icon-star"></i>
                                </c:forEach>
                            </span>
                        </div>
                        <div class="m-hotelFacility">
                            <div class="m-hotelFacility-head">
                                <div class="main">
                                    <div class="title">${type}</div>

                                    <div class="facility">
                                        <i type="person" class="u-icon u-icon-person"></i>
                                        <span>성인 ${adults}명</span>
                                    </div>
                                    <c:if test="${not empty childs}">
                                    <div class="facility">
                                        <i type="child" class="u-icon u-icon-child"></i>
                                        <span>아이 ${childs}명</span>
                                    </div>
                                    </c:if>
                                    <c:if test="${roomWifi eq 'Y'}">
                                    <div class="facility">
                                        <i type="ic_new_fa_wifi" class="u-icon u-icon-ic_new_fa_wifi"></i>
                                        <span>무료 Wi-Fi</span>
                                    </div>
                                    </c:if>
                                    <div class="facility">
                                        <i type="ic_new_fa_bed" class="u-icon u-icon-ic_new_fa_bed"></i>
                                        <span>${bedType} ${bedCount}개</span>
                                    </div>
                                    <div class="facility">
                                        <i type="ic_new_fa_breakfast" class="u-icon u-icon-ic_new_fa_breakfast"></i>
                                        <c:if test="${breakfast eq 'N'}">
                                            <span>조식 불포함</span>
                                        </c:if>
                                        <c:if test="${breakfast eq 'Y'}">
                                            <span>조식 포함</span>
                                        </c:if>
                                    </div>
                                    <div class="cancelpolicy freeCancel partCancel">
                                        <i type="advantage" class="u-icon u-icon-advantage"></i>
                                        <span>걱정 없이, 무료 취소!</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="m-dateInfoB">
                        <div class="date-selectorB">
                            <i type="ic_new_calendar_line" class="u-icon u-icon-ic_new_calendar_line"></i>
                            <div class="date">${checkIn}</div>
                            <div class="nights">${diffDays}박</div>
                            <div class="date">${checkOut}</div>
                        </div>
                        <div class="m-roomsB">
                            <div class="rooms">객실 ${roomCount}개</div>
                        </div>
                    </div>
                </div>
                <div class="p-book-form">
                    <div class="p-book-dashedWrapper">
                        <div class="m-guestInfo">
                            <h3 class="m-guestInfo_title">투숙객 정보</h3>
                            <div class="m-guestInfo_remark">
                                투숙객 이름은 체크인 시 제시할 신분증 이름과 동일하게 입력하세요
                                <i type="ic_new_question_line" class="u-icon u-icon-ic_new_question_line"></i>
                            </div>
                            <div class="m-guest">
                                <div class="m-guest-form">
                                    <div class="m-room-item singleRoom">
                                        <div class="m-guest-item">
                                            <div class="guestContainer">
                                                <div class="guestContainer-input">
                                                    <div class="m-inputBox">
                                                        <span class="m-inputBox_label">성</span>
                                                        <span class="inputWrapper">
                                                            <input type="text" name="lastName" id="lastName"placeholder="예: HONG" maxlength="15"/>
                                                        </span>
                                                    </div>
                                                    <div class="m-inputBox">
                                                        <span class="m-inputBox_label">이름</span>
                                                        <span class="inputWrapper">
                                                            <input type="text" name="firstName" id="firstName" placeholder="예: GILDONG" maxlength="15"/>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="m-concatInfo">
                                <div class="m-concatInfo_email">
                                    <div class="m-inputBox" style="width: 348px;">
                                        <span class="m-inputBox_label">이메일 주소</span>
                                        <span class="inputWrapper">
                                            <input type="email" name="email" id="email" placeholder="이메일 주소" maxlength="25" />
                                        </span>
                                    </div>
                                </div>
                                <div class="m-concatInfo_account" id="emaliAccountComponent">
                                </div>
                                <div class="m-concatInfo_phone">
                                    <span class="phoneLabel">휴대폰번호</span>
                                    <div class="tcp-online-rs" id="ibu_phone_selector" style="width: 348px;">
                                        <div class="tcp-online-rs__content u-clearfix withCommonStyle">
                                            <div class="number-input-wrapper">
                                                <input type="text" name="phone" id="phoneText" class="number-input ko-kr" placeholder="휴대폰번호" maxlength="13"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="p-book-extra-info">
                    <div class="m-specialReuest">
                        <div class="m-title">
                            <div class="main-title">
                                <h3>특별 요청</h3>
                                <span>(선택)</span>
                            </div>
                            <div class="sub-title">
                                요청하신 사항은 호텔에 전달됩니다. 호텔 사정에 따라 요청이 이루어지지 않을 수 있으니 많은 양해바랍니다
                            </div>
                        </div>
                        <span class="toggleButton">
                            <span>선택/입력</span>
                            <i type="ic_new_showmore_line" class="u-icon u-icon-ic_new_showmore_line"></i>
                        </span>
                        <div class="m-content hide" id="m-content">
                            <h4>기타 요청 사항</h4>
                            <div class="m-input">
                                <textarea name="reqeustMemo" type="textarea" placeholder="한국어 또는 영어로 작성하세요"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="p-book-pay">
                    <%--<div class="m-GDPR">
                        <i type="checkbox" class="u-icon u-icon-checkbox"></i>
                        <span class="m-GDPR_txt">
                            해당 예약 요청 시, 막놀자닷컴 <a target="blank" href="#">이용약관</a> 및 <a target="blank" href="#">개인정보 처리방침</a> 을 읽었으며 이에 동의합니다.
                        </span>
                    </div>--%>
                    <div class="m-GDPR">
                        <i type="checkbox" class="u-icon u-icon-checkbox"></i>
                        <span class="m-GDPR_txt">
                            막놀자닷컴의 한정 특가 혜택, 특가 할인, 최신 프로모션 & 이벤트, 기타 소식 등의 메시지를 받지 않겠습니다.
                        </span>
                    </div>
                    <div class="m-payment">
                        <button type="button" class="u-btn u-btn-warn u-btn-lg" id="reservationButton">
                            <span>
                                <span class="buttonText">다음 단계: 최종 확정
                                    <i type="ic_new_more_line1" class="u-icon u-icon-ic_new_more_line1"></i>
                                </span>
                            </span>
                        </button>
                    </div>
                </div>
                <span class="m-postSale">
                    <i type="tripLogo" class="u-icon u-icon-tripLogo"></i>
                    <span class="m-postSale-content">마음 편히 여행 다녀오세요!</span>
                </span>
            </div>
        </form>
        <div class="bookSide">
            <div class="price-container">
                <div class="m-PerNightPriceDetail simplePerNightPrice">
                    <div class="m-PerNightPriceDetail_total">
                        <div class="m-PerNightPriceDetail_total_title">
                            지금 결제
                        </div>
                        <div class="m-PerNightPriceDetail_total_content">
                            <span class="m-PerNightPriceDetail_total_content_price needPay"><fmt:formatNumber pattern="#,###">${eventPrice * diffDays * roomCount}</fmt:formatNumber>원</span>
                        </div>
                    </div>
                    <div class="m-PerNightPriceDetail_content">
                        <div class="m-PerNightPriceDetail_content_list">
                            <div class="m-PerNightPriceDetail_content_list_title">
                                <div class="title">
                                    <span class="titleName">객실 ${roomCount}개 x ${diffDays}박</span>
                                    <%--<i type="arrowLineDown" class="u-icon u-icon-arrowLineDown"></i>--%>
                                </div>
                                <div class="titlePrice roomPrice"><fmt:formatNumber pattern="#,###">${eventPrice * diffDays * roomCount}</fmt:formatNumber>원</div>
                            </div>
                            <div class="m-PerNightPriceDetail_content_list_includedTax">
                                <span>세금&서비스비용 포함: <fmt:formatNumber pattern="#,###">${eventPrice * diffDays * roomCount / 10}</fmt:formatNumber>원</span>
                                <i type="ic_new_question_line" class="u-icon u-icon-ic_new_question_line"></i>
                            </div>
                        </div>
                        <div class="m-PerNightPriceDetail_content_list">
                            <div class="m-PerNightPriceDetail_content_list_title">
                                <div class="title">
                                    <span class="titleName">타임세일</span>
                                </div>
                                <div class="titlePrice">-<fmt:formatNumber pattern="#,###">${(price - eventPrice) * diffDays}</fmt:formatNumber>원</div>
                            </div>
                        </div>
                        <%--<div class="m-PerNightPriceDetail_content_list">
                            <div class="m-PerNightPriceDetail_content_list_title">
                                <div class="title">
                                    <span class="titleName">특별 할인</span>
                                </div>
                                <div class="titlePrice">-1,576원</div>
                            </div>
                        </div>--%>
                    </div>
                    <div class="m-PerNightPriceDetail_afterStay">
                        <div class="afterStayTitle">체크아웃 후 적립예정 혜택</div>
                        <div class="afterStay">
                            <div class="afterStay_title">
                                <div class="title">
                                    <span class="titleName">막놀자코인</span>
                                </div>
                                <div class="content"><fmt:formatNumber pattern="#,###">${eventPrice * diffDays * roomCount * 0.03}</fmt:formatNumber></div>
                            </div>
                        </div>
                        <div class="afterStayPrice" parentlabel="div" childlabel="span" label="div"><fmt:formatNumber pattern="#,###">${eventPrice * diffDays * roomCount * 0.03}</fmt:formatNumber> 막놀자코인 = 약 <fmt:formatNumber pattern="#,###">${eventPrice * diffDays * roomCount * 0.03 * 2}</fmt:formatNumber>원</div>
                        <div class="afterStayTip">막놀자코인 사용 시 객실요금 다음예약 할인 가능</div>
                    </div>
                </div>
            </div>
            <div class="p-book-notice p-book-notice-bg">
                <div class="m-importantInfo">
                    <h5 class="m-importantInfo_title">중요 공지</h5>
                    <div class="m-importantInfo_container_more">더 보기</div>
                    <div class="m-importantInfo_container">
                        <li class="m-importantInfo_container_li">
                            <div class="li_left">
                                <i type="ic_new_check_line" class="u-icon u-icon-ic_new_check_line advantage"></i>
                            </div>
                            <div class="li_right">
                                <span class="li_content advantage">
                                    무료 취소: 예약자 현지시간 ${checkIn} 23:59 GMT+9 전. (호텔 현지시간: ${checkIn} 23:59) 마감기한이 지난 후 예약 취소/변경 또는 노쇼 (No-show)인 경우, 첫 1박 요금의  ${eventPrice}원이 부과됩니다. 예약 숙박일 종료 전, 얼리 체크아웃시 1박 요금이 부과됩니다.
                                </span>
                            </div>
                        </li>
                        <li class="m-importantInfo_container_li">
                            <div class="li_left">
                                <i type="ic_new_warning_line" class="u-icon u-icon-ic_new_warning_line noticeRed"></i>
                            </div>
                            <div class="li_right">
                                <span class="li_content">[2021년 8월 6일 - 2021년 8월 31일] 7월 12일 00:00 (월)~8월 31일 24:00 (일) 동안 서울 및 수도권 지역에 특별 방역 강화 조치가 시행됩니다. 해당 기간에는 3인 이상의 모임이 금지되므로, 호텔 안내에 적극적인 협조 부탁드립니다. 단, 주민등록상 거주지가 같은 가족에 한해 객실 1개에 3인 이상 투숙 가능합니다. 체크인 시 주민등록등본 및 주민등록증을 반드시 제공해주시기 바랍니다.</span>
                            </div>
                        </li>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--footer Start--%>
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


        // 선택사항 버튼 열기 닫기
        var toggleCount = 0;
        $('.toggleButton').click(function(){
            if(toggleCount == 0 || toggleCount %2 == 0){
                $('.u-icon-ic_new_showmore_line').removeClass('u-icon-ic_new_showmore_line').addClass('u-icon-ic_new_close_line');
            $('#m-content').removeClass('hide');
                toggleCount++;
            }else{
                $('.u-icon-ic_new_close_line').removeClass('u-icon-ic_new_close_line').addClass('u-icon-ic_new_showmore_line');
                $('#m-content').addClass('hide');
                toggleCount++;
            }
        })

        // 이름, 성 에 잘못된 문자 입력시 자동 기능
        var autoDeleteWrongText = function(str) {
            str = str.replace(/[^A-Z]/g,'');
            return str;
        }

        // 연락처 입력시 자동 하이폰 추가 기능
        var autoHypenPhone = function(str){
            str = str.replace(/[^0-9]/g, '');
            var tmp = '';
            if( str.length < 4){
                return str;
            }else if(str.length < 7){
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3);
                return tmp;
            }else if(str.length < 11){
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3, 3);
                tmp += '-';
                tmp += str.substr(6);
                return tmp;
            }else{
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3, 4);
                tmp += '-';
                tmp += str.substr(7);
                return tmp;
            }
            return str;
        }

        var firstName = $('#firstName');
        var lastName = $('#lastName');
        $(firstName).on('keyup',function(){
            this.value = autoDeleteWrongText(this.value);
        })
        $(lastName).on('keyup',function(){
            this.value = autoDeleteWrongText(this.value);
        })

        var phoneNum = $('#phoneText');
        $(phoneNum).on('keyup',function(){
            this.value = autoHypenPhone(this.value ) ;
        })

        var chk_send = 0;
        // 클릭시 변경될 내용
        $('.u-icon-checkbox').click(function(){
            if(chk_send == 0 || chk_send%2 == 0){
                $(this).removeClass('u-icon-checkbox');
                $(this).addClass('u-icon-checkedBox');
                chk_send++;
                console.log(chk_send);
            }else{
                $(this).removeClass('u-icon-checkedBox');
                $(this).addClass('u-icon-checkbox');
                chk_send++;
            }
        })

        // 폼 제출
        $('#reservationButton').click(function(){
                let lastName = $('#lastName').val();
                if(!lastName) {
                    alert('성은 필수 입력값 입니다.');
                    return false;
                }
                let firstName = $('#firstName').val();
                if(!firstName){
                    alert('이름은 필수 입력값 입니다.');
                    return false;
                }
                let email = $('#email').val();
                if(!email){
                    alert('이메일은 필수 입력값 입니다.');
                    $('#email').focus();
                    return false;
                }

                let phone = $('#phoneText').val();
                if(!phone){
                    alert('연락처는 필수 입력값 입니다.');
                    $('#lastName').focus();
                    return false;
                }
                var isChecked = $('.u-icon-checkedBox');
                console.log(isChecked);
                if(isChecked.length == 0){
                    alert('약관을 동의하셔야 예약할 수 있습니다.');
                    return false;
                }
            alert('예약이 성공적으로 되었습니다. 자세한 내용은 이메일을 확인해주세요.');
            $('#submitForm').submit();
        })






    })
</script>


</body>
</html>