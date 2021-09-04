package com.maknolja.dao;

import com.maknolja.vo.LocalHotel;

import java.util.List;

public interface LocalHotelDao {

	List<LocalHotel> getAllLocalHotelsList();

	List<LocalHotel> getCityNames();

	LocalHotel getLocalHotelByHotelId(int no);
	
	

}
