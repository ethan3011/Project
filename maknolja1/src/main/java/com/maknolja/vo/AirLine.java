package com.maknolja.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class AirLine {
    private String airLineKorName;
    private String airLineEngName;
    private String ITAT;
    private String ICAO;
    private String state;
    private String model;
    private String country;
    private String area;
    private String image;
    private String link;
}
