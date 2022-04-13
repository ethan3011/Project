package com.cal.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

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

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration
        (locations = {
                "file:src/main/webapp/WEB-INF/spring/context-root.xml"    ,
                "file:src/main/webapp/WEB-INF/spring/context-web.xml"
        })
public class MainControllerTest {
    // 컨트롤러 사용을 위한 DI
    @Autowired
    MainController mainController;
    // 가상 MVC 생성
    protected MockMvc mockMvc;
    protected MockHttpSession session;
    protected MockHttpServletRequest request;

    @Before
    public void before() {

        // 세션 생성
        session = new MockHttpSession();

        // 인터셉터 부분 추가
        ExchangeUtil exchangeUtil = new ExchangeUtil();

        try{
            String sb = "http://apilayer.net/api/live?access_key=14967058464064fbf87be50198c364ce&currencies=KRW,JPY,PHP&source=USD";

            String result = exchangeUtil.connectAPI(new URL(sb));

            if(result.contains("FAIL")) {

                session.setAttribute("FailMessage", result);

            }else {
                Map<String, BigDecimal> map = new HashMap<>();

                String[] strs = result.split(",");

                for (String str : strs) {
                    if (str != null) {
                        if (str.contains("USDKRW")) {
                            String USDKRW = str.replaceAll("[^0-9//.]", "");
                            if (!"".equals(USDKRW)) {
                                map.put("USDKRW", new BigDecimal(USDKRW));
                            }
                        }

                        if (str.contains("USDJPY")) {
                            String USDJPY = str.replaceAll("[^0-9//.]", "");
                            if (!"".equals(USDJPY)) {
                                map.put("USDJPY", new BigDecimal(USDJPY));
                            }
                        }

                        if (str.contains("USDPHP")) {
                            String USDPHP = str.replaceAll("[^0-9//.]", "");
                            if (!"".equals(USDPHP)) {
                                map.put("USDPHP", new BigDecimal(USDPHP));
                            }
                        }
                    }
                    session.setAttribute("StartLate", map);
                }
            }
        }catch(Exception e) {
            e.printStackTrace();
        }

        request = new MockHttpServletRequest();

        request.setSession(session);

        // ContextHolder에 Request 설정

        RequestContextHolder.setRequestAttributes(new ServletRequestAttributes(request));
        // 가상 MVC Builder로 MainCotroller를 Build 한다.
        mockMvc = MockMvcBuilders.standaloneSetup(mainController).build();
    }

    @Test
    public void main() {
        try{
            // 인터셉터를 Before에서 설정 후 정상적으로 값을 가져오는지 테스트
            mockMvc.perform(MockMvcRequestBuilders.get("/main").session(session)).andExpect(status().isOk()).andDo(print());

            // 인터셉터 없이 테스트(isSuccess 가 false 테스트)
            mockMvc.perform(MockMvcRequestBuilders.get("/main")).andExpect(status().isOk()).andDo(print());
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
}