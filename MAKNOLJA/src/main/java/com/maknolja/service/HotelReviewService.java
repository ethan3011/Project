package com.maknolja.service;

import com.maknolja.vo.HotelReview;

import java.util.List;

public interface HotelReviewService {

    void insertScore(HotelReview hotelReview);

    void updateScore(HotelReview hotelReview);

    List<HotelReview> getReviewByHotel (int hotelNo);

}
