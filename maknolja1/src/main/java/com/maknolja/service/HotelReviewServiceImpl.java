package com.maknolja.service;

import com.maknolja.dao.HotelReviewDao;
import com.maknolja.vo.HotelReview;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HotelReviewServiceImpl implements HotelReviewService{

    @Autowired
    HotelReviewDao hotelReviewDao;

    @Override
    public void insertScore(HotelReview hotelReview) {
        hotelReviewDao.insertScore(hotelReview);
    }

    @Override
    public void updateScore(HotelReview hotelReview) {
        hotelReviewDao.updateScore(hotelReview);
    }

    @Override
    public List<HotelReview> getReviewByHotel(int hotelNo) {
        List<HotelReview> reviews = hotelReviewDao.getReviewByHotel(hotelNo);
        return reviews;
    }
}
