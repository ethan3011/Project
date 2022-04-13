package com.cal.util;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;

/**
 * 세션의 데이터를 추가, 삭제, 확인 등 할 때 사용되는 유틸
 */
public class SessionUtil {

    /**
     * 현재 세션이 사용중인지 확인할 때 사용된다.
     * @param isExisit 사용 여부
     * @return 현재 세션
     */
    private static HttpSession getSession(boolean isExisit) {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        return attributes.getRequest().getSession(isExisit);
    }

    /**
     * 세션에 특정 객체를 추가 할 때 사용
     * @param name 세션에 추가될 이름
     * @param value 세션에 추가될 값
     */
    public static void addAttribute(String name, Object value) {
        getSession(true).setAttribute(name, value);
    }

    /**
     * 세션에 저장된 특정 객체를 가져올 때 사용
     * @param name 가져올 대상의 이름
     * @return 가져온 객체
     */
    public static Object getAttribute(String name) {
        return getSession(true).getAttribute(name);
    }

    /**
     * 세션에 저장된 특정 값을 삭제할 때 사용된다.
     * @param name 세션에 저장된 이름
     */
    public static void removeAttribute(String name) {
        getSession(true).removeAttribute(name);
    }

    /**
     * 세션에 들어있는 모든 데이터를 삭제할 때 사용된다.
     * 실제로 연결이 끊기지는 않으며 데이터만 삭제되고 다시 openConn을 사용하여 재 이용 할 수 있다.
     */
    public static void destroySession() {
        HttpSession session = getSession(false);
        if(session != null) {
            session.invalidate();
        }
    }

}
