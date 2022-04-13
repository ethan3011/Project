package com.cal.interceptor;

import com.cal.util.ExchangeUtil;
import com.cal.util.SessionUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

public class ExchangeLateInterceptor extends HandlerInterceptorAdapter {

    // API 기본 URL
    @Value("${site.url}")
    private String URL;
    // 엑세스 키
    @Value("${site.access.key}")
    private String ACCESS_KEY;
    // 기본 화폐 단위
    @Value("${site.source}")
    private String SOURCE;
    // 기본 변경 화폐 단위
    @Value("${site.basicCurrencies}")
    private String BASICLATES;

    private static final Logger logger = LoggerFactory.getLogger(ExchangeLateInterceptor.class);

    /**
     * /main 페이지에 들어갈 때 요청을 가로 채 현재 환율정보를 세션에 저장하는데 사용
     * @param request 요청
     * @param response 응답
     * @param handler 핸들러
     * @return 현재 세션에 데이터 저장
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        // 연결 유틸 생성
        ExchangeUtil exchangeUtil = new ExchangeUtil();

        try{
            // 기본적으로 3가지 환율 조회할 떄 사용될 URL 생성
            StringBuilder sb = new StringBuilder();
            sb.append(URL)
                    .append("?access_key=")
                    .append(ACCESS_KEY)
                    .append("&currencies=")
                    .append(BASICLATES)
                    .append("&source=")
                    .append(SOURCE);

            logger.info("StartURL = " + sb);

            // 연결하여 result에 결과를 저장한다.
            String result = exchangeUtil.connectAPI(new URL(sb.toString()));

            // FAIL 메세지가 들어있을 경우
            if(result.contains("FAIL")) {
                logger.info(result);
                // FailMessage를 저장 후 종료
                SessionUtil.addAttribute("FailMessage", result);
                return super.preHandle(request, response, handler);
            // 없을 경우
            }else {
                // 세션에 저장될 객체 초기화
                Map<String, BigDecimal> map = new HashMap<>();

                // 응답을 , 기준으로 잘라준다.
                String[] strs = result.split(",");

                // 잘려진 데이터 기준으로 반복하여
                for(String str : strs) {
                    // 비어 있지 않을 경우
                    if(str != null) {
                        // USDKRW 라는 데이터가 있을 경우
                        if(str.contains("USDKRW")) {
                            // 숫자 0부터9, . 을 제외한 나머지를 모두 공백으로 치환시킨다.
                            String USDKRW = str.replaceAll("[^0-9//.]", "");
                            // 만약 USDKRW가 비어 있지 않다면
                            if(!"".equals(USDKRW)) {
                                // map 에 추가한다.
                                map.put("USDKRW", new BigDecimal(USDKRW));
                                logger.info("STARTLATE USDKRW : " + USDKRW);
                            }else {
                                // 혹시라도 비어 있을 경우 로그를 출력한다.
                                logger.info("USDKRW 를 설정하는데 실패하였습니다.");
                            }
                        }
                        // 위와 같은 방식으로 진행
                        if(str.contains("USDJPY")) {
                            String USDJPY = str.replaceAll("[^0-9//.]", "");
                            if(!"".equals(USDJPY)){
                                map.put("USDJPY", new BigDecimal(USDJPY));
                                logger.info("STARTLATE USDJPY : " + USDJPY);
                            }else {
                                logger.info("USDJPY 를 설정하는데 실패하였습니다.");
                            }
                        }
                        // 위와 같은 방식으로 진행
                        if(str.contains("USDPHP")) {
                            String USDPHP = str.replaceAll("[^0-9//.]", "");
                            if(!"".equals(USDPHP)) {
                                map.put("USDPHP", new BigDecimal(USDPHP));
                                logger.info("STARTLATE USDPHP : " + USDPHP);
                            }else {
                                logger.info("USDPHP 를 설정하는데 실패하였습니다.");
                            }
                        }
                    }
                }
                // 정상적으로 종료 시 페이지 들어갈 때 현재 환율 정보를 세션에 저장한다.
                SessionUtil.addAttribute("StartLate", map);
            }
        }catch(Exception e) {
            logger.error("API의 기본통화 KRW, JPY, PHP 설정에 실패하였습니다.", e.getMessage());
        }
        return super.preHandle(request, response, handler);
    }
}
