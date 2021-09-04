package com.maknolja.service;

import com.maknolja.vo.AirLine;

import java.util.List;

public interface AirLineService {

    /**
     * 항공사의 이름의 알파벳이 시작하는 값으로 항공사를 조회해서 반환한다.
     * @param engName 알파벳
     * @return 검색된 항공사 정보들
     */
    List<AirLine> getAirLineInfoByEngName(String engName);

}
