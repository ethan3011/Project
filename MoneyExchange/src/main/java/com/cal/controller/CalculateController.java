package com.cal.controller;

import com.cal.util.SessionUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.cal.util.ExchangeUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

@Controller
public class CalculateController {

    // API 연결 도메인
    @Value("${site.url}")
    private String URL;
    // AccessKEy
    @Value("${site.access.key}")
    private String ACCESS_KEY;
    // 환전에 사용될 화폐 단위
    @Value("${site.source}")
    private String SOURCE;
    // 기본 에러
    @Value("${common.errorMsg}")
    private String commonErrorMsg;
    // 잘못된 시도 시 돌아갈 페이지
    @Value("${site.domain}")
    private String domain;

    private static final Logger logger = LoggerFactory.getLogger(CalculateController.class);

    // API 연결을 위한 유틸 생성
    private static final ExchangeUtil util = new ExchangeUtil();

    /**
     * AJAX 통신을 통해 입력받은 금액과 환율 정보로 세션에 저장된 이전 환율과 현재 환율을 비교하여 json 타입으로 내려보낸다.
     * @param request currency 화폐와 amount 환전금액 정보
     * @param response 오류 발생 시 alert 스크립트로 반환때 사용
     * @return JSON객체
     */
        @RequestMapping("/calculate")
        public @ResponseBody Map<String,Object> getExchange(HttpServletRequest request, HttpServletResponse response) {

            // 파라미터로 넘어온 currency(통화 화폐)
            String currency = request.getParameter("currency");
            // 파라미터로 넘어온 amount(금액) 획득
            String amount = request.getParameter("amount");
            // 세션에서 저장된 값을 가져오기 위한 변수
            String result;

            // 반환에 사용될 객체 생성
            Map<String, Object> map = new HashMap<>();

            // 성공/실패 유무를 확인하기 위한 boolean 생성
            boolean isSuccess = false;

            // 세션에 저장되어 있는 환율정보를 저장하기 위한 BigDeciaml
            BigDecimal lastLate;

            try {
                // 세션에 저장된 마지막 환율 정보를 가져온다.
                Map<String, BigDecimal> sessionMap = (HashMap<String, BigDecimal>) SessionUtil.getAttribute("StartLate");

                // 세션에 값이 없거나, 화폐단위, 금액 이 없을 경우
                if(sessionMap == null || currency == null || amount == null) {
                    // commonErrorMsg를 출력하고 메인 페이지로 이동시킨다.
                    response.setContentType("text/html; charset=UTF-8");
                    PrintWriter out = response.getWriter();
                    out.println("<script>alert('" + commonErrorMsg + "'); location.href='" + domain + "';</script>");
                    out.flush();
                // 아닐 경우
                }else {
                    // 세션에 저장되있는 환율 중 현재 화폐 단위의 환율을 가져온다.
                    lastLate = sessionMap.get("USD" + currency);
                    // 저장된 환율 정보가 0 이 아니라면
                    if(!(lastLate.equals(BigDecimal.ZERO))) {
                        // 이전 환율을 소수점 두자리 까지 반올림 한다.
                        lastLate = lastLate.setScale(2,RoundingMode.HALF_UP);
                        // 이전 환율 정보와 환율 * 금액 을 더한 값을 맵에 넣는다.
                        map.put("lastLate", lastLate);
                        map.put("lastTotal", new BigDecimal(amount).multiply(lastLate).setScale(2,RoundingMode.HALF_UP));
                    }

                    // 현재 환율로 계산되어 넣을 변수 초기화
                    BigDecimal totalAmount;
                    String exchangeLate;

                    // 연결에 필요한 URL 주소를 저장할 StringBuilder
                    StringBuilder sb = new StringBuilder();

                    // API 연결 URL 생성
                    sb.append(URL)
                        .append("?access_key=")
                        .append(ACCESS_KEY)
                        .append("&currencies=")
                        .append(currency)
                        .append("&source=")
                        .append(SOURCE);

                    // 현재 환율 정보를 얻기 위해 API 에 연결
                    result = util.connectAPI(new URL(sb.toString()));
                    logger.info("result : " + result);

                    // 만약 실패 코드가 있을 시 실패 메세지 정보를 map에 저장한다.
                    if(result.contains("FAIL")) {
                        map.put("errorMessage", result);
                    // 아닐 경우
                    }else {
                        // 현재 환율 정보에 들어있는 값에서 숫자와 소수점을 제외한 나머지를 모두 공백으로 치환한다.
                        exchangeLate = result.substring(result.indexOf(currency)).replaceAll("[^0-9//.]","");

                        // 만약 환율 정보가 비어 있지 않다면
                        if(!"".equals(exchangeLate)) {
                            // 현재 환율 정보를 소수점 두자리 까지 반올림 하여 설정한다.
                            BigDecimal late = new BigDecimal(exchangeLate).setScale(2,RoundingMode.HALF_UP);
                            // 현재 환율에 입력받은 금액을 곱한다.
                            totalAmount = new BigDecimal(amount).multiply(late).setScale(2, RoundingMode.HALF_UP);

                            // 현재 환율 정보 및 환전금액을 map에 추가한다.
                            map.put("nowLate", late);
                            map.put("nowTotal", totalAmount);
                        }
                        // 성공적으로 마쳤으면 isSuccess를 true로 바꿔준다.
                        isSuccess = true;
                    }
                }
            // 만약 에러 발생 시 로그를 남겨준다.
            } catch (Exception e) {
                logger.info("API 설정 또는 연결 후 진행 도중 오류가 발생하였습니다.", e.getMessage());
            }finally {
                // 성공 실패 여부를 저장한다.
                map.put("isSuccess", isSuccess);
            }
            return map;
        }
}
