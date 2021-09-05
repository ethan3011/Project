package com.maknolja.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class HotelRoomDtoVo {

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
    private int hotelId;
    private int roomId;
    private int roomNo;
    private String roomType;
    private int roomSize;
    private int roomPrice;
    private int roomEventPrice;
    private String roomDescribe;
    private String roomBedType;
    private String roomView;
    private int roomBedCount;
    private String isBreakfast;
    private String isRoomRef;
    private String isShowerBooth;
    private String isRoomTv;
    private String isRoomAircon;
    private String isRoomSmoking;
    private String isRoomWifi;
    private String roomPhoto;
    private int roomMaxGuest;
    private String roomStatus;
    private Date roomCreatedDate;
    private Date roomUpdatedDate;
    private Date roomDeletedDate;
}
