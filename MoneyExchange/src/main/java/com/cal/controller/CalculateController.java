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
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.math.RoundingMode;
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
    @Value("${common.errorMsg}")
    private String commonErrorMsg;
    @Value("${site.domain}")
    private String domain;


    private static final Logger logger = LoggerFactory.getLogger(CalculateController.class);

    private static final ExchangeUtil util = new ExchangeUtil();

        @RequestMapping("/calculate")
        public @ResponseBody Map<String,Object> getExchange(HttpServletRequest request, HttpServletResponse response) {

            String currency = request.getParameter("currency");
            String amount = request.getParameter("amount");
            String result;

            Map<String, Object> map = new HashMap<>();
            boolean isSuccess = false;

            BigDecimal lastLate;

            try {
                Map<String, BigDecimal> sessionMap = (Map<String, BigDecimal>) SessionUtil.getAttribute("StartLate");
                if(sessionMap != null) {
                    lastLate = sessionMap.get("USD" + currency);
                    if(!(lastLate.equals(BigDecimal.ZERO))) {
                        lastLate = lastLate.setScale(2,RoundingMode.HALF_UP);
                        map.put("lastLate", lastLate);
                        map.put("lastTotal", new BigDecimal(amount).multiply(lastLate).setScale(2,RoundingMode.HALF_UP));
                    }
                }else {
                    response.setContentType("text/html; charset=UTF-8");
                    PrintWriter out = response.getWriter();
                    out.println("<script>alert('" + commonErrorMsg + "'); location.href='" + domain + "';</script>");
                    out.flush();
                }

                BigDecimal totalAmount;
                String exchangeLate;

                String sb = URL +
                        "?access_key=" +
                        ACCESS_KEY +
                        "&currencies=" +
                        currency +
                        "&source=" +
                        SOURCE;

                result = util.connectAPI(new URL(sb));

                if(result.contains("FAIL")) {
                    map.put("errorMessage",result);
                }else {
                    exchangeLate = result.substring(result.indexOf(currency)).replaceAll("[^0-9//.]","");

                    if(!"".equals(exchangeLate)) {
                        BigDecimal late = new BigDecimal(exchangeLate).setScale(2,RoundingMode.HALF_UP);

                        totalAmount = new BigDecimal(amount).multiply(late).setScale(2, RoundingMode.HALF_UP);

                        map.put("nowLate", late);
                        map.put("nowTotal", totalAmount);
                    }
                    isSuccess = true;
                }
            } catch (Exception e) {
                logger.info("API 설정 또는 연결 후 진행 도중 오류가 발생하였습니다.", e.getMessage());
            }finally {
                map.put("isSuccess", isSuccess);
            }
            return map;
        }
}
