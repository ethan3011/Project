package com.cal.interceptor;

import com.cal.util.ExchangeUtil;
import com.cal.util.SessionUtil;
import org.junit.Before;
import org.junit.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.math.BigDecimal;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.*;

public class ExchangeLateInterceptorTest {

    protected MockHttpSession session;
    protected MockHttpServletRequest request;

    // 세션 상태 확인 테스트를 위한 기본 조건
    @Before
    public void Before(){
        // 세션에 담을 객체
        String ThisIsTest = "ThisIsTest";

        // 세션 생성
        session = new MockHttpSession();

        // 세션에 Attribute 값 설정
        session.setAttribute("ThisIsTest", ThisIsTest);

        // Request 생성
        request = new MockHttpServletRequest();

        // request에 Session 설정
        request.setSession(session);
        // ContextHolder에 Request 설정
        RequestContextHolder.setRequestAttributes(new ServletRequestAttributes(request));
    }

    @Test
    public void preHandle() {
        // Util 사용을 위해 Util 생성
        ExchangeUtil exchangeUtil = new ExchangeUtil();

        try{
            // 테스트 주소
            String sb = "http://apilayer.net/api/live?access_key=14967058464064fbf87be50198c364ce&currencies=KRW,JPY,PHP&source=USD";

            // 연결 테스트
            String result = exchangeUtil.connectAPI(new URL(sb));

            // 정상적으로 연결됨 테스트
            assertNotNull(result);

            // FAIL 기능 테스트를 위해 글자 추가
            result += "FAIL";

            // FAIL 이 들어있을 경우
            if(result.contains("FAIL")) {

                // 세션에 추가
                SessionUtil.addAttribute("FailMessage", result);

                // 세션이 비어있지 않은지 테스트
                assertNotNull(SessionUtil.getAttribute("FailMessage"));

                // 추가된 부분 삭제
                SessionUtil.removeAttribute("FailMessage");
            }
                // 맵 객체 생성
                Map<String, BigDecimal> map = new HashMap<>();

                // result를 , 기준으로 잘라서 strs에 담아준다.
                String[] strs = result.split(",");

                // strs가 비어있지 않음을 테스트
                assertNotNull(strs);

                // strs에 들어있는 값 기준으로 반복문 실행
                for(String str : strs) {

                    // str에 널값이 없음을 테스트
                    assertNotNull(str);

                    // USDKRW 글자로 잘린 문장이 있으면
                    if(str.contains("USDKRW")) {

                        // 정규식으로 숫자, . 을 제외한 나머지를 삭제
                        String USDKRW = str.replaceAll("[^0-9//.]", "");

                        // 정말 숫자와 .만 들어있는지 테스트
                        assertTrue(USDKRW.matches("[0-9//.]*$"));

                        // 비어있지 않으면 값 넣기
                        if(!"".equals(USDKRW)) {
                            map.put("USDKRW", new BigDecimal(USDKRW));
                        }
                    }

                    // 위와 같은 방식으로 진행
                    if(str.contains("USDJPY")) {
                        String USDJPY = str.replaceAll("[^0-9//.]", "");
                        assertTrue(USDJPY.matches("[0-9//.]*$"));
                        if(!"".equals(USDJPY)){
                            map.put("USDJPY", new BigDecimal(USDJPY));
                        }
                    }

                    // 위와 같은 방식으로 진행
                    if(str.contains("USDPHP")) {
                        String USDPHP = str.replaceAll("[^0-9//.]", "");
                        assertTrue(USDPHP.matches("[0-9//.]*$"));
                        if(!"".equals(USDPHP)) {
                            map.put("USDPHP", new BigDecimal(USDPHP));
                        }
                    }
                }
                // 정상적으로 MAP에 값이 추가되었으면 NULL이 아니므로 NULL 테스트
                assertNotNull(map);

                // 추가 필요 없음
//                SessionUtil.addAttribute("StartLate", map);
        }catch(Exception e) {
            // 에러확인용
            e.printStackTrace();
        }
    }
}