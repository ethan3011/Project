package com.maknolja.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class LocalHotel {	

	private String id;
	private String addr1;
	private String addr2;
	private String areaCode;
	private String cat1;
	private String cat2;
	private String cat3;
	private String createdDate;
	private String mapX;
	private String maxY;
	private int hotelStar;
	private String modifiedDate;
	private int readCount;
	private int sigunguCode;
	private String tel;
	private String name;
	private int zipCode;
	private String firstImage;
	private String secondImage;
	private String status;
	private String hasFrontDesk;
	private String hasrestaurant;
	private String hasHotelWifi;
	private String hasSmokeBanArea;
	private String hasCoffeeShop;
}
