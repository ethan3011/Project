package com.cal.controller;

import com.cal.util.ExchangeUtil;
import com.cal.util.SessionUtil;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.math.BigDecimal;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration
        (locations = {
                "file:src/main/webapp/WEB-INF/spring/context-root.xml"    ,
                "file:src/main/webapp/WEB-INF/spring/context-web.xml"
        })
public class CalculateControllerTest {

    @Autowired
    CalculateController calculateController;

    protected MockMvc mockMvc;
    protected MockHttpSession session;
    protected MockHttpServletRequest request;

    @Before
    public void before() {
        try {
            ExchangeUtil exchangeUtil = new ExchangeUtil();

            // 세션 생성
            session = new MockHttpSession();

            // 테스트 주소
            String sb = "http://apilayer.net/api/live?access_key=74ef438846e952a456b7a41df222b3b2&currencies=KRW,JPY,PHP&source=USD";

            // 연결 테스트
            String result = exchangeUtil.connectAPI(new URL(sb));

            // 정상적으로 연결됨 테스트
            assertNotNull(result);

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
            session.setAttribute("StartLate", map);

            request = new MockHttpServletRequest();

            request.setSession(session);

            // ContextHolder에 Request 설정

            RequestContextHolder.setRequestAttributes(new ServletRequestAttributes(request));

            mockMvc = MockMvcBuilders.standaloneSetup(calculateController).build();

        }catch(Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void getExchange() {
        try{
            // 파라미터 없이 그냥 전송 테스트(스크립트 실행)
            mockMvc.perform(MockMvcRequestBuilders.get("/calculate")).andExpect(status().isOk()).andDo(print());

            // 파라미터 넣고 정상 작동 테스트(현재 late 와 세션에 저장된 lastLate)
            mockMvc.perform(MockMvcRequestBuilders.get("/calculate")
                    .session(session).param("currency", "KRW").param("amount", "500")
            ).andExpect(status().isOk()).andDo(print());

        }catch(Exception e) {
            e.printStackTrace();
        }

    }
}