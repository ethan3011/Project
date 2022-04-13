package com.cal.util;

import org.junit.Before;
import org.junit.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import static org.junit.Assert.*;

public class SessionUtilTest {
    protected MockHttpSession session;
    protected MockHttpServletRequest request;

    // 세션 상태 확인 테스트를 위한 기본 조건
    @Before
    public void Before() {
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
    public void addAttribute() {
        // 새로운 변수 생성
        String ThisIsTest = "ThisIsTest2";

        // Session에 새로운 값 삽입
        SessionUtil.addAttribute("ThisIsTest2", "ThisIsTest2");

        // 현재 세션에서 값 가져오기
        String testVal = (String)SessionUtil.getAttribute("ThisIsTest2");

        // 세션의 값과 String 변수의 값이 같은지 테스트
        assertSame(testVal,ThisIsTest);
    }

    @Test
    public void getAttribute() {
        // 비교 변수 생성
        String ThisIsTest = "ThisIsTest";

        // 세션에 들어있는 값 가져오기
        String testVal = (String)SessionUtil.getAttribute("ThisIsTest");

        // 이 둘이 같은지 테스트
        assertSame(ThisIsTest,testVal);
    }

    @Test
    public void removeAttribute() {
        // Before에서 생성된 세션 값 삭제하기
        SessionUtil.removeAttribute("ThisIsTest");

        // 삭제 후 비었는지 테스트
        assertNull(SessionUtil.getAttribute("ThisIsTest"));
    }

    @Test
    public void destroySession() {
        // 세션 초기화
        SessionUtil.destroySession();

        // Before에서 들어간 세션값이 삭제되었는지 테스트
        assertNull(SessionUtil.getAttribute("ThisIsTest"));
    }
}