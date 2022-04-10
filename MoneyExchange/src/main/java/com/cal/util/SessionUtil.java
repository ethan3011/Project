package com.cal.util;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;

public class SessionUtil {

    private static HttpSession getSession(boolean isExisit) {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        return attributes.getRequest().getSession(isExisit);
    }

    public static void addAttribute(String name, Object value) {
        getSession(true).setAttribute(name, value);
    }

    public static Object getAttribute(String name) {
        return getSession(true).getAttribute(name);
    }

    public static void removeAttribute(String name) {
        getSession(true).removeAttribute(name);
    }

    public static void destroySession() {
        HttpSession session = getSession(false);
        if(session != null) {
            session.invalidate();
        }
    }

}
