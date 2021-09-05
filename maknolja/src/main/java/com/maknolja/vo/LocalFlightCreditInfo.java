package com.maknolja.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class LocalFlightCreditInfo {	//예약페이지로 넘기기 위한 vo

	private String userId;					//유저아이디
	private String startDate;				//가는날짜 조인용
	private String stdaySeat;				//갈때타는 좌석
	private String stdayTime;				//출발시간
	private String stdayAirportKor;			//출발공항 한국이름
	private String stdayAirplaneCode;		//비행기편명
	private String stdayAirportEng;			//출발공항 영어이름
	private String stdayAirportCode;		//출발공항 코드!!!
	private String stdayEndAirportCode;		//도착공항 코드!!!
	private String stdayEndTime;			//도착시간 
	private String stdayFlightTime;			//운행 시간 (1시간10분)등등
	private String stdayAirPrice;			//갈때 비행기 비용
	private String rtdaySeat;				//돌아올때 타는 좌석
	private String rtdayTime;				//출발시간
	private String rtdayAirportKor;			//출발공항 한국이름
	private String rtdayAirplaneCode;		//비행기편명
	private String rtdayAirportEng;			//출발공항 영어이름
	private String rtdayAirportCode;		//출발공항 코드!!!
	private String rtdayEndAirportCode;		//도착공항 코드!!!
	private String rtdayEndTime;			//도착시간 
	private String rtdayFlightTime;			//운행 시간 (1시간10분)등등
	private String rtdayAirPrice;			//돌아올때 비행기 비용
	private String stdayDate;				//출발날짜
	private String rtdayDate;				//


	
	
	
}
