package com.maknolja.service;

import com.maknolja.dao.CoronaPolicyDao;
import com.maknolja.vo.CoronaPolicy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountryServiceImpl implements CountryService{

    @Autowired
    CoronaPolicyDao coronaPolicyDao;

    @Override
    public List<CoronaPolicy> getAllPolices() {
        List<CoronaPolicy> policies = coronaPolicyDao.getAllPolices();
        return policies;
    }

    @Override
    public CoronaPolicy getCoronaPolicyByCode(String code) {
        CoronaPolicy item = coronaPolicyDao.getCoronaPolicyByCode(code);
        return item;
    }
}
