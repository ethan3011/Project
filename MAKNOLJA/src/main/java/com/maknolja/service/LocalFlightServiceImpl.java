package com.maknolja.service;

import com.maknolja.dao.LocalFlightDao;
import com.maknolja.vo.LocalFlight;
import com.maknolja.vo.LocalFlightCreditInfo;
import com.maknolja.vo.LocalFlightReserve;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LocalFlightServiceImpl implements LocalFlightService{
	
	@Autowired
	private LocalFlightDao localFlightDao;
	
	
	@Override
	public List<LocalFlight> getAllFlights() {
		List<LocalFlight> flights = localFlightDao.getAllFlights();
		
		return flights;
	}
	
	@Override
	public List<LocalFlight> getFlightsStartCityNames() {
		List<LocalFlight> names = localFlightDao.getFlightsStartCityNames();
		return names;
	}
	
	@Override
	public List<LocalFlight> getFlightsArriveCityNames() {
		List<LocalFlight> names = localFlightDao.getFlightsArriveCityNames();
		return names;
	}


	@Override
	public List<LocalFlight> getFlightsTicketList(String startCode, String arriveCode, String startday, String comebackday) {
		List<LocalFlight> list = localFlightDao.getSearchticketlist(startCode, arriveCode,startday,comebackday);
		return list;
	}

	@Override
	public void insertstDay(LocalFlightCreditInfo localFlightCreditInfo) {
		localFlightDao.startDayCreadit(localFlightCreditInfo);

	}

	@Override
	public void insertrtDay(LocalFlightCreditInfo localFlightCreditInfo) {
		localFlightDao.comebackCreadit(localFlightCreditInfo);
	}

	@Override
	public LocalFlightCreditInfo creditView(LocalFlightCreditInfo localFlightCreditInfo) {
		LocalFlightCreditInfo regi = localFlightDao.registerinfo(localFlightCreditInfo);
		
		return regi;
	}
	
	@Override
	public void flightreseve(LocalFlightReserve localFlightReserve) {
			localFlightDao.reserve(localFlightReserve);
		
	}
	
	@Override
	public void payClear(LocalFlightReserve localFlightReserve) {
		localFlightDao.payClear(localFlightReserve);
	}

}
