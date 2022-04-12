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

    private static final Logger logger = LoggerFactory.getLogger(ExchangeLateInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        ExchangeUtil exchangeUtil = new ExchangeUtil();

        try{
            StringBuilder sb = new StringBuilder();
            sb.append(URL)
                    .append("?access_key=")
                    .append(ACCESS_KEY)
                    .append("&currencies=")
                    .append(BASICLATES)
                    .append("&source=")
                    .append(SOURCE);

            logger.info("StartURL = " + sb);

            String result = exchangeUtil.connectAPI(new URL(sb.toString()));

            if(result.contains("FAIL")) {
                logger.info(result);
                SessionUtil.addAttribute("FailMessage", result);
                return super.preHandle(request, response, handler);
            }else {
                Map<String, BigDecimal> map = new HashMap<>();

                String[] strs = result.split(",");

                for(String str : strs) {
                    if(!(str == null || "".equals(str))) {
                        if(str.contains("USDKRW")) {
                            String USDKRW = str.replaceAll("[^0-9//.]", "");
                            if(!"".equals(USDKRW)) {
                                map.put("USDKRW", new BigDecimal(USDKRW));
                                logger.info("STARTLATE USDKRW : " + USDKRW);
                            }else {
                                logger.info("USDKRW 를 설정하는데 실패하였습니다.");
                            }
                        }

                        if(str.contains("USDJPY")) {
                            String USDJPY = str.replaceAll("[^0-9//.]", "");
                            if(!"".equals(USDJPY)){
                                map.put("USDJPY", new BigDecimal(USDJPY));
                                logger.info("STARTLATE USDJPY : " + USDJPY);
                            }else {
                                logger.info("USDJPY 를 설정하는데 실패하였습니다.");
                            }
                        }

                        if(str.contains("USDPHP")) {
                            String USDPHP = str.replaceAll("[^0-9//.]", "");
                            if(!"".equals(USDPHP)) {
                                map.put("USDPHP", new BigDecimal(USDPHP));
                                logger.info("STARTLATE USDPHP : " + USDPHP);
                            }else {
                                logger.info("USDPHP 를 설정하는데 실패하였습니다.");
                            }
                        }
                    }
                }
                SessionUtil.addAttribute("StartLate", map);
            }
        }catch(Exception e) {
            logger.error("API의 기본통화 KRW, JPY, PHP 설정에 실패하였습니다.", e.getMessage());
        }
        return super.preHandle(request, response, handler);
    }
}
