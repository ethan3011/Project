package com.maknolja.service;

import com.maknolja.vo.HotelReservation;
import com.maknolja.vo.HotelRoomDtoVo;
import com.maknolja.vo.HotelRoomView;
import com.maknolja.vo.LocalHotel;

import java.util.List;

public interface LocalHotelService {
	
	/**
	 * 모든지역의 호텔 정보를 받아서 반환한다.
	 * @return 모든지역호텔 정보가 담긴 객체
	 */
	List<LocalHotel> getAllLocalHotelsList();
	

	/**
	 * 도시명으로 GROUP BY 된 도시의 시 이름을 받아온다. 
	 * @return 도시명들
	 */
	List<LocalHotel> getAllCityNames();

	/**
	 * 호텔 이름으로 검색된 DTO(호텔,방리스트) 객체를 반환한다.
	 * @param name 호텔이름
	 * @return 일치하는 객체
	 */
	HotelRoomDtoVo getSearchHotelOne(String name);

	/**
	 * 호텔 Content번호로 검색한 호텔정보를 반환한다.
	 * @param no 검색할 호텔번호
	 * @return 검색된 객체
	 */
	LocalHotel getLocalHotelByHotelId(int no);

	/**
	 * 지역 이름으로 검색해서 검색된 DTO(호텔, 방리스트) 객체를 반환한다.
	 * @param areaName 지역이름
	 * @return 일치하는 객체
	 */
	List<HotelRoomDtoVo> getSearchByAreaName(String areaName);

	/**
	 * 호텔 리스트에서 호텔을 클릭했을때 예약 가능한 방을 반환한다.
	 * @param hotelNo 호텔번호
	 * @param checkIn 체크인날짜
	 * @param checkOut 체크아웃날짜
	 * @param traveller 숙박인
	 * @return 예약가능한 룸 객체들
	 */
	List<HotelRoomView> getPossibleReserveRooms(int hotelNo, String checkIn, String checkOut, int traveller);

	/**
	 * 호텔 리스트에서 호텔을 클릭했을때 예약 가능한 방을 반환한다.
	 * @param hotelNo 호텔번호
	 * @param checkIn 체크인날짜
	 * @param checkOut 체크아웃날짜
	 * @param traveller 숙박인원
	 * @param totalCount 방 총 갯수
	 * @return 예약가능한 룸 객체들
	 */
	List<HotelRoomView> getRealPossibleReserveRooms(int hotelNo, String checkIn, String checkOut, int traveller, int totalCount);

	/**
	 * 예약 정보를 전달받아서 추가한다.
	 * @param hotelReservation 예약정보
	 */
	void insertHotel(HotelReservation hotelReservation);

	/**
	 * 룸 이름으로 일치하는 방을 반환한다.
	 * @param hotelNo 호텔번호
	 * @param checkIn 체크인
	 * @param checkOut 체크아웃
	 * @param roomType 룸타입
	 * @return 룸 타입의 이름이 일치하는 객체를 리스트로 반환한다.
	 */
	List<HotelRoomView> getRoomsByHotelRoomName (int hotelNo, String checkIn, String checkOut, String roomType);

	/**
	 * 예약번호로 검색해서 일치하는 객체를 반환한다.
	 * @param hotelId 예약번호
	 * @return 일치하는 객체, 없을시 null
	 */
	HotelReservation getInfoByReservationNo(String hotelId);

}
