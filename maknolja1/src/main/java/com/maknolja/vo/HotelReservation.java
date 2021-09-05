package com.maknolja.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class HotelReservation {
    private int bookingNo;
    private String userId;
    private String checkInDate;
    private String checkOutDate;
    private int roomNo;
    private String firstName;
    private String lastName;
    private int bookingPrice;
    private int adultCount;
    private int childCount;
    private int roomCount;
    private String phone;
    private String createdDate;
    private String canceledDate;
    private String bookingStatus;
    private int hotelNo;
    private String memo;
    private int userPoint;
    private String reservationId;
    private String hotelName;


    
}
