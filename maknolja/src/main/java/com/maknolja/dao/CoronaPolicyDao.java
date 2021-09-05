package com.maknolja.dao;

import com.maknolja.vo.CoronaPolicy;

import java.util.List;

public interface CoronaPolicyDao {

    List<CoronaPolicy> getAllPolices();

    CoronaPolicy getCoronaPolicyByCode(String code);

}
