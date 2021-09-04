package com.maknolja.web.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;


/**
 * HttpSession에 로그인된 사용자 정보를 요청핸들러의 매개변수로 전달받기 위해어 생성되었다.
 * ArgumentResolver에서 사용된다.
 * @author Ethan.jung
 *
 */
@Target(ElementType.ANNOTATION_TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface LoginUser {

}
