package com.maknolja.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class User {

	private String id;
	private String password;
	private String status;
	private String korLastName;
	private String korFirstName;
	private String engLastName;
	private String engFirstName;
	private String gender;
	private String address;
	private String phone;
	private String cardStatus;
	private int point;
	private String passportStatus;
	private String govIdStatus;
	private Date createdDate;
	private Date updatedDate;
	private Date deletedDate;
	private String country;
	private String birth;

	
}
