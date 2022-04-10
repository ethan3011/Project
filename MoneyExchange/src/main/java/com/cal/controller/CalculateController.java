package com.cal.controller;

import com.cal.util.SessionUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.cal.util.ExchangeUtil;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

@Controller
@Component
public class CalculateController {

    @Value("${site.url}")
    private String URL;
    @Value("${site.access.key}")
    private String ACCESS_KEY;
    @Value("${site.source}")
    private String SOURCE;
    @Value("${site.testURL}")
    private String testURL;

    private static Logger logger = LoggerFactory.getLogger(CalculateController.class);

    private static ExchangeUtil util = new ExchangeUtil();

        @RequestMapping("/calculate")

        public @ResponseBody Map<String,Object> getExchange(HttpServletRequest request) {

            String currency = request.getParameter("currency");
            String amount = request.getParameter("amount");

            Map<String, Object> map = new HashMap<>();
            boolean isSuccess = false;

            BigDecimal lastLate = BigDecimal.ZERO;

            Map<String, BigDecimal> sessionMap = (Map<String, BigDecimal>) SessionUtil.getAttribute("StartLate");
            if(!(sessionMap == null && sessionMap.size() == 0)) {
                lastLate = sessionMap.get("USD" + currency);
                if(!(lastLate.equals(BigDecimal.ZERO))) {
                    lastLate = lastLate.setScale(2,RoundingMode.HALF_UP);
                    map.put("lastLate", lastLate);
                    map.put("lastTotal", new BigDecimal(amount).multiply(lastLate).setScale(2,RoundingMode.HALF_UP));
                }
            }

            BigDecimal totalAmount = BigDecimal.ZERO;
            String exchangeLate = "";

            StringBuilder sb = new StringBuilder();
            sb.append(URL)
                .append("?access_key=")
                .append(ACCESS_KEY)
                .append("&currencies=")
                .append(currency)
                .append("&source=")
                .append(SOURCE);
            try {
                String result = util.connectAPI(new URL(sb.toString()));

                if(result.contains("FAIL")) {
                    map.put("errorMessage",result);
                }

                exchangeLate = result.substring(result.indexOf(currency)).replaceAll("[^0-9\\.]","");

                if(!(exchangeLate == null && "".equals(exchangeLate))) {
                    BigDecimal late = new BigDecimal(exchangeLate).setScale(2,RoundingMode.HALF_UP);

                    totalAmount = new BigDecimal(amount).multiply(late).setScale(2, RoundingMode.HALF_UP);

                    map.put("nowLate", late);
                    map.put("nowTotal", totalAmount);
                }
                isSuccess = true;
            } catch (Exception e) {
                e.printStackTrace();
            }finally {
                map.put("isSuccess", isSuccess);
            }

            return map;
        }
}
