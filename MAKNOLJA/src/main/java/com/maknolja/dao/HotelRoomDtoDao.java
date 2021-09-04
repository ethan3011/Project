package com.maknolja.dao;

import com.maknolja.vo.HotelRoomDtoVo;

import java.util.List;

public interface HotelRoomDtoDao {

    HotelRoomDtoVo getSearchByName(String name);

    List<HotelRoomDtoVo> getSearchByAreaName(String areaName);


}
