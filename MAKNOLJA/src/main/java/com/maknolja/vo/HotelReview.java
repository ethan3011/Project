package com.maknolja.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class HotelReview {
    private int reviewNo;
    private Date createdDate;
    private Date updatedDate;
    private Date deletedDate;
    private String status;
    private String content;
    private String userId;
    private int hotelRegisterNo;
    private int cleanScore;
    private int facilityScore;
    private int locationScore;
    private int serviceScore;
}
