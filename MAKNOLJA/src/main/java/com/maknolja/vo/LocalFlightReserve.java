package com.maknolja.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LocalFlightReserve {

	private String stdayTime;		 //출발시간
	private String stdayAirportKor;	 //출발공항이름
	private String stdayAirplaneCode; //출발 항공편
	private String stdayAirportCode; //출발 공항코드
	private String stdayEndAirportCode;// 도착 공항코드
	private String stdayEndTime;		//도착시간
	private String stdayAirPrice;		//출발 비행기가격
	private String rtdayTime;			//도착시간
	private String rtdayAirportKor;		//도착공항이름
	private String rtdayAirPlaneCode;	//돌아올때 항공편
	private String rtdayAirportCode;	//돌아올때 공항
	private String rtdayEndAirportCode;	//도착 공항
	private String rtdayEndTime;		//도착시간
	private String rtdayReturnAirPrice;	//돌아올때 비행기가격
	private String firstName;			//예약페이지 성 
	private String lastName;			//예약페이지 이름
	private String gender;				//예약페이지 성별
	private String dob; 				//생년월일 
	private String na;					//국적
	private String passPort;				//신분증 / 여권 중 신분증해당
	private String passNo;				//신분증번호(주빈번호)
	private String ifName;				//상세정보 이름
	private String ifEmail;				//상세정보 이메일
	private String ifPhone; 			//상세정보 폰번호(핸드폰번호)
	private String stdayDate;			//가는날짜
	private String rtdayDate;			//돌아오는날짜
	private String userCardNo;
	private String userId;			//유저 아이디
	private String payStatus;
	
}
