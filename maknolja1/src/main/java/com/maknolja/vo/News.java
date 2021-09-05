package com.maknolja.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.sql.Date;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class News {

    private int newsNo;
    private String writer;
    private String title;
    private String content;
    private String mainImage;
    private String subImage;
    private Date createdDate;
    private Date updateDate;
    private Date deletedDate;
    private String status;
}
