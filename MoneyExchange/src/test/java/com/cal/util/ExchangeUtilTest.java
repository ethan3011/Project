package com.cal.util;

import io.restassured.RestAssured;
import org.junit.Test;

public class ExchangeUtilTest {

    @Test
    public void connectAPI() {
        // connectAPI 정상연결(200) 테스트
        RestAssured.given().when().get("/calculate").then().statusCode(200);

    }
}