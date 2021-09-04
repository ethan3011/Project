package com.maknolja.service;

import com.maknolja.vo.LocalFlight;
import com.maknolja.vo.LocalFlightCreditInfo;
import com.maknolja.vo.LocalFlightReserve;

import java.util.List;

public interface LocalFlightService {
	
	/**
	 * 모든 운행 정보를 반환한다.
	 * @return 모든운행정보
	 */
	List<LocalFlight> getAllFlights();
	
	/**
	 * 출발하는 도시명 및 항공코드를 반환한다.
	 * @return 출발도시명, 항공코드가 담긴 객체
	 */
	List<LocalFlight> getFlightsStartCityNames();
	
	/**
	 * 도착하는 도시명 및 항공코드를 반환한다.
	 * @return 도착도시명, 항공코드가 담긴 객체
	 */
	List<LocalFlight> getFlightsArriveCityNames();

	/**
	 * 출발 도시,도착도시의 정보반환.
	 * @return
	 */
	List<LocalFlight> getFlightsTicketList(String startCode, String arriveCode, String startDay, String combebackday);

	/**
	 * 가는날 선택시 DB에 정보 입력(INSERT)
	 * @param localFlightCreditInfo
	 */
	void insertstDay(LocalFlightCreditInfo localFlightCreditInfo);
	/**
	 * 오는날 선택시 DB에 정보 입력(UPDATE)
	 * @param localFlightCreditInfo
	 */
	void insertrtDay(LocalFlightCreditInfo localFlightCreditInfo);
	
	/**
	 * 가는날,오는날 저장된 값 정보 불러오기
	 * @param localFlightCreditInfo
	 * @return
	 */
	LocalFlightCreditInfo creditView(LocalFlightCreditInfo localFlightCreditInfo);
	
	/**
	 * 예약페이지의 값을 저장한다
	 * @param localFlightReserve
	 */
	void flightreseve(LocalFlightReserve localFlightReserve);
	
	/**
	 * 결제 완료 
	 * @param localFlightReserve
	 */
	void payClear(LocalFlightReserve localFlightReserve);
}
