package com.cal.controller;

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

    @RequestMapping("/main")
    public String main(Model model) {

        boolean isSuccess = false;

        String failedMessage = "";
        failedMessage = (String)SessionUtil.getAttribute("FailMessage");

        if(!"".equals(failedMessage)) {
            model.addAttribute("failedMessage", failedMessage);
            return "index";
        }

        Map<String, BigDecimal> startLate = (Map<String, BigDecimal>) SessionUtil.getAttribute("StartLate");

        Map<String, String> map = new HashMap<>();

        if(!(startLate == null && startLate.size() == 0)) {
            for(String key : startLate.keySet()) {
                if("USDKRW".equals(key) || "USDJPY".equals(key) || "USDPHP".equals(key)) {
                    map.put(key,String.valueOf(startLate.get(key).setScale(2, RoundingMode.HALF_UP)));
                }
            }
        }

        if(!(map == null && map.size() == 0)) {
            model.addAttribute("basicResult", map);
            isSuccess = true;
        }

        model.addAttribute("isSuccess", isSuccess);

        return "index";
    }
}
