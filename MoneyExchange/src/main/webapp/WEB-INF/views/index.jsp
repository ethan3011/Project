<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>환율 계산</title>
</head>
<body>
<div>
    <div class="container">
        <div style="font-weight: 800; font-size: 60px;" >환율 계산</div>
        <div class="row">
            <form role="form" action="#">
                <c:choose>
                    <c:when test="${empty failedMessage}">
                        <input type="hidden" value="<c:out value="${basicResult['USDKRW']} KRW/USD" />" id="currentUSDKRW"/>
                        <input type="hidden" value="<c:out value="${basicResult['USDJPY']} JPY/USD" />" id="currentUSDJPY"/>
                        <input type="hidden" value="<c:out value="${basicResult['USDPHP']} PHP/USD" />" id="currentUSDPHP"/>
                    </c:when>
                    <c:otherwise>
                        <input type="hidden" value="${failedMessage}" id="failedMessage"/>
                        <input type="hidden" value="FAIL" id="currentUSDKRW"/>
                        <input type="hidden" value="FAIL" id="currentUSDJPY"/>
                        <input type="hidden" value="FAIL" id="currentUSDPHP"/>
                    </c:otherwise>
                </c:choose>
                <div class="col-3">
                    <div class="row">
                        <div class="col-4"><span>송금국가: </span></div>
                        <div class="col-6"><span>미국(USD)</span></div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="row">
                        <div class="col-4"><span>수취국가: </span></div>
                        <div class="col-6">
                            <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="currency">
                                <option value="KRW" selected>한국(KRW)</option>
                                <option value="JPY">일본(JPY)</option>
                                <option value="PHP">필리핀(PHP)</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="row">
                        <div class="col-4"><span>환율:</span></div>
                        <div class="col-6"><span id="basicVal"></span></div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="row">
                        <div class="col-4"><span>송금액:</span></div>
                        <div class="col-6">
                            <input type="text" id="amount" class="form-control" value="100" onKeyUp="removeChar(event);inputNumberFormat(this);checkSize();" onKeyDown="inputNumberFormat(this);"/>
                        </div>
                    </div>
                </div>
                <button type="button" class="btn btn-success" onclick="calculator()">submit</button>
                <div class="result"></div>
            </form>
        </div>
        <div class="row">
            <div class="col-10">
                <p id="isChangeLate"></p>
                <p id="resultText"></p>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">

    $(document).ready(function() {

        var failedMessage = $('#failedMessage').val();

        if('' == failedMessage || undefined == failedMessage) {
            $('#basicVal').text($('#currentUSDKRW').val());
        }else {
            alert(failedMessage);
            return;
        }
    })

    function checkSize() {
        var str = $('#amount').val();
        var value = str.replace(/[^-\.0-9]/g, '');
        console.log(value);
        if(value > 10000 || value < 1) {
            alert('송금액이 바르지 않습니다');
            $('#amount').val('1');
            return;
        }
    }

    function removeChar(event) {
        event = event || window.event;
        var keyID = (event.which) ? event.which : event.keyCode;
        if (keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39) {
            return;
        }else {
            event.target.value = event.target.value.replace(/[^\.0-9]/g, "");
        }
    }

    function comma(obj) {
        var regx = new RegExp(/(-?\d+)(\d{3})/);
        var bExists = obj.indexOf(".", 0);
        var strArr = obj.split('.');

        while (regx.test(strArr[0])) {
            strArr[0] = strArr[0].replace(regx, "$1,$2");//콤마추가하기
        }
        if (bExists > -1) {
            obj = strArr[0] + "." + strArr[1].substring(0,2);
        } else {
            obj = strArr[0];
        }
        return obj;
    }

    //input box 콤마달기
    function inputNumberFormat(obj) {
        obj.value = comma(obj.value);
    }
    //input box 콤마풀기
    function uncomma_call(){
        var input_value = document.getElementById('amount');
        input_value.value = uncomma(input_value.value);
    }

    //콤마 푸는 함수
    function uncomma(str) {
        str = "" + str.replace(/,/gi, '');
        str = str.replace(/(^\s*)|(\s*$)/g, "");
        return (new Number(str));
    }

    $('#currency').on("change", function() {
        var value = 'currentUSD' + this.value;
        $('#basicVal').text(document.getElementById(value).value);
    })


    function calculator() {

        var currency = $('#currency option:selected').val();
        var amount = $('#amount').val();

        amount = amount.replace(/[^\.0-9]/g, "");

        if(!(currency == null && currency == "")) {
            $.ajax({
                url: '/calculate',
                type: 'GET',
                data: {currency: currency, amount: amount},
                success: function (data) {
                    var isSuccess = data.isSuccess;
                    var lastTotal = data.lastTotal;
                    var lastLate = data.lastLate;
                    var nowLate = data.nowLate;
                    var nowTotal= data.nowTotal;
                    var errorMessage = data.errorMessage;

                    console.log(errorMessage);
                    if(errorMessage != undefined) {
                        alert(errorMessage);
                        return;
                    }

                    if(isSuccess) {
                        if(lastLate === nowLate) {
                            $('#isChangeLate').text('');
                            $('#resultText').text('수취금액은 ' + lastTotal.toLocaleString('ko-KR',{ maximumFractionDigits: 2, minimumFractionDigits: 2 }) + ' ' + currency + ' 입니다.');
                        }else {
                            $('#isChangeLate').text('환율이 변경되었습니다. 기존 : ' + lastLate + ' 현재 :' + nowLate);
                            $('#resultText').text('수취금액은 ' + nowTotal.toLocaleString('ko-KR',{ maximumFractionDigits: 2, minimumFractionDigits: 2 }) + ' ' + currency + ' 입니다.');
                        }
                    }else {
                        alert('금액 변환 도중 오류가 발생하였습니다. 정확한 금액을 입력해 주세요.');
                        return;
                    }
                },
                error: function() {
                    alert('환율을 확인하는 도중 오류가 발생하였습니다. 잠시 후 다시 시도해주십시오.');
                    return;
                }
            })
        }else {
            alert('잘못된 방법으로 시도 되었습니다. 정확한 통화를 선택해주세요.');
            return;
        }
    }
</script>
</body>
</html>
