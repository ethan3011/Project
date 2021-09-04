package com.maknolja.web.utils;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;
/**
 * HttpSession에 관련된 유틸리티
 * @author Ethan.jung
 *
 */
public class SessionUtils {
	
	/**
	 * 지금 서버로 요청을 보낸 세션의 정보를 반환한다. 
	 * @return 요청한 세션정보
	 */
	private static HttpSession getSession(boolean isTrue) {
		ServletRequestAttributes attribute = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
		return attribute.getRequest().getSession(isTrue); 
	}
	
	/**
	 * HttpSession 세션에 속성을 추가한다.
	 * @param name 속성명
	 * @param value 속성값 || 객체
	 */
	public static void addAttribute(String name, Object value) {
		getSession(true).setAttribute(name, value);
	}
	
	/**
	 * HttpSession에 있는 속성을 String 값으로 검색하여 일치하는 속성을 반환한다.
	 * @param name 검색할 속성명
	 * @return 속성값 || 객체
	 */
	public static Object getAttribute(String name) {
		return getSession(true).getAttribute(name);
	}
	
	/**
	 * HttpSession에 있는 속성을 String 값으로 검색하여 일치하는 속성을 삭제한다.
	 * @param name 검색할 속성명
	 */
	public static void removeAttribute(String name) {
		getSession(true).removeAttribute(name);
	}
	
	/**
	 * 현재 있는 HttpSession을 폐기한다.
	 */
	public static void destroySession() {
		HttpSession session = getSession(false);
		if(session != null) {
			session.invalidate();
		}
	}

}
