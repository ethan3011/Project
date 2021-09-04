package com.maknolja.dao;

import com.maknolja.vo.HotelReview;

import java.util.List;

public interface HotelReviewDao {

    void insertScore(HotelReview hotelReview);

    void updateScore(HotelReview hotelReview);

    List<HotelReview> getReviewByHotel(int hotelRegisterNo);
}
