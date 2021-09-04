package com.maknolja.web.argumentResolver;

import com.maknolja.web.annotation.LoginUser;
import com.maknolja.web.utils.SessionUtils;
import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import java.util.Objects;

/**
 * 사용자정의 Annotation을 전달받았을 때 값이 Null이 아닐 경우, 속성명이 LOGINED_USER로 저장된 속성이 반환된다.
 * @author Ethan.jung
 *
 */
public class LoginUserArgumentResolver implements HandlerMethodArgumentResolver{
	
	@Override
	public boolean supportsParameter(MethodParameter parameter) {
		return Objects.isNull(parameter.getParameterAnnotation(LoginUser.class));
	}
	
	@Override
	public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer,
			NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
		
		return SessionUtils.getAttribute("LOGINED_USER");
	}
	


}
