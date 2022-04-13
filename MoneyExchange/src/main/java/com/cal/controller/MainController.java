package com.cal.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cal.util.SessionUtil;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.HashMap;
import java.util.Map;

@Controller
public class MainController {

    private static final Logger logger = LoggerFactory.getLogger(MainController.class);

    @RequestMapping("/main")
    public String main(Model model) {

        // 성공 실패 여부를 저장할 변수 초기화
        boolean isSuccess = false;

        // 에러 메세지를 저장할 변수 초기화
        String failedMessage;
        // 세션에 저장되있는 에러 메세지가 있는지 확인한다.
        failedMessage = (String)SessionUtil.getAttribute("FailMessage");

        // 에러 메세지가 존재할 경우 model에 추가 후 종료한다.
        if(failedMessage != null) {
            model.addAttribute("failedMessage", failedMessage);
            return "index";
        // 에러메세지가 존재하지 않을 경우
        }else {
            // 세션에 저장된 기존 환율 정보를 가져온다.
            Map<String, BigDecimal> startLate = (HashMap<String, BigDecimal>) SessionUtil.getAttribute("StartLate");

            // 기존 환율 정보를 저장할 객체 초기화
            Map<String, String> map = new HashMap<>();

            // 만약 환율 정보가 비어 있지 않다면
            if(startLate != null ) {
                // 키를 하나씩 꺼내서 현재 필요한 USDKRW, USDJPY, USDPHP와 일치할 경우
                for(String key : startLate.keySet()) {
                    if("USDKRW".equals(key) || "USDJPY".equals(key) || "USDPHP".equals(key)) {
                        // 이름과, 소수점 두 자리 까지 환율 정보를 map에 저장한다.
                        map.put(key,String.valueOf(startLate.get(key).setScale(2, RoundingMode.HALF_UP)));
                    }
                }
            }
            // 만약 map 이 비어 있지 않다면
            if(!map.isEmpty()) {
                // basicReuslt에 map의 정보를 저장한다.
                model.addAttribute("basicResult", map);
                logger.info(map.toString());
                // 성공적으로 종료되었으니 true로 설정한다.
                isSuccess = true;
            }
            // 성공, 실패 여부를 저장한다.
            model.addAttribute("isSuccess", isSuccess);
        }
        return "index";
    }

}
