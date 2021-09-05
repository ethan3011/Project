package com.maknolja.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class HotelRoomView {
    private String roomId;
    private String status;
    private String day;
    private String type;
    private int maxGuest;
    private int hotelId;
    private int roomSize;
    private String describe;
    private String bedType;
    private String roomView;
    private int bedCount;
    private int price;
    private int eventPrice;
    private String breakfast;
    private String roomRef;
    private String roomBooth;
    private String roomTv;
    private String roomAircon;
    private String roomSmoking;
    private String roomWifi;
    private String photo;
    private int totalCount;
}
