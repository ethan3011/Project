<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/496bb7aab6.js" crossorigin="anonymous"></script>

    <title>결제페이지</title>
    <style>
            .dash-line__bottom-m16:after, .dash-line__top-m16:before {
    content: "";
    display: block;
    width: 100%;
    border-top: 1px dashed #dadfe6;
    margin: 16px 0;
    }
    #page {
        background-color: #eef0f3;
    }
    #main {
        padding: 10px;
        margin: 150px;
    }
    #back{
        float: right;
        margin-right: 10px;
    }
    .q{
        list-style-type: none;
    }
    .addcard_item {
    border: 1px solid #d1deec;
    background-color: #ecf4fd;
    background-image: none;
    width: 160px;
    padding: 10px 0 10px 8px;
    height: 78px;
    color: #999;
    margin-bottom: 14px;
    }
    .input_txt3, .input_txt4, .input_txt5, .input_txt6, .input_txt7, .input_txt8, .input_txt9, .input_txt10 {
    border: 1px solid #d1dfec;
    border-radius: 2px;
    height: 22px;
    width: 370px;
    padding: 5px 5px 7px 5px;
    font-size: 16px;
    line-height: 22px;
}
img.relative { 
        position: absolute;
        left: 220px;
        top: 189px;
      }
#two { 
        position: absolute;
        left: 220px;
        top: 320px;
      }
    </style>
</head>
<body id="page">
    <div class="contains my-3">
        <div class="row" id="main">
            <div class="col-7">
                <div class="card card">
                <form id="a" action="payfinished" method="post">
                    <h1 style="text-align: center;"><span style="font-style: italic; padding: 255px;"><span><img src="../../../resources/images/flight/logo5.png" alt=""width="78" height="45"></span><b>MakNolJa 결제 </b></span> </h1>
                    <div class="m-check-travel__flightDetail dash-line__top-m16"></div>
                    <p style="font-size: 19px;"><b>결제수단</b></p>
                    <div style="margin-bottom: 14px; padding: 5px; font-style: normal;"><i class="far fa-credit-card"></i> 신용카드 / 체크카드</div>
                    <div class="card card" style="background-color: rgb(183, 228, 222);">
                    
                        <span style="margin-bottom: 20px;"><b>결제 가능 카드</b></span>
                        <div>
                            <img src="../../../resources/images/flight/visa.png" alt="" width="38" height="25">
                            <img src="../../../resources/images/flight/UNIONPAY.png" alt="" width="38" height="25">
                            <img src="../../../resources/images/flight/SHB.png" alt="" width="38" height="25">
                            <img src="../../../resources/images/flight/SAMSUNG.png" alt="" width="38" height="25">
                            <img src="../../../resources/images/flight/NONGHYUP.png" alt="" width="38" height="25">
                            <img src="../../../resources/images/flight/MC.png" alt="" width="38" height="25">
                            <img src="../../../resources/images/flight/LOTTE.png" alt="" width="38" height="25">
                            <img src="../../../resources/images/flight/KOOKMIN.png" alt="" width="38" height="25">
                            <img src="../../../resources/images/flight/JCB.png" alt="" width="38" height="25">
                            <img src="../../../resources/images/flight/HYUNDAI.png" alt="" width="38" height="25">
                            <img src="../../../resources/images/flight/HANA.png" alt="" width="38" height="25">
                            <img src="../../../resources/images/flight/DISCOVER.png" alt="" width="38" height="25">
                            <img src="../../../resources/images/flight/DINERS.png" alt="" width="38" height="25">
                            <img src="../../../resources/images/flight/BCCARD.png" alt="" width="38" height="25">
                            <img src="../../../resources/images/flight/AMEX.png" alt="" width="38" height="25">
                            <div class="m-check-travel__flightDetail dash-line__top-m16"></div>
                            <div>
                                <div class="flip_con cardmod_item addcard_item" style="">
                                <span class="cardmod_logo creditcard_bg_none">
                                <span></span><img></span><span class="cardmod_num"><span>**** **** **** ****</span></span><span class="cardmod_name" style="display: none;">
                                <span>Full Name</span></span><span class="cardmod_date" style="display: none;"><span>MM/YY</span></span><span class="cardmod_sign" style="display: none;">                 <span>****</span>             </span>   </div>
                            </div>  
                            <div><b>카드번호</b></div>
                            <input id="card_number" style="ime-mode:Disabled" name="cardNo" class="input_txt3" placeholder="카드번호 16자리" maxlength="19" value="" ubt="05a" >
                        </div>
                    </div>
                    <span><b style="font-size: 20px;">주의사항</b></span>
                    <p style="margin-left: 5px;">&nbsp;<i class="fas fa-history"></i>&nbsp;결제 후 출항 14일전에만 환불이 가능합니다 그 기간이 지난후에는 불가능합니다</p>
                        <div class="d-grid gap-2"><button type="submit" class="btn btn-outline-success" style="margin: 20px;"><span style="color: black; font-size: 20px;"><b>결제하기</b></span></button></div>
                        <input type="hidden" name="userId" id="userId" value="${userId }">
                        <input type="hidden" name="stdayTime" id="stdayTime" value="${stdayTime }">
                        <input type="hidden" name="stdayEndTime" id="stdayEndTime" value="${stdayEndTime }">
                        <input type="hidden" name="rtdayTime" id="rtdayTime" value="${rtdayTime }">
                        <input type="hidden" name="rtdayEndTime" id="rtdayEndTime" value="${rtdayEndTime }">
                        <input type="hidden" name="stdayAirPlaneCode" id="stdayAirPlaneCode" value="${stdayAirplaneCode }">
                        <input type="hidden" name="rtdayAirPlaneCode" id="rtdayAirPlaneCode" value="${rtdayAirplaneCode }">
                        <fmt:parseDate value="${stdayDate }" var="stdayDatepay" pattern="yyyy/MM/dd"/>
                        
                        <input type="hidden" name="stdayDate" id="stdayDate" value="<fmt:formatDate value="${stdayDatepay }" pattern="yyyy/MM/dd"/>">
                        <fmt:parseDate value="${rtdayDate }" var="rtdayDatepay" pattern="yyyy/MM/dd"/>
                        
                        <input type="hidden" name="rtdayDate" id="rtdayDate" value="<fmt:formatDate value="${rtdayDatepay }" pattern="yyyy/MM/dd"/>">
                        <input type="hidden" name="passNo" id="passNo" value="${postnum }">
                        <input type="hidden" name="phone" id="phone" value="${phone }">
                        <input type="hidden" name="stdayAirPortCode" id="stdayAirPortCode" value="${stdayAirportCode }">
                        <input type="hidden" name="stdayEndAirPortCode" id="stdayEndAirPortCode" value="${stdayEndAirportCode }">
                        <input type="hidden" name="rtdayAirPortCode" id="rtdayAirPortCode" value="${rtdayAirportCode }">
                        <input type="hidden" name="rtdayEndAirPortCode" id="rtdayEndAirPortCode" value="${rtdayEndAirportCode }">
                        <input type="hidden" name="payStatus" id="payStatus" value="Y">
                    </form>
                </div>
            </div>
            <div class="card col-4" style="width:500px;">
                <div>
                <img src="../../../resources/images/flight/icon_plane.2debc6db.png" width="80" height="20" style="float:left"class="relative">
                <img src="../../../resources/images/flight/icon_plane.2debc6db.png" width="80" height="20" style="float:left"class="relative" id="two">
            </div>
                <h2 style="padding: 10px;">총금액 <span style="font-size: 28px; font-style: inherit; color: blue;" id="back"><b><fmt:formatNumber>${total }</fmt:formatNumber>원</b></span></h2>
                <div class="m-check-travel__flightDetail dash-line__top-m16"></div>
                <div><span style="color: #818283;">가는날 운임비용</span><span style="font-size: 15px; font-style: inherit; color: #818283;" id="back"><fmt:formatNumber>${stdayAirPrice }</fmt:formatNumber>원</span></div>
                <div><span style="color: #818283;">오는날 운임비용</span><span style="font-size: 15px; font-style: inherit; color: #818283;" id="back"><fmt:formatNumber>${rtdayAirPrice }</fmt:formatNumber>원</span></div>
                <div class="m-check-travel__flightDetail dash-line__top-m16"></div>
                <div>
                    <p><span style="font-size: 20px; font-style: inherit;"><b>${stdayAirportCode }</b></span>
                        <span style="font-size: 20px; font-style: inherit;" id="back"><b>${stdayEndAirportCode }</b></span>    
                    </p>
                    <p>${startname }
                        <span id="back">${rtartname }</span>
                    </p><fmt:parseDate value="${stdayDate }" var="stdayDates" pattern="yyyy/MM/dd"/>
                    <p><span style="font-size: 15px; font-style: inherit;"><b><fmt:formatDate value="${stdayDates }" pattern="yyyy년MM월dd일"/> &nbsp;${stdayTime }</b></span>
                        <span style="font-size: 15px; font-style: inherit;" id="back"><b><fmt:formatDate value="${stdayDates }" pattern="yyyy년MM월dd일"/> &nbsp;${stdayEndTime }</b></span>    
                    </p>
                    <div class="m-check-travel__flightDetail dash-line__top-m16"></div>
                    <p><span style="font-size: 20px; font-style: inherit;"><b>${rtdayAirportCode }</b></span>
                        <span style="font-size: 20px; font-style: inherit;" id="back"><b>${rtdayEndAirportCode }</b></span>    
                    </p>
                    <p>${rtartname }
                        <span id="back">${startname }</span>
                    </p><fmt:parseDate value="${rtdayDate }" var="rtdayDates" pattern="yyyy/MM/dd"/>
                    <p><span style="font-size: 15px; font-style: inherit;"><b><fmt:formatDate value="${rtdayDates }" pattern="yyyy년MM월dd일"/> &nbsp;${rtdayTime }</b></span>
                        <span style="font-size: 15px; font-style: inherit;" id="back"><b><fmt:formatDate value="${rtdayDates }" pattern="yyyy년MM월dd일"/> &nbsp;${rtdayEndTime }</b></span>    
                    </p>
                    <div class="m-check-travel__flightDetail dash-line__top-m16"></div>
                    <div>
                        <div></div><ul class="q"><span><i class="fas fa-user"></i>&nbsp; ${firstname }${lastname }</span>
                            <li>&nbsp;&nbsp;&nbsp;${postpaper }(주민등록증,운전면허증 등) ${postnum }</li>
                        </ul>
                        <ul class="q">
                            <li><i class="fas fa-phone-alt"></i>&nbsp;${infofullname }</li>
                            <li>&nbsp;&nbsp;&nbsp;&nbsp;${phone }&nbsp; ${email }</li>
                        </ul>
                    </div>         
                </div>
            </div>
        </div>
    </div>
    
   <%-- %> <p>${startname }a</p><!--출발하는곳  -->
	<p>${rtartname }</p><!--도착하는곳  -->
	<p>${total }</p>	<!--합계가격  -->
	<p>${stdayAirPrice }</p><!-- 가는날가격 -->
	<p>${rtdayAirPrice }</p><!-- 오는날 가격 -->
	<p>${stdayAirportCode }</p><!--출발공항코드  -->
	<p>${stdayEndAirportCode }</p><!--도착공항코드  -->
	<p>${stdayTime }</p> <!--출발시간  -->
	<p>${rtdayTime }</p><!--도착시간  -->
	<p>${rtdayAirportCode }</p><!--돌아오는날 출발공항코드  -->
	<p>${rtdayEndAirportCode }</p><!--돌아오는날 도착 공하ㅏㅇ코드  -->
	<p>${rtdayTime }</p>		<!--돌아오는날 출발시간  -->
	<p>${rtdayEndTime }</p>		<!--돌아오는날 도착시간  -->
	<p>${firstname }</p>		<!-- 성 -->
	<p>${lastname }</p>			<!--  이름-->
	<p>${postpaper }</p>		<!-- 신분증 -->
	<p>${postnum }</p>			<!-- 주민번호 -->
	<p>${infofullname }</p>		<!-- 상세정보 이름 -->
	<p>${phone }</p>			<!--핸드폰번호  -->
	<p>${stdayDate }</p>		<!--출발날짜  -->
	<p>${rtdayDate }</p>		<!--돌아오는날짜  -->
	<p>${email }</p>			<!--이메일  --> --%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	$("#a").submit(function(){
		var card = $.trim($("#card_number").val());
		if (!card) {
			alert("카드번호를 입력해주세요.");
			$("#card_number").focus();
			return false;
		}else
			alert("결제완료");
	})
	
	var cardNumber = document.getElementById('card_number');
	cardNumber.onkeyup = function(event){
	    event = event || window.event;
	    var _val = this.value.trim();
	    this.value = autoHypenCard(_val) ;
	};
	
	function autoHypenCard(str){
	    str = str.replace(/[^0-9]/g, '');
	    var tmp = '';
	    if( str.length < 4){
	        return str;
	    }
	    else if(str.length < 8){
	        tmp += str.substr(0, 4);
	        tmp += '-';
	        tmp += str.substr(4,4);
	        return tmp;
	    }else if(str.length < 12){
	        tmp += str.substr(0, 4);
	        tmp += '-';
	        tmp += str.substr(4, 4);
	        tmp += '-';
	        tmp += str.substr(8,4);
	        return tmp;
	    }else if(str.length < 17) {

	        tmp += str.substr(0, 4);
	        tmp += '-';
	        tmp += str.substr(4, 4);
	        tmp += '-';
	        tmp += str.substr(8,4);
	        tmp += '-';
	        tmp += str.substr(12,4);
	        return tmp;
	    }
	    return str;
	}
	
});


</script>
</body>
</html>