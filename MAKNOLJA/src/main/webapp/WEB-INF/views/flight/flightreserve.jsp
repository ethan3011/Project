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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>예약 페이지 </title>
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
    }
    #a{
        padding: 20px;
    }
    .fi-icon {
    font-family: flight-icon!important;
    font-size: 16px;
    font-style: normal;
    -webkit-font-smoothing: antialiased;
    }
    .fi-icon_roundTrip:before {
    content: "\e639";
    }
    .q{
        list-style-type: none;
    }
    .button{
        background-color: orange;
        border: none;
        font-size: 24px;
        padding: 16px 330px;
        border-radius: 12px;
        box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
    }
    .card{
        box-shadow: 10px 7px 5px grey;
    }
            body{
            
            background-color:#f5f7fa;
        }
    
    </style>
</head>
<body>

<div class="container my-3">
  <form action="pay" method="post" id="x">   
  <div class="row" id="main">
        <div class="col-12">
       <%--  %> %> <%= request.getAttribute("stname") %>
        <%= request.getAttribute("a") %>--%>
           
        </div>
       <%-- <p>${a.stdayTime }</p>
        <p>${startname }</p> 
        <p>${rtartname }</p> 
        <p>${total }</p>--%>
        <div class="card col-7" style="margin-right: 14px; margin-bottom: 20px;">
            <div class="col" id="a">
                <div><h3><b>${startname }&nbsp;<span style="font-size: 20px; color: green;"><i class="fas fa-exchange-alt fa-lg"></i></span>&nbsp;${rtartname }</b></h3></div>
                <div>예약항권표 여정표  |  모든 출발/도착시간은 현지 시각 기준입니다</div>
                <div class="m-check-travel__flightDetail dash-line__top-m16"></div>
                <div><span class="badge bg-primary" style="font-size: 13px;">가는편</span> <span style="font-weight:bold">${a.stdayDate } | ${startname }-${rtartname } |약 1시간소요</span></div>
                <div class="row">
                    <div class="col-4" style="flex: 1 1 auto;">
                        <div >${a.stdayTime }&nbsp;&nbsp;&nbsp; ${a.stdayAirportCode }&nbsp;&nbsp;&nbsp; ${startname }공항 출발</div>
                        <div></div><br/>
                        <div>${a.stdayEndTime }&nbsp;&nbsp;&nbsp;  ${a.stdayEndAirportCode }&nbsp;&nbsp; ${rtartname }공항 도착</div>
                    </div>
                    <div class="col-3">
                        <div>${a.stdayAirportKor } <br/>${a.stdayAirplaneCode }</div>
                        <c:set var="seat" value="${a.rtdaySeat }"/>
                        <c:choose>
                        	<c:when test="${seat eq '300000' }">
                        	      <div>이코노미석</div>
                        	</c:when>
                        	<c:when test="${seat eq '1800000' }">
                        	      <div>비즈니스석</div>
                        	</c:when>
                        	<c:when test="${seat eq '3600000' }">
                        	      <div>일등석</div>
                        	</c:when>
                        </c:choose>
                    </div>
                </div>
                <div class="m-check-travel__flightDetail dash-line__top-m16"></div>
                <div><span class="badge bg-primary" style="font-size: 13px;">오는편</span> <span style="font-weight:bold">${a.rtdayDate } | ${rtartname }-${startname } | 약 1시간소요</span></div>
                <div class="row">
                    <div class="col-4" style="flex: 1 1 auto;">
                        <div>${a.rtdayTime }&nbsp;&nbsp;&nbsp;&nbsp;  ${a.rtdayAirportCode }&nbsp;&nbsp;&nbsp; ${rtartname }공항 출발</div>
                        <div></div><br/>
                        <div>${a.rtdayEndTime }&nbsp;&nbsp;&nbsp;&nbsp;  ${a.rtdayEndAirportCode }&nbsp;&nbsp;&nbsp; ${startname }공항 출발</div>
                    </div>
                    <div class="col-3">
                        <div>${a.rtdayAirportKor }<br/>${a.rtdayAirplaneCode }</div>
                        <c:choose>
                        	<c:when test="${seat eq '300000' }">
                        	      <div>이코노미석</div>
                        	</c:when>
                        	<c:when test="${seat eq '1800000' }">
                        	      <div>비즈니스석</div>
                        	</c:when>
                        	<c:when test="${seat eq '3600000' }">
                        	      <div>일등석</div>
                        	</c:when>
                        </c:choose>
                    </div>
                </div>
            </div>     
        </div>
        <div class="card col-4" id="a" style="margin-bottom: 20px;">
            <div><h3><b>요금 상세정보</span></b></div>
            <div class="m-check-travel__flightDetail dash-line__top-m16"></div> 
            <div class="row">
            <div class="col-1" style="flex: 1 1 auto; ">가는편</div>
                <div class="col" style="text-align: right;"><fmt:formatNumber>${a.stdayAirPrice }</fmt:formatNumber>원</div>
            </div>
            <div class="row">
                <div class="col-1" style="flex: 1 1 auto;">오는편</div>
                <div class="col" style="text-align: right;"><fmt:formatNumber>${a.rtdayAirPrice }</fmt:formatNumber>원</div>
            </div>
            <div class="m-check-travel__flightDetail dash-line__top-m16"></div>
            <div><h4 style="text-align: right;"><b>총 금액 : <span style="color: blue; font-weight:bold"><fmt:formatNumber>${total }</fmt:formatNumber>원</span></b></h4></div>
        </div>
        <div class="card col-7" id="a" style="margin-bottom: 20px;">
            <p><b style="color: coral;">[여행/출입국 제한 현황]</b> ${startname }: 입국 허용. ${rtartname }: 입국 허용. <a href="www.naver.com" style="color: blue;">자세히 보기</a></p>
            <p><b>[코로나19 관련 환불 안내]</b> 코로나19의 영향으로, 일부 항공권의 경우 취소 시 환불금액이 지정된 항공사에서만 사용 가능한 항공사 바우처의 형태로 제공될 수 있습니다(항공편 변동에 의한 비자발적 취소 포함). 항공사 바우처는 이전이 불가하며 반드시 유효기간 내에 사용을 완료해야 합니다. 자세한 사항은 취소 규정을 확인하시기 바랍니다. 항공사 바우처 사용에 대한 최종 해석권한은 항공사에 있습니다.
               <b>[탑승객 인원]</b> 예약인원이 1-3명인 경우에만 이용 가능한 요금입니다.</p>
            <p><b>[분리 예약]</b> 따로예약 항공권 상품을 예약했습니다. 항공권이 여러 개의 예약으로 나뉘어 발권됩니다. 발권 완료 후 항공권을 변경/취소하려는 경우 예약마다 개별적으로 처리해야 합니다. 관련 비용 또한 개별 예약의 규정에 따라 각각 부과됩니다.</p>   
            <p><b>[항공권 발권시간]</b>
                서울-부산: 결제 완료 후 1시간 30분 이내에 항공권이 발권됩니다.
                
                부산-서울: 결제 완료 후 24시간 이내에 항공권이 발권됩니다.</p>
        </div>
        <div class="card col-7" id="a"  style="margin-bottom: 20px;">
            <div style="margin-bottom: 20px;"><h3><b>탑승객</b></h3></div>
            <div style="margin-bottom: 20px;"><h5><b>탑승객 :성인 항공권</b></h5></div>
            <div class="row">
            <div class="col-1"  style="flex: 1 1 auto;"> <!--div 안에서 정렬용으로 사용하기위 에 flex 줌-->
                <ul class="q"> <!-- ul의 표시를 없애기 위해 q라는클래스를줌 위에 스타일정의-->
                    <li>
                        <label>성</label><br/>
                        <input class="w3-input" type="text" placeholder="예: 홍" name="firstname" value="" id="firstname"></input>
                    </li>
                    <li>
                        <label>성별</label><br/>
                        <select class="w3-input" name="gender">
                            <option>성별 선택</option>
                            <option value="M">남자</option>
                            <option value="F">여자</option>
                        </select>
                    </li>
                    <li>
                        <label>국적</label><br/>
                        <select class="w3-input" name="country">
                            <option value="K">내국인</option>
                            <option value="U">외국인</option>
                        </select>
                    </li>
                    <li>
                        <label>신분증번호</label><br/>
                        <input class="w3-input" type="text" placeholder="주민등록번호" name="postnum" maxlength='13'></input>
                    </li>
                </ul>
            </div>
            <div class="col">
                <ul class="q">
                    <li>
                        <label>이름</label><br/>
                        <input class="w3-input" type="text" placeholder="예 :길동" name="lastname" id="lastname"></input>
                    </li>
                    <li>
                        <label>생년월일</label><br/>
                        <input class="w3-input" type="date" name="birsday"></input>
                    </li>
                    <li>
                        <label>신분증 종류</label><br/>
                        <select class="w3-input" name="postpaper">
                            <option value="신분증">신분증</option>
                        </select>
                    </li>
                    <li>
                        <label>유효기간(선택입력)</label><br/>
                        <input class="w3-input" type="date" name="postday"></input>
                    </li>
                </ul>
            </div>
        </div>
        </div>
        <div class="card col-7" style="margin-right: 6px; margin-bottom: 20px;">
            <div class="col" id="a">
                <div><h3><b><span>연락처 상세 정보</span></b></h3></div>
                    <div class="row">
                        <div class="col-1"  style="flex: 1 1 auto;">
                            <ul class="q">
                                <li>
                                    <label>이름</label><br/>
                                    <input class="w3-input" type="text" placeholder="HONGGILDONG" name="infofullname" id="fullname">
                                </li>
                                <li>
                                    <label>이메일</label><br/>
                                    <input class="w3-input" type="email" placeholder="hong@naver.com" name="email" id="emails">
                                </li>
                            </ul>
                        </div>
                        <div class="col">
                            <div></div><br/><br><br>
                            <ul class="q">
                                <li>
                                    <label>휴대전화번호</label><br/>
                                    <input class="w3-input" type="text" placeholder="01012345678" name="phone" maxlength='11'>
                                </li>
                            </ul>
                        </div>
                    </div>                
            </div>     
        </div> 
    </div>
    <div class="card col-7" id="a" style="margin-bottom: 20px;font-size: 13px" >
        <span><input type="checkbox">&nbsp;막놀자가 발송하는 특가, 추천 프로모션 및 기타 정보 관련 뉴스레터를 구독하고 싶습니다.</span>
        <span id="qq" style="margin-bottom: 15px"><input type="checkbox">&nbsp;막놀자 항공권 예약 규정 및 <a href="" style="color:blue;">개인정보</a> 처리방침을 읽고 이에 동의하는 경우 확인란에 체크하여 주십시오</span>
        <div>
            <button class="button" type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop" id="pay">결제</button>
        </div>
    </div>
    <!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"><b>결제를 하시기전에 다음의 정보가 모두 정확한지 다시한번 확인하세요</b></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="card card">
        <table>
        	<thead>
        		<tr bgcolor="gray">
        			<td style=><h5><b>탑승객이름</b></h5></td>
        		</tr>
        	</thead>
        	<tbody>
        		<tr>
        			<td>이름 : <strong id="firstnames" style="color:blue;"></strong></td>
        		</tr>
        		<tr>
        		    <td>※  탑승객 이름의 절차 및 성-이름 순서를 정확히 입력했는지 확인하시기 바랍니다. 신분증(여권) 상의 철자와 다른 경우 탑승이 거절될수 있으며, 변경 요청 시 수수료가 발생하거나 변경이 불가할 수 있습니다.
        		</tr>
        	</tbody>
        </table>
        </div>
                <div class="card card">
        <table>
        
        	<thead>
        		<tr bgcolor="gray">
        			<td style=><h5><b>연락처 상세정보</b></h5></td>
        		</tr>
        	</thead>
        	<tbody>
        		<tr style="margin-bottom: 20px;">
        			<td>이메일 : <strong id="emailinfo" style="color:blue;"></strong></td>
        		</tr>
        		<tr>
        		<td>※ 이메일 주소를 잘못 입력하면 예약화가정 이메일 및 전자항공권을 받을수 없게 됩니다. 정확한 이메일 주소를 입력하시오.</td>
        		</tr>
        	</tbody>
        </table>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="submit" class="btn btn-primary">확인</button>
      </div>
    </div>
  </div>
</div>
		<input type="hidden" name="startname" value="${startname }">
		<input type="hidden" name="rtartname" value="${rtartname }">
        <input type="hidden" name="stdayDate" value="${a.stdayDate }"> 
        <input type="hidden" name="stdayTime" value="${a.stdayTime }"> 
        <input type="hidden" name="stdayAirportCode" value="${a.stdayAirportCode }"> 
        <input type="hidden" name="stdayEndTime" value="${a.stdayEndTime }"> 
        <input type="hidden" name="stdayEndAirportCode" value="${a.stdayEndAirportCode }"> 
        <input type="hidden" name="stdayAirportKor" value="${a.stdayAirportKor }"> 
        <input type="hidden" name="stdayAirplaneCode" value="${a.stdayAirplaneCode }"> 
        <input type="hidden" name="rtdaySeat" value="${a.rtdaySeat }"> 
        <input type="hidden" name="rtdayDate" value="${a.rtdayDate }"> 
        <input type="hidden" name="rtdayTime" value="${a.rtdayTime }"> 
        <input type="hidden" name="rtdayAirportCode" value="${a.rtdayAirportCode }"> 
        <input type="hidden" name="rtdayEndTime" value="${a.rtdayEndTime }"> 
        <input type="hidden" name="rtdayEndAirportCode" value="${a.rtdayEndAirportCode }"> 
        <input type="hidden" name="rtdayAirportKor" value="${a.rtdayAirportKor }"> 
        <input type="hidden" name="rtdayAirplaneCode" value="${a.rtdayAirplaneCode }"> 
        <input type="hidden" name="stdayAirPrice" value="${a.stdayAirPrice }"> 
        <input type="hidden" name="rtdayAirPrice" value="${a.rtdayAirPrice }"> 
        <input type="hidden" name="total" value="${total }">
        <input type="hidden" name="userId" value="${userId }">
</form>
 </div>

 
<script>
$(function() { //window.onload = function() {
<%--  var a = <%= request.getAttribute("stdayAirportKor") %>
 console.log(a);
 		var fullname = $("#fullname").val();
 		console.log(fullname);
 		var emails = $("#emails").val();
 		$("#fullnm").text(fullname);
 		 --%>
			$("#pay").click(function(){

				
				
				
			var name = $("#firstname").val();
			var names = $("#lastname").val();
			var email = $("#emails").val();
			var fullname = name+names
			$("#firstnames").text(fullname)
			$("#emailinfo").text(email)
 	 				
 		 		var myModal = document.getElementById('myModal')
 		 		var myInput = document.getElementById('myInput')

 		 		myModal.addEventListener('shown.bs.modal', function () {
 		 		  myInput.focus()
 		 		});
 		
			
 		
			});


 	
 
});
</script>
</body>
</html>