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
    <title>가는 편 || 선택</title>
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
                                    <p><strong>항공사</strong></p>
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
								<input type="range" id="input-left" min="0" max="100" value="1" />
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
                                <img src="../../../resources/images/flight/listimg.png" style="height: 180px; width: 960px;" id="main-img">
                                <div class="text">
                                    <h1 style="color:white; font-style:normal italic; font-size: 35pt; text-align: left;">가는날짜 : <%= request.getParameter("startday") %> </h1>
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
										<div><span class="badge bg-primary" style="font-size: 13px;">가는편</span>&nbsp;&nbsp;<%= request.getParameter("startday") %> &nbsp;&nbsp;<span id="sname"></span>-<span id="fname"></span></div>
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
<form action="registers" method="post" id="list">
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
    <input type="hidden" name="stdaySeat" id="stdaySeat" value="<%=request.getParameter("class") %>">
    <input type="hidden" name="stdayAirPrice" id="stdayAirPrice" value="<%=request.getParameter("class") %>">
    <input type="hidden" name="stdayDate" id="stdayDate" value="<%=request.getParameter("startday")%>">
    <input type="hidden" name="startCityName" id="startCityName" value="">
    <input type="hidden" name="arriveCityName" id="arriveCityName" value="">
    <input type="hidden" name="startDate" id="startDate" value="">
    <input type="hidden" name="comebackday" id="comebackday" value="">
    <input type="hidden" name="comebackReturnview" id="comebackReturnview" value="<%= request.getParameter("comebackday") %>">
    

</form>
<i class="fas fa-square"></i>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    $(function(){
        var listCard = $("#listcard")
        var startDate = "<%= request.getParameter("startday") %>"
        var comebackday = "<%= request.getParameter("comebackday") %>"
        var comebackReturnview = "<%= request.getParameter("comebackday") %>"
        var startCode = "<%= request.getParameter("startCode") %>"
        var finishCode = "<%= request.getParameter("arriveCode") %>"
		var seat = "<%=request.getParameter("class")%>"
		console.log(startDate)
		console.log(comebackday)
		var year = startDate.substring(0,4);
		var month = startDate.substring(5,7);
		var day = startDate.substring(8);
		
		var years = comebackday.substring(0,4);
		var months = comebackday.substring(5,7);
		var days = comebackday.substring(8);
		
		var serchstartdate = month+day+year;
		var serchrtartdate = months+days+years;
		console.log(serchstartdate)
		console.log(serchrtartdate)
		var st = <%=request.getParameter("startCityName")%>
		console.log(st)
			//실제 값 조회때 넘길 값
		
        startDate = startDate.replace(/[/]/g, ''); // 가는날짜 보이게 하기할때 사용하는 값
        comebackday = comebackday.replace(/[/]/g, '');
        //console.log(startCode);
        //console.log(finishCode);
        //console.log(startDate);
        //console.log(comebackday);
        //console.log(seat); 

        $("#comeback").val(comebackday);
        $("#startCode").val(startCode);
        $("#finishCode").val(finishCode);
        //var count = 5000
        $.ajax({
            type:"GET",
            url:'jsonairlist',//https://cors-anywhere.herokuapp.com/http://openapi.airport.co.kr/service/rest/FlightScheduleList/getDflightScheduleList
            data: {startday:serchstartdate, startCode:startCode, comebackday:serchrtartdate, arriveCode:finishCode}, //{serviceKey:'xxH+5pNF785sUeZ3C6Msv0Djp8VUC1Sys+NzBte8IL6ZQVGZp1S4FS4xG+V8yHWyLXbTNBUL/gjPhGLz12NSHA==',schArrvCityCode:startCode,depAirportId:finishCode,schDate:startDate,numOfRows:count},
            dataType: 'json',//'xml',
            success: function(list) {


                $.each(list,function(index, flight) {

                    console.log(flight);
                    var output = '';
//			output += '<form action="register" method="post" id="list">'
//			output += '<input type="hidden" name="stdayTime" value="'+$(flight).find('domesticStartTime').text()+'">'
//			output += '<input type="hidden" name="stdayAirportKor" value="'+$(flight).find('domesticArrivalTime').text()+'">'
//			output += '<input type="hidden" name="stdayAirplaneCode" value="'+$(flight).find('airlineKorean').text()+'">'
//			output += '<input type="hidden" name="stdayAirportCode" value="'+$(flight).find('startcityCode').text()+'">'
//			output += '<input type="hidden"	name="stdayEndTime"  value="'+$(flight).find('arrivalcityCode').text()+'">'
//			output += '<input type="hidden" name="stdayFlightTime" value="'+$(flight).find('arrivalcityCode').text()+'">'
//			output += '<input type="hidden" name="stdayEndAirportCode" value="'+$(flight).find('arrivalcityCode').text()+'">'
//			output += '<input type="hidden" name="comeback" value="'+comebackday+'">'
//					output += '<p>'+flight.startCityName+'-'+flight.arriveCityName+'<p>' 
//                    output += '<p>'+comebackday+'aa<p>'
                    output += '<input type="hidden" name="startCode" value="'+startCode+'">'
//                    output += '<p>'+startCode+'bb<p>'
                    output += '<input type="hidden" name="finishCode" value="'+finishCode+'">'
                    output += '<div class="row-my-3" style="margin 10px;" id="listcard";>'
                    output += '<div class="card" style="padding: 20px; border: solid 0px; margin-bottom:15px; " id="list-card">'
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
                    output += '<div style="float: right; width: 10%;"><button class="btn btn-warning" onclick="choice(\''+comebackReturnview+'\',\''+startDate+'\',\''+flight.startCityName+'\',\''+flight.arriveCityName+'\',\''+flight.airplanceNo+'\',\''+flight.startTime+'\',\''+flight.korName+'\',\''+flight.arriveTime+'\',\''+flight.startAirPortCode+'\',\''+flight.arriveAirportCode+'\',\''+$(flight).find('arrivalcityCodes').text()+'\',\''+$(flight).find('arrivalcityCodes').text()+'\')">선택</button></div>'
                    output += '<div style="float: right; width: 15%;">'
                    if(seat == flight.firstSeatPrice ){              	
                    	output += '가격&nbsp;<strong style="color:blue;">'+flight.firstSeatPrice+'</strong>원'
                    }else if(seat == flight.businessPrice ){
                        output += '가격&nbsp;<strong style="color:blue;">'+flight.businessPrice+'</strong>원'                    	
                    }else if (seat == flight.economyPrice ){
                        output += '가격&nbsp;<strong style="color:blue;">'+flight.economyPrice+'</strong>원'                   	
                    }
                    output += '<div style="float: right; width: 5%;">'
                    output += '</div>'
                    output += ' </div>'
                    output += ' </div>'
                    output += '<hr width="900px" color="black" noshade style="margin-bottom: 25px;"/>'
                    output += '<div class="row">'
                    output += '<div class="col-12">'
                    output += '<button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#model-product-detail" style=" width: 900px; height: 55px; id="info" onclick="info(\''+flight.korName+'\',\''+flight.startTime+'\',\''+flight.arriveTime+'\',\''+flight.startCityName+'\',\''+flight.arriveCityName+'\',)"> 상세정보</button>'
                    output += '</div>'
                    output += '</div>'
//			output += '</form>'
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
    function choice(comebackday,startDate,startCityName,arriveCityName,stdayAirplaneCode,stdayTime, stdayAirportKor, stdayEndTime, stdayAirportCode, stdayEndAirportCode,stdayFlightTime,stdayEndAirportCodes){ //stdayEndAirportCodes 일부러 s 붙임 
		
    	$("#startDate").val(startDate);
    	$("#comebackday").val(comebackReturnview);
    	$("#startCityName").val(startCityName);
    	$("#arriveCityName").val(arriveCityName);
        $("#stdayTime").val(stdayTime);		//input쪽 name 		출발시간
        $("#stdayAirportKor").val(stdayAirportKor);					// 출발공항한국이름
        $("#stdayAirplaneCode").val(stdayAirplaneCode);		// 출발 공항편코드
        $("#stdayAirportCode").val(stdayAirportCode);		// 출발 공항코드
        $("#stdayEndTime").val(stdayEndTime);					// 도착 시간
        $("#stdayFlightTime").val(stdayFlightTime);			// 운행시간
        $("#stdayEndAirportCode").val(stdayEndAirportCode);	// 도착공항코드
        $("#userid").val()
        $("#list").submit();
    }
    
    function info(korname,startTime,arriveTime,startCityName,arriveCityName){
    	$("#airp").text(korname)
    	$("#start").text(startTime)
    	$("#fini").text(arriveTime)
    	$("#sname").text(startCityName)
    	$("#fname").text(arriveCityName)
    	
    }



</script>

</body>
</html>