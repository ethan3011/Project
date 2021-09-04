package com.maknolja.vo;



import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.sql.Date;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class LocalFlight {
	private String engName;
	private String korName;
	private String startCityName;
	private String startDate;
	private String startTime;
	private String startAirPortCode;
	private String arriveCityName;
	private String endDate;
	private String arriveTime;
	private String arriveAirportCode;
	private String airplanceNo;
	private String flightType;
	private int availableSeat;
	private int reserveSeat;
	private int canceldSeat;
	private Date createdDate;
	private Date updatedDate;
	private Date deletedDate;
	private String flyStatus;
	private int firstSeat;
	private int business;
	private int economy;
	private int firstSeatPrice;
	private int businessPrice;
	private int economyPrice;
}
