package com.cal.interceptor;

import com.cal.util.ExchangeUtil;
import com.cal.util.SessionUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

public class ExchangeLateInterceptor extends HandlerInterceptorAdapter {

    @Value("${site.url}")
    private String URL;
    @Value("${site.access.key}")
    private String ACCESS_KEY;
    @Value("${site.source}")
    private String SOURCE;
    @Value("${site.basicCurrencies}")
    private String BASICLATES;

    private static Logger logger = LoggerFactory.getLogger(ExchangeLateInterceptor.class);


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        ExchangeUtil exchangeUtil = new ExchangeUtil();

        String USDKRW = "";
        String USDJPY = "";
        String USDPHP = "";

        StringBuilder sb = new StringBuilder();
        sb.append(URL)
                .append("?access_key=")
                .append(ACCESS_KEY)
                .append("&currencies=")
                .append(BASICLATES)
                .append("&source=")
                .append(SOURCE);

        logger.info("StartURL = " + sb.toString());

        try{
            String result = exchangeUtil.connectAPI(new URL(sb.toString()));

            if(result.contains("FAIL")) {
                logger.info(result);
                SessionUtil.addAttribute("FailMessage", result);
                return super.preHandle(request, response, handler);
            }

            Map<String, BigDecimal> map = new HashMap<>();

            String[] strs = result.split(",");

            for(int i =0; i<strs.length; i++) {
                String tmp = strs[i];
                if(!(tmp == null || "".equals(tmp))) {
                    if(tmp.contains("USDKRW")) {
                        USDKRW = tmp.replaceAll("[^0-9//.]", "");
                        logger.info("STARTLATE USDKRW : " + USDKRW);
                    }
                    if(tmp.contains("USDJPY")) {
                        USDJPY = tmp.replaceAll("[^0-9//.]", "");
                        logger.info("STARTLATE USDJPY : " + USDJPY);
                    }
                    if(tmp.contains("USDPHP")) {
                        USDPHP = tmp.replaceAll("[^0-9//.]", "");
                        logger.info("STARTLATE USDPHP : " + USDPHP);
                    }
                }
            }

            Map<String, BigDecimal> lastKRWLate = (Map<String, BigDecimal>) SessionUtil.getAttribute("StartLate");

            if(lastKRWLate != null) {

                BigDecimal beforeKRW = lastKRWLate.get("USDKRW");
                BigDecimal beforeJPY = lastKRWLate.get("USDJPY");
                BigDecimal beforePHP = lastKRWLate.get("USDPHP");

                if(!beforeKRW.equals(USDKRW)){
                    map.put("USDKRW", new BigDecimal(USDKRW));
                }
                if(!beforeJPY.equals(USDKRW)){
                    map.put("USDJPY", new BigDecimal(USDJPY));
                }
                if(!beforePHP.equals(USDPHP)){
                    map.put("USDPHP", new BigDecimal(USDPHP));
                }
            }else {
                map.put("USDKRW", new BigDecimal(USDKRW));
                map.put("USDJPY", new BigDecimal(USDJPY));
                map.put("USDPHP", new BigDecimal(USDPHP));
            }

            if(!(map == null && map.size() == 0)) {
                SessionUtil.addAttribute("StartLate", map);
            }
        }catch(Exception e) {
            logger.info("API의 기본통화 KRW, JPY, PHP 설정에 실패하였습니다.", e.getMessage());
        }
        return super.preHandle(request, response, handler);
    }
}
