package com.maknolja.service;

import com.maknolja.dao.HotelCreditDao;
import com.maknolja.dao.HotelRoomDtoDao;
import com.maknolja.dao.HotelRoomViewDao;
import com.maknolja.dao.LocalHotelDao;
import com.maknolja.vo.HotelReservation;
import com.maknolja.vo.HotelRoomDtoVo;
import com.maknolja.vo.HotelRoomView;
import com.maknolja.vo.LocalHotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LocalHotelServiceImpl implements LocalHotelService {
	
	@Autowired
	LocalHotelDao localHotelDao;

	@Autowired
	HotelRoomDtoDao hotelRoomDtoDao;

	@Autowired
	HotelRoomViewDao hotelRoomViewDao;

	@Autowired
	HotelCreditDao hotelCreditDao;



	@Override
	public List<LocalHotel> getAllLocalHotelsList() {
		
		List<LocalHotel> hotelList = localHotelDao.getAllLocalHotelsList();
		return hotelList;
	}

	@Override
	public List<LocalHotel> getAllCityNames() {
		List<LocalHotel> names = localHotelDao.getCityNames();
		return names;
	}

	@Override
	public HotelRoomDtoVo getSearchHotelOne(String name) {
		HotelRoomDtoVo hotelRoom = hotelRoomDtoDao.getSearchByName(name);
		return hotelRoom;
	}

	@Override
	public LocalHotel getLocalHotelByHotelId(int no) {
		LocalHotel hotel = localHotelDao.getLocalHotelByHotelId(no);
		return hotel;
	}

	@Override
	public List<HotelRoomDtoVo> getSearchByAreaName(String areaName) {
		List<HotelRoomDtoVo> hotelRooms = hotelRoomDtoDao.getSearchByAreaName(areaName);
		return hotelRooms;
	}

	@Override
	public List<HotelRoomView> getPossibleReserveRooms(int hotelNo, String checkIn, String checkOut, int traveller) {
		List<HotelRoomView> hotels = hotelRoomViewDao.getPossibleReserveRooms(hotelNo, checkIn, checkOut, traveller);
		return hotels;
	}

	@Override
	public List<HotelRoomView> getRealPossibleReserveRooms(int hotelNo, String checkIn, String checkOut, int traveller, int totalCount) {
		List<HotelRoomView> hotels = hotelRoomViewDao.getRealPossibleReserveRooms(hotelNo, checkIn, checkOut, traveller, totalCount);
		return hotels;
	}


	@Override
	public void insertHotel(HotelReservation hotelReservation) {
		hotelCreditDao.insertHotel(hotelReservation);
	}

	@Override
	public List<HotelRoomView> getRoomsByHotelRoomName(int hotelNo, String checkIn, String checkOut, String roomType) {
		List<HotelRoomView> hotels = hotelRoomViewDao.getRoomsByHotelRoomName(hotelNo,checkIn,checkOut,roomType);
		return hotels;
	}

	@Override
	public HotelReservation getInfoByReservationNo(String reservationId) {
		HotelReservation hotelReservation = hotelCreditDao.getInfoByReservationNo(reservationId);
		return hotelReservation;
	}

}
