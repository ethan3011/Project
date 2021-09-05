package com.maknolja.service;

import com.maknolja.dao.AirLineDao;
import com.maknolja.vo.AirLine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AirLineServiceImpl implements AirLineService{

    @Autowired
    AirLineDao airLineDao;

    @Override
    public List<AirLine> getAirLineInfoByEngName(String engName) {
        List<AirLine> airLines = airLineDao.getAirLineInfoByEngName(engName);
        return airLines;
    }
}
