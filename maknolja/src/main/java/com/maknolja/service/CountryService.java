package com.maknolja.service;

import com.maknolja.vo.CoronaPolicy;

import java.util.List;

public interface CountryService {

    /**
     * 코로나로 인한 각국 안내에 대한 설명이 담긴 객체를 반환한다.
     * @return
     */
    List<CoronaPolicy> getAllPolices();

    /**
     * 선택된 국가의 코로나 정책이 담긴 객체를 반환한다.
     */
    CoronaPolicy getCoronaPolicyByCode(String code);
}
