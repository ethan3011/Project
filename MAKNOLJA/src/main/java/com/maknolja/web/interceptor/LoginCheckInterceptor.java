package com.maknolja.web.interceptor;

import com.maknolja.web.annotation.LoginUser;
import com.maknolja.web.utils.SessionUtils;
import org.springframework.core.MethodParameter;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * HandlerInterceptor를 사용하여 preHandle로 메소드가 실행하기 전에 먼저 LoginUser라는 메소드어노테이션이 존재하는지 확인한다.
 * 존재하지 않을 경우 maknolja/login?fail=deny 로 redirect 된다.
 * @author Ethan.jung
 *
 */
public class LoginCheckInterceptor implements HandlerInterceptor{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HandlerMethod handlerMethod = (HandlerMethod) handler;
		MethodParameter[] methodParamets = handlerMethod.getMethodParameters();
		
		boolean hasLoginUserAnnotation = false;
		
		for(MethodParameter parameter : methodParamets) {
			if(parameter.getMethodAnnotation(LoginUser.class) != null) {
				hasLoginUserAnnotation = true;
				break;
			}
		}
		
		if(hasLoginUserAnnotation && SessionUtils.getAttribute("LOGINED_USER") == null) {
			response.sendRedirect("maknolja/login?fail=deny");
		}
		
		return true;
	}

}
