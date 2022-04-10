package com.cal.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class ExchangeUtil {

    private Logger logger = LoggerFactory.getLogger(ExchangeUtil.class);

    public String connectAPI(URL connectUrl) {
        StringBuilder sb = new StringBuilder();
        int responseCode = 0;
        HttpURLConnection conn = null;

        try {
            conn = (HttpURLConnection) connectUrl.openConnection();
            conn.setDoOutput(true);
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setRequestProperty("Accept-Charset", "UTF-8");
            conn.setConnectTimeout(10000);
            conn.setReadTimeout(10000);

            BufferedReader br;
            responseCode = conn.getResponseCode();

            if (responseCode == 200) {
                br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
                String line = "";
                while ((line = br.readLine()) != null) {
                    sb.append(line);
                }
            }
            if (responseCode == 101) {
                sb.append("FAIL : 존재하지 않거나 잘못된 엑세스 키가 입력되었습니다.");
            } else if (responseCode == 103) {
                sb.append("FAIL : 사용자가 존재하지 않는 API 기능을 요청하였습니다.");
            } else if (responseCode == 104) {
                sb.append("FAIL : 월간 API 허가 사용량에 도달 또는 초과하였습니다.");
            } else if (responseCode == 105) {
                sb.append("FAIL : 현재 이용하는 플랜에서는 사용할 수 없는 기능입니다.");
            } else if (responseCode == 106) {
                sb.append("FAIL : 쿼리가 입려되었습니다. 쿼리는 처리 되지 않습니다.");
            } else if (responseCode == 102) {
                sb.append("FAIL : API 계정이 활성화 되어 있지 않습니다. 고객센터로 문의 해 주십시오.");
            } else if (responseCode == 201) {
                sb.append("FAIL : 잘못된 통화(화폐단위)를 요청하였습니다.");
            } else if (responseCode == 202) {
                sb.append("FAIL : 하나 이상의 잘못된 통화(화폐단위)를 입력하였습니다.");
            } else if (responseCode == 301) {
                sb.append("FAIL : 날짜가 지정되지 않았습니다.");
            } else if (responseCode == 302) {
                sb.append("FAIL : 잘못된 날짜를 입력하였습니다.");
            } else if (responseCode == 401) {
                sb.append("FAIL : 잘못된 form 속성을 이용하였습니다.");
            } else if (responseCode == 402) {
                sb.append("FAIL : 잘못된 to 속성을 이용하였습니다.");
            } else if (responseCode == 403) {
                sb.append("FAIL : 입력한 금액의 속성이 없거나 잘못되었습니다.");
            } else if (responseCode == 501) {
                sb.append("FAIL : 정확한 시간을 지정하지 않았습니다.");
            } else if (responseCode == 502) {
                sb.append("FAIL : 잘못된 시작 날짜를 입력하였습니다.");
            } else if (responseCode == 503) {
                sb.append("FAIL : 잘못된 종료 날짜를 입력하였습니다.");
            } else if (responseCode == 504) {
                sb.append("FAIL : 잘못된 시간을 입력하였습니다.");
            } else if (responseCode == 505) {
                sb.append("FAIL : 최대 지정 기간인 365일을 초과하였습니다.");
            }
        } catch (Exception e) {
            logger.info(responseCode + " 번의 에러가 발생하였습니다.", e.getMessage());
        } finally {
            conn.disconnect();
        }
        return sb.toString();
    }
}
