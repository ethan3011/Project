package com.maknolja.dao;

import com.maknolja.vo.HotelRoomView;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HotelRoomViewDao {

    List<HotelRoomView> getPossibleReserveRooms(@Param("hotelNo") int hotelNo,
                                                @Param("checkIn")String checkIn,
                                                @Param("checkOut")String checkOut,
                                                @Param("traveller")int traveller);

    List<HotelRoomView> getRealPossibleReserveRooms(@Param("hotelNo") int hotelNo,
                                                    @Param("checkIn")String checkIn,
                                                    @Param("checkOut")String checkOut,
                                                    @Param("traveller")int traveller,
                                                    @Param("totalCount") int totalCount);

    List<HotelRoomView> getRoomsByHotelRoomName(@Param("hotelNo") int hotelNo,
                                                @Param("checkIn")String checkIn,
                                                @Param("checkOut")String checkOut,
                                                @Param("roomType")String roomType
    );
}