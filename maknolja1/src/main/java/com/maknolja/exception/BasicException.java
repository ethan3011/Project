package com.maknolja.exception;

/**
 * 에러가 발생하면 상속받아서 사용될 메인 Exception 클래스.
 * @author Ethan.jung
 *
 */
public class BasicException extends RuntimeException{
	
	private static final long serialVersionUID = 4019558755912096059L;
	
	private String title;

	public BasicException(String title, String message) {
		super(message);
		this.title = title;
	}
	
	public String getTitle() {
		return title;
	}

}
