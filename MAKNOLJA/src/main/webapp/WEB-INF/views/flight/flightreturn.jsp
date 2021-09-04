<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/496bb7aab6.js" crossorigin="anonymous"></script>
<title>오는 편 || 선택</title>
<style>
#gong{
    color:black;
    margin: 10px;
    padding: 5px;
    
}
body{
     background-color:#f5f7fa;
}
#title-flight-top-name{
color:mediumorchid;
}
.image {
  position:relative;
}

.image .text {
  position:absolute;
  top:40px;
  left:80px;
}
.box {
    font-style: normal;
}
.button {
  background-color:lightblue; /* Green */
  border: none;
  color:grey;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  width:100px;
  margin:auto;
  display:block;
}
#list-card 
{
    background: rgb(228, 248, 245) box-shadow:3px 3px 10px #E6E2AF;
}
#green-box {
  height: 50px;
  position: sticky;
  top: 0;
}

</style>

</head>
<body>
<div class="container my-3">
    <div class="row">
        <div class="col">
            <div class="card" id="gong">
                <%--<input type="text" value="<%= request.getParameter("startday") %>" id="test"> --%>

                <p><span style="color: orange">[중요공지]</span> 코로나 19 확산의 영향으로, 각 국가/지역의 출입국 제한 정책이 자주 업데이트 되거나 변경이 있을 수  있습니다.</p>
            </div>
            <div class="row-my-3 card" id="gong">
                <p><i class="fas fa-bullhorn fa-lg" ></i> 안심하고 예약하세요. 항공사에서 유연한 항공권 예약 규정 및 강화된 방역 지침을 시행하고 있습니다. 여행 전, 관련 최신 정책을 반드시 확인해주세요 <button type="button" class="btn btn-outline-primary"><i class="fas fa-chevron-right"></i></button></p>
            </div>
            <div class="row my-3" id="side">
                <div class="col-2" style="width:300px; height: 1200px;background-color:#f5f7fa;"id="green-box">
                <div style="background-color: white;"><div class="d-grid gap-2" ><button class="btn btn-outline-primary"><i class="far fa-bell"></i><span style="color: bludescriptione;">가격 알리미 설정하기</span></button></div></div>
                    <div class="row" style="width: 230px; padding: 24px 0; position: absolute;">
                        <div class="filter-wrap" style="width: 230px; padding: 24px 0; margin-left: 10px;">
                                    <h3><b>결과 내 검색</b></h3>
                                    <hr width="270px" color="black" noshade style="margin-bottom: 25px;"/>
                                    <p>항공사</p>
                                    <div class="row"style="margin-bottom: 2px">
                                    <div><i class="far fa-square"></i><span style="margin-left:7px">티웨이항공 </span><span style="float: right">30000원</span></div><br/>
                                    <div><i class="far fa-square"></i><span style="margin-left:7px">진에어 </span><span style="float: right">30000원</span></div><br/>
                                    <div><i class="far fa-square"></i><span style="margin-left:7px">제주항공 </span><span style="float: right">30000원</span></div><br/>
                                    <div><i class="far fa-square"></i><span style="margin-left:7px">에어부산 </span><span style="float: right">30000원</span></div><br/>
                                    <div><i class="far fa-square"></i><span style="margin-left:7px">플라이강원 </span><span style="float: right">30000원</span></div><br/>
                                    </div>
                            <hr width="270px" color="black" noshade style="margin-bottom: 45px;"/>
                            <div><b>항공편 시간</b></div>
                            <div>
								<input type="range" id="input-left" min="0" max="100" value="25" />
								<input type="range" id="input-right" min="0" max="100" value="75" />
                            </div>
                            <hr width="270px" color="black" noshade style="margin-bottom: 45px;"/>
                            <div class="accordion accordion-flush" id="accordionPanelsStayOpenExample">
							  <div class="accordion-item">
							    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
							      <button style="background-color:#f5f7fa;" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
							        <strong>공항<br><span style="font-size: 12px;color: gray;">모든공항</span></strong>
							      </button>
							    </h2>
							    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
							      <div class="accordion-body" style="background-color:#f5f7fa;">
							        <div><p>출발지 공항</p></div>
							        <div><i class="far fa-square"></i><span style="margin-left:7px" id="snamem">국제공항</span><span style="float: right">30000원</span></div><br/>
							      </div>
							    </div>
							  </div>
							  <div class="accordion-item">
							    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
							      <button style="background-color:#f5f7fa;" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
							       <strong>좌석<br><span style="font-size: 12px;color: gray;"></span></strong>
							      </button>
							    </h2>
							    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
							      <div class="accordion-body" style="background-color:#f5f7fa;">
							      	<input type="radio" style="margin-bottom: 16px; font-size: 13px">모든좌석<br/>
							      	<input type="radio" style="margin-bottom: 16px;">일반석<br/>
							      	<input type="radio" style="margin-bottom: 16px;">비즈니스석<br/>
							      	<input type="radio" style="margin-bottom: 16px;">일등석
							      </div>
							    </div>
							  </div>
							</div>
                        </div>
                    </div>
                </div>
                <div class="col-9">
                    <div class="col">
                        <div class="row" style="text-align: center;">
                            <div class="image" style="margin-bottom: 15px;">
                                <img src="../../../resources/images/flight/b.jpg" style="height: 180px; width: 960px;" id="main-img">
                                <div class="text">					
                                    <h1 style="color:white; font-style:normal italic; font-size: 35pt; text-align: left;">오는날짜 : <%= request.getAttribute("comebackReturnview") %> </h1>
                                    <b style="color:white; font-style:normal italic; font-size: 10pt; text-align: left;">표시 금액은 1인 기준 왕복 요급입니다.(예상세금  미 기타요금 포함) 모든항공 시간 및 날짜는 현지시간 기준입니다.</b>
                                </div>
                            </div>
                        </div>
 
                         <div class="row-my-3" id="listcard">
 							 
 						</div>
 						  <div class="modal fade" id="model-product-detail" tabindex="-1" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">항공 예약 상세 정보</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
										<div><strong style="font-size: 19px">항공편상세</strong></div>
										<div><span class="badge bg-primary" style="font-size: 13px;">오는편</span>&nbsp;&nbsp;<%= request.getAttribute("comebackReturnview") %> &nbsp;&nbsp;<span id="fname"></span>-<span id="sname"></span></div>
										<div>출발시간 :&nbsp;<span id="start"></span>&nbsp;</div>
										<div>도착시간 :&nbsp;<span id="fini"></span>&nbsp;<span style="float:right" id="airp"></span></div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
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

<!--  <form action="registers" method="post" id="list">
    <input type="hidden" name="stdayTime"  id="stdayTime" value="">
    <input type="hidden" name="stdayAirportKor" id="stdayAirportKor" value="">
    <input type="hidden" name="stdayAirplaneCode" id="stdayAirplaneCode" value="">
    <input type="hidden" name="stdayAirportCode" id="stdayAirportCode" value="">
    <input type="hidden" name="stdayEndTime" id="stdayEndTime"  value="">
    <input type="hidden" name="stdayFlightTime" id="stdayFlightTime" value="">
    <input type="hidden" name="stdayEndAirportCode" id="stdayEndAirportCode" value="">
    <input type="hidden" name="comeback" id="comeback" value="">
    <input type="hidden" name="startCode" id="startCode" value="">
    <input type="hidden" name="finishCode" id="finishCode" value="">
    <input type="hidden" name="userid" id="userid" value="${id.id }">
    <input type="hidden" name="stdaySeat" id="stdaySeat" value=""> 

</form>-->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	var listCard = $("#listcard")
    var startDate = "<%= request.getAttribute("startday") %>"
    var comebackday = "<%= request.getAttribute("comeback") %>" <%--돌아오는날짜--%>
    var startCode = "<%= request.getAttribute("startCode") %>"	<%--출발공항코드--%>
    var finishCode = "<%= request.getAttribute("finishCode") %>"
    var stdaySeat = "<%= request.getAttribute("stdaySeat")%>"	<%--좌석정보 가격으로 넘어옴--%>
    var stname = "<%= request.getAttribute("startCityName")%>"	<%--출발도시--%>
    var rtname = "<%= request.getAttribute("arriveCityName")%>" <%--도착도시--%>
    var stdayTime = "<%= request.getAttribute("stdayTime")%>"
    var stdayAirplaneCode = "<%= request.getAttribute("stdayAirplaneCode")%>"	<%--항공편코드--%>
    var stdayAirportCode = "<%= request.getAttribute("stdayAirportCode")%>"		<%--출발공항코드--%>
    var stdayEndAirportCode = "<%= request.getAttribute("stdayEndAirportCode")%>"
    var userId = "<%= request.getAttribute("userId")%>"							<%--유저정보--%>
    var startDatelast = "<%= request.getAttribute("startDate")%>"
    console.log(startDate)
     console.log(comebackday)
      console.log(startCode)
       console.log(finishCode)
        console.log(stdaySeat)
         console.log(stname)
          console.log(rtname)
           console.log(stdayTime)
            console.log(stdayAirplaneCode)
             console.log(stdayAirportCode)
              console.log(userId)
              console.log(serchrtartdate)
    
    
    console.log(comebackday)
	console.log("넘어오는좌석정보",stdaySeat)
	//var year = startDate.substring(0,4);
	//var month = startDate.substring(5,7);
	//var day = startDate.substring(8);
	
	var years = comebackday.substring(0,4);
	var months = comebackday.substring(4,6);
	var days = comebackday.substring(6);
	
	//var serchstartdate = month+day+year;
	var serchrtartdate = months+days+years;
	//console.log(serchstartdate)
	console.log(serchrtartdate)
	
    startDate = startDate.replace(/[/]/g, '');
    comebackday = comebackday.replace(/[/]/g, '');
    //console.log(startCode)
   // console.log(finishCode)
    //console.log(comebackday)
    //console.log(serchrtartdate)
    //console.log(startDate)
    //var count = 100
    $("#comeback").val(comebackday);
    $("#startCode").val(startCode);
    $("#finishCode").val(finishCode);
    $.ajax({
        type:"GET",
        url:'jsonairlist',//'https://cors-anywhere.herokuapp.com/http://openapi.airport.co.kr/service/rest/FlightScheduleList/getDflightScheduleList',
        data:{startday:serchrtartdate, startCode:finishCode, comebackday:serchrtartdate, arriveCode:startCode} ,//{serviceKey:'xxH+5pNF785sUeZ3C6Msv0Djp8VUC1Sys+NzBte8IL6ZQVGZp1S4FS4xG+V8yHWyLXbTNBUL/gjPhGLz12NSHA==',schArrvCityCode:startCode,depAirportId:finishCode,schDate:comebackday},
        dataType:'json',//'xml',
        success: function(list) {


        $.each(list,function(index, flight) {
        	
            console.log(flight);
			var output = '';
			output += '<form action="returnregister" method="post" id="list">'
			output += '<input type="hidden" name="rtdayTime" value="'+flight.startTime+'">'		 //오는날 출발시간 
			output += '<input type="hidden" name="rtdayAirportKor" value="'+flight.korName+'">'//오는날 도착시간
			output += '<input type="hidden" name="rtdayAirplaneCode" value="'+flight.airplanceNo+'">'	 //오는날 항공사
			output += '<input type="hidden" name="rtdayAirportCode" value="'+flight.startAirPortCode+'">'	 //오는날 출발항공사 코드
			output += '<input type="hidden" name="rtdayEndAirportCode" value="'+flight.arriveAirportCode+'">'	//오는날 도착항공사코드
			output += '<input type="hidden"	name="rtdayEndTime"  value="'+flight.arriveTime+'">'		 //도착시간 항공사 코드
			output += '<input type="hidden" name="rtdayFlightTime" value="'+$(flight).find('arrivalcityCode').text()+'">'	 //운행시간 넣어야함계산때려서
			output += '<input type="hidden" name="stname" value="'+stname+'">'		//출발도시 
			output += '<input type="hidden" name="rtname" value="'+rtname+'">'		//돌아오는 도시 
			output += '<input type="hidden" name="stdayAirplaneCode" value="'+stdayAirplaneCode+'">'
			output += '<input type="hidden" name="stdayAirportCode" value="'+stdayAirportCode+'">'
			output += '<input type="hidden" name="stdayEndAirportCode" value="'+stdayEndAirportCode+'">'
			output += '<input type="hidden" name="stdayTime" value="'+stdayTime+'">'			// 가는날 출발시간
			output += '<input type="hidden" name="userId" value="'+userId+'">'					//로그인 사용자정보전달 
			output += '<input type="hidden" name="startDatelast" value="'+startDatelast+'">' //출발날짜 넣기위하여
			//output += '<input type="hidden" name="serchrtartdate" value="'+serchrtartdate+'">' 인풋만 추가한상태 !! 이거 컨트롤러에서 받을준비하고 컬럼,테이블 추가다시해야함 vo도
			if(stdaySeat == flight.firstSeatPrice ){              	
				output += '<input type="hidden" name="rtdayAirPrice" value="'+flight.firstSeatPrice+'">'//가격???
               }else if(stdaySeat == flight.businessPrice ){
       			output += '<input type="hidden" name="rtdayAirPrice" value="'+flight.businessPrice+'">'//가격???                    	
               }else if (stdaySeat == flight.economyPrice ){
       			output += '<input type="hidden" name="rtdayAirPrice" value="'+flight.economyPrice+'">'//가격???                  	
               }
//			output += '<p>'+stname+'-'+rtname+'<p>'
//			output += '<p>'+comebackday+'<p>'
			output += '<input type="hidden" name="startCode" value="'+startCode+'">'
//			output += '<p>'+startCode+'<p>'
			output += '<input type="hidden" name="finishCode" value="'+finishCode+'">'
			output += '<div class="row-my-3" style="margin 10px;" id="listcard";>';
			output += '<div class="card" style="padding: 20px; border: solid 0px; margin-bottom:15px;" id="list-card">'
			output += '<div class="box" style="background:white; height: 80px;">'
			output += '<div style="float: left; width: 20%;">'
			output += '<h5>'+ flight.startTime +' - '+ flight.arriveTime +'</h5>'
			output += '<div>'+ flight.korName +'</div>'
			output += '</div>'
			output += '<div style="float: left; width: 15%;">'
			output += '<div><strong>운행시간</strong></div>'
			output += '<p>1시간 10분</p>'
			output += '</div>'
			output += '<div style="float: left; width: 35%;">'
			output += '<strong>항공사코드</strong>'
			output += '<p>'+ flight.startAirPortCode +' - '+ flight.arriveAirportCode +'</p>'
			output += '</div>'
			output += '<div style="float: right; width: 10%;"><button type="submit" class="btn btn-warning" id="choice">선택</button></div>'
			output += '<div style="float: right; width: 15%;">'
			if(stdaySeat == flight.firstSeatPrice ){             	
               	output += '가격&nbsp;<strong style="color:blue;">'+flight.firstSeatPrice+'</strong>원'
    			output += '<input type="hidden" name="classprice" value="'+flight.firstSeatPrice+'">'
               }else if(stdaySeat == flight.businessPrice ){
                   output += '가격&nbsp;<strong style="color:blue;">'+flight.businessPrice+'</strong>원'
       			   output += '<input type="hidden" name="classprice" value="'+flight.businessPrice+'">'
               }else if (stdaySeat == flight.economyPrice ){
                   output += '가격&nbsp;<strong style="color:blue;">'+flight.economyPrice+'</strong>원'
                   output += '<input type="hidden" name="classprice" value="'+flight.economyPrice+'">'
               }
			output += '<div style="float: right; width: 5%;">'
			output += '</div>'
			output += ' </div>'
			output += ' </div>'
			output += '<div class="row">'
			output += '<div class="col-12">'
			output += '<button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#model-product-detail" style=" width: 900px; height: 55px; id="info" onclick="info(\''+flight.korName+'\',\''+flight.startTime+'\',\''+flight.arriveTime+'\',\''+stname+'\',\''+rtname+'\',)"> 상세정보</button>'
			output += '</div>'
			output += '</div>'
			output += '</form>'
			output += '</div>'
			output += '</div>'
			$(listCard).append(output);
            
        })

        },
        error: function() {
            alert("항공권 조회 중 오류가 발생하였습니다.")
        }
    });
    

 
})
    function info(korname,startTime,arriveTime,stname,rtname){
    	$("#airp").text(korname)
    	$("#start").text(startTime)
    	$("#fini").text(arriveTime)
    	$("#sname").text(stname)
    	$("#fname").text(rtname)
    	
    }
</script>
</body>
</html>