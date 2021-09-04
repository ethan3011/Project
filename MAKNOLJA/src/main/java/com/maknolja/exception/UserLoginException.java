package com.maknolja.exception;

public class UserLoginException extends BasicException{
	
	private static final long serialVersionUID = -7878501308975705708L;

	public UserLoginException(String title, String message) {
			super(title, message);
	}

}
