package com.maknolja.dao;

import com.maknolja.vo.LocalFlight;
import com.maknolja.vo.LocalFlightCreditInfo;
import com.maknolja.vo.LocalFlightReserve;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LocalFlightDao {
	
	List<LocalFlight> getAllFlights();
	
	List<LocalFlight> getFlightsStartCityNames();
	
	List<LocalFlight> getFlightsArriveCityNames();

	// 날짜 ,출발 선택으로 리스트뽑기													//xml에 들어갈 변수명
	List<LocalFlight> getSearchticketlist(@Param("startAirPortCode")String startAirPortCode, @Param("arriveAirportCode")String arriveAirportCode,
										  @Param("startDate")String startDate, @Param("endDate")String endDate );
												  //startDate
	//가는날 예약 insert
	void startDayCreadit(LocalFlightCreditInfo localFlightCreditInfo);
	//오는날 예약 update
	void comebackCreadit(LocalFlightCreditInfo localFlightCreditInfo);
	//가는날 오는날 선택한 db 값 불러오기
	LocalFlightCreditInfo registerinfo(LocalFlightCreditInfo localFlightCreditInfo);
	//예약페이지의 값 저장
	void reserve(LocalFlightReserve localFlightReserve);
	//결제 완료 
	void payClear(LocalFlightReserve localFlightReserve);

	List<LocalFlightCreditInfo> returnDayCreadit(@Param("rtdayTime")String rtdayTime,@Param("rtdayAirportKor")String rtdayAirportKor,
												 @Param("rtdayAirplaneCode")String rtdayAirplaneCode,@Param("rtdayAirportCode")String rtdayAirportCode,
												 @Param("rtdayEndAirportCode")String rtdayEndAirportCode,@Param("rtdayEndTime")String rtdayEndTime,@Param("rtdayFlightTime")String rtdayFlightTime);
	

}
