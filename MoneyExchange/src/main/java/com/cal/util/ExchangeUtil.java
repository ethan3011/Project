package com.cal.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class ExchangeUtil {

    @Value("${common.errorMsg}")
    private String commonErrorMsg;

    private static final Logger logger = LoggerFactory.getLogger(ExchangeUtil.class);

    /**
     * API 연결 시도 메소드
     * @param connectUrl URL 타입의 URL 주소
     * @return 연결이후 출력 메세지, 성공(200)시 데이터가, 실패 시 에러 코드에 대한 메세지가 담긴다.
     */
    public String connectAPI(URL connectUrl) {

        // 출력 데이터 저장을 위한 변수
        StringBuilder sb = new StringBuilder();

        // 응답 코드 초기화
        int responseCode = 0;

        // 커넥션 초기화
        HttpURLConnection conn = null;

        try {
            // 연결 및 데이터 타입 & 시간 설정
            conn = (HttpURLConnection) connectUrl.openConnection();
            conn.setDoOutput(true);
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setRequestProperty("Accept-Charset", "UTF-8");
            conn.setConnectTimeout(10000);
            conn.setReadTimeout(10000);

            // 한번에 데이터를 담아 사용하기 위한 Buffer 생성
            BufferedReader br;
            // 커넥션 연결
            responseCode = conn.getResponseCode();

            // 성공 시
            if (responseCode == 200) {
                // 커넥션에 있는 데이터를 읽어
                br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
                String line;
                // 데이터가 비어있을 때 까지 반복하여 데이터 저장
                while ((line = br.readLine()) != null) {
                    sb.append(line);
                }
            }else {
                // 200 아닐 경우 log와 StringBuilder에 에러 메세지 저장
                addErrorMsg(sb,responseCode);
            }
            // 오류 발생시 에러 log와 기본 commonErrorMsg 저장
        } catch (Exception e) {
            logger.info(responseCode + " 번의 에러가 발생하였습니다.", e.getMessage());
            sb.append(commonErrorMsg);
        } finally {
            // 연결이 아직 되어있다면 종료
            if(conn != null) {
                conn.disconnect();
            }
        }
        // 저장된 값 봔환
        return sb.toString();
    }

    /**
     * 에러 메세지를 저장할 때 사용 되는 메소드, 사용자에게 보여지는 안되는 에러 메세지는 commonErrorMsg 를 사용한다.
     * @param sb 에러 메세지를 저장할 변수
     * @param responseCode 응답 코드
     * @reference https://currencylayer.com/documentation
     */
    public void addErrorMsg(StringBuilder sb, int responseCode) {
        if (responseCode == 101) {
            logger.info("FAIL : 존재하지 않거나 잘못된 엑세스 키가 입력되었습니다.");
            sb.append(commonErrorMsg);
        } else if (responseCode == 103) {
            logger.info("FAIL : 사용자가 존재하지 않는 API 기능을 요청하였습니다.");
            sb.append(commonErrorMsg);
        } else if (responseCode == 104) {
            logger.info("FAIL : 월간 API 허가 사용량에 도달 또는 초과하였습니다.");
            sb.append(commonErrorMsg);
        } else if (responseCode == 105) {
            logger.info("FAIL : 현재 이용하는 플랜에서는 사용할 수 없는 기능입니다.");
            sb.append(commonErrorMsg);
        } else if (responseCode == 106) {
            logger.info("FAIL : 쿼리가 입력되었습니다. 쿼리는 처리 불가능합니다.");
            sb.append(commonErrorMsg);
        } else if (responseCode == 102) {
            logger.info("FAIL : API 계정이 활성화 되어 있지 않습니다.");
            sb.append(commonErrorMsg);
        } else if (responseCode == 201) {
            logger.info("FAIL : 잘못된 통화(화폐단위)를 요청하였습니다.");
            sb.append("FAIL : 잘못된 통화(화폐단위)를 요청하였습니다.");
        } else if (responseCode == 202) {
            logger.info("FAIL : 하나 이상의 잘못된 통화(화폐단위)를 입력하였습니다.");
            sb.append("FAIL : 하나 이상의 잘못된 통화(화폐단위)를 입력하였습니다.");
        } else if (responseCode == 301) {
            logger.info("FAIL : 정확한 날짜가 지정되지 않았습니다.");
            sb.append("FAIL : 정확한 날짜가 지정되지 않았습니다.");
        } else if (responseCode == 302) {
            logger.info("FAIL : 잘못된 날짜를 입력하였습니다.");
            sb.append("FAIL : 잘못된 날짜를 입력하였습니다.");
        } else if (responseCode == 401) {
            logger.info("FAIL : 잘못된 시작 날짜를 선택하였습니다.");
            sb.append("FAIL : 잘못된 시작 날짜를 선택하였습니다.");
        } else if (responseCode == 402) {
            logger.info("FAIL : 잘못된 종료 날짜를 선택하였습니다.");
            sb.append("FAIL : 잘못된 종료 날짜를 선택하였습니다.");
        } else if (responseCode == 403) {
            logger.info("FAIL : 입력한 금액의 속성이 없거나 잘못되었습니다.");
            sb.append("FAIL : 입력한 금액의 속성이 없거나 잘못되었습니다.");
        } else if (responseCode == 404) {
            logger.info("FAIL : 잘못된 페이지를 요청하였습니다.");
            sb.append("FAIL : 잘못된 페이지를 요청하였습니다.");
        } else if (responseCode == 501) {
            logger.info("FAIL : 정확한 시간을 지정하지 않았습니다.");
            logger.info("FAIL : 정확한 시간을 지정하지 않았습니다.");
        } else if (responseCode == 502) {
            logger.info("FAIL : 잘못된 시작 날짜를 입력하였습니다.");
            logger.info("FAIL : 잘못된 시작 날짜를 입력하였습니다.");
        } else if (responseCode == 503) {
            logger.info("FAIL : 잘못된 종료 날짜를 입력하였습니다.");
            logger.info("FAIL : 잘못된 종료 날짜를 입력하였습니다.");
        } else if (responseCode == 504) {
            logger.info("FAIL : 잘못된 시간을 입력하였습니다.");
            logger.info("FAIL : 잘못된 시간을 입력하였습니다.");
        } else if (responseCode == 505) {
            logger.info("FAIL : 최대 지정 기간인 365일을 초과하였습니다.");
            logger.info("FAIL : 최대 지정 기간인 365일을 초과하였습니다.");
        }else {
            logger.info("FAIL : 알수없는 오류가 발생하였습니다. 고객센터로 문의 해 주세요.");
        }
    }
}
