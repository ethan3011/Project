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
                    <c:when test="${isSuccess == true}">
                        <input type="hidden" value="<c:out value="${basicResult['USDKRW']} KRW/USD" />" id="currentUSDKRW"/>
                        <input type="hidden" value="<c:out value="${basicResult['USDJPY']} JPY/USD" />" id="currentUSDJPY"/>
                        <input type="hidden" value="<c:out value="${basicResult['USDPHP']} PHP/USD" />" id="currentUSDPHP"/>
                    </c:when>
                    <c:otherwise>
                        <input type="hidden" value="<c:out value="${failedMessage}" />"  id="failedMessage"/>
                        <input type="hidden" value="알수없는 오류가 발생하였습니다." id="currentUSDKRW"/>
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
                            <input type="text" id="amount" class="form-control" value="100" onKeyUp="removeChar(event);inputNumberFormat(this);checkSize();" onKeyDown="inputNumberFormat(this)"/>
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

    /* 처음 페이지가 준비 되었을 때 실행*/
    $(document).ready(function() {

        var failedMessage = $('#failedMessage').val();

        /*에러 메세지가 비어 있다면 환율 정보에 현재 값 추가*/
        if('' == failedMessage || undefined == failedMessage) {
            $('#basicVal').text($('#currentUSDKRW').val());
        /* 아닐 경우 오류 메세지 출력*/
        }else {
            alert(failedMessage);
            return;
        }
    })
    /* 문자 길이 확인 */
    function checkSize() {
        var str = $('#amount').val();
        var value = str.replace(/[^-\.0-9]/g, '');
        /*입력 값이 10000을 초과하거나 1보다 작을 경우 에러 머세지 호출 후 송금액 기본 100 USD로 설정*/
        if(value > 10000 || value < 1) {
            alert('송금액이 바르지 않습니다');
            $('#amount').val('100');
            return;
        }
    }

    /* 숫자 및 . 을 제외한 나머지 글자 제거 */
    function removeChar(event) {
        event.target.value = event.target.value.replace(/[^\.0-9]/g, "");
    }

    /* 콤마 추가에 사용되는 함수 */
    function comma(obj) {
        var regx = new RegExp(/(-?\d+)(\d{3})/);
        var bExists = obj.indexOf(".", 0);
        /* . 기준으로 자르기 */
        var strArr = obj.split('.');
        /* 콤마 추가하기 */
        while (regx.test(strArr[0])) {
            strArr[0] = strArr[0].replace(regx, "$1,$2");
        }
        /*세 번호 마다 콤마 붙이기*/
        if (bExists > -1) {
            obj = strArr[0] + "." + strArr[1].substring(0,2);
        } else {
            obj = strArr[0];
        }
        return obj;
    }

    /* 콤마 달기 */
    function inputNumberFormat(obj) {
        obj.value = comma(obj.value);
    }
    /* 콤마 삭제하기 */
    function uncomma_call(){
        var input_value = document.getElementById('amount');
        input_value.value = uncomma(input_value.value);
    }

    /* 콤마를 제거할 때 사용되는 함수 */
    function uncomma(str) {
        str = "" + str.replace(/,/gi, '');
        str = str.replace(/(^\s*)|(\s*$)/g, "");
        return (new Number(str));
    }

    /* SELECT 박스 값 변경에 따른 현재 환율 정보 출력 */
    $('#currency').on("change", function() {
        var value = 'currentUSD' + this.value;
        $('#basicVal').text(document.getElementById(value).value);
    })

    /* submit 버튼 클릭시 실행되는 함수 */
    function calculator() {
        /* 환율 정보 및 금액 획득 */
        var currency = $('#currency option:selected').val();
        var amount = $('#amount').val();

        /* 숫자 및 . 을 제외한 나머지 공백으로 치환 */
        amount = amount.replace(/[^\.0-9]/g, "");

        /* currency 와 amount가 비어있지 않다면 실행*/
        if(currency != null && amount != null) {
            $.ajax({
                url: '/calculate',
                type: 'GET',
                data: {currency: currency, amount: amount},
                success: function (data) {
                    // 성공 실패 유무
                    var isSuccess = data.isSuccess;
                    // 이전 환율 * 금액
                    var lastTotal = data.lastTotal;
                    // 이전 환율 금액
                    var lastLate = data.lastLate;
                    // 현재 환율
                    var nowLate = data.nowLate;
                    // 현재 환율 금액
                    var nowTotal= data.nowTotal;
                    // 에러 메세지
                    var errorMessage = data.errorMessage;

                    // 에러 메세지가 비어있지 않으면
                    if(errorMessage != undefined) {
                        // 에러 메세지 출력 후 종료
                        alert(errorMessage);
                        return;
                    }
                    // 성공적으로 종료되었을 경우
                    if(isSuccess) {
                        // 현재 환율 정보와 세션에 저장된 정보 값이 같을 경우 그냥 계산 된 금액 소수점 두자리까지 표시
                        if(lastLate === nowLate) {
                            $('#isChangeLate').text('');
                            $('#resultText').text('수취금액은 ' + lastTotal.toLocaleString('ko-KR',{ maximumFractionDigits: 2, minimumFractionDigits: 2 }) + ' ' + currency + ' 입니다.');
                        // 현재 환율 정보와 세션에 저장된 환율 정보 값이 다를 경우 둘다 표시
                        }else {
                            $('#isChangeLate').text('환율이 변경되었습니다. 기존 : ' + lastLate + ' 현재 :' + nowLate);
                            $('#resultText').text('수취금액은 ' + nowTotal.toLocaleString('ko-KR',{ maximumFractionDigits: 2, minimumFractionDigits: 2 }) + ' ' + currency + ' 입니다.');
                        }
                    // 실패일 경우 금액 변환 도중 오류가 발생하였다는 메세지 출력 및 종료
                    }else {
                        alert('금액 변환 도중 오류가 발생하였습니다. 정확한 금액을 입력해 주세요.');
                        return;
                    }
                },
                // 실패 경우 logger를 보고 추적해야 하므로 사용자에겐 알수없는 에러 표시
                error: function() {
                    alert('알수없는 에러가 발생하였습니다. 잠시 후 다시 시도해 주세요');
                    return;
                }
            })
        // URL을 직접 입력하고 무언가 잘못된 방법일 경우 실패하므로 메세지 출력
        }else {
            alert('잘못된 방법으로 시도 되었습니다. 정확한 통화를 선택해주세요.');
            return;
        }
    }
</script>
</body>
</html>
