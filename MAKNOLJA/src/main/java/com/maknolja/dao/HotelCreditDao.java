package com.maknolja.dao;

import com.maknolja.vo.HotelReservation;

public interface HotelCreditDao {

    void insertHotel(HotelReservation hotelReservation);

    HotelReservation getInfoByReservationNo (String reservationId);

}
