package com.maknolja.vo;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class CoronaPolicy {

    private String countryName;
    private String countryCode;
    private String textContent;
    private String updateDate;
    private String textTitle;
}
