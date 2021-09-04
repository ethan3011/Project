package com.maknolja.dao;

import com.maknolja.vo.AirLine;

import java.util.List;

public interface AirLineDao {

    List<AirLine> getAirLineInfoByEngName(String engName);
}
