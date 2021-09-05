package com.maknolja.web.controller;

import com.maknolja.service.AirLineService;
import com.maknolja.service.CountryService;
import com.maknolja.vo.AirLine;
import com.maknolja.vo.CoronaPolicy;
import com.maknolja.web.view.JsonView;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/info")
public class InfoController {

	Logger logger = LogManager.getLogger(InfoController.class);

	@Autowired
	JsonView jsonview;

	@Autowired
	CountryService countryService;

	@Autowired
	AirLineService airLineService;


	/**
	 * 코로나19 해외여행자안전가이드 클릭시 이동되는 사이트 
	 * @return 페이지이동
	 */
	@GetMapping("/corona") public String corona() {
		return "info/corona";
	}

	/**
	 * 코로나19 여행자안전가이드 클릭시 이동되는 사이트
	 * @return 페이지이동
	 */
	@GetMapping("/coronaList") public String coronaList(Model model) { return "info/coronaList";}

	/**
	 *안전한 비행을 위한 노력 클릭시 이동되는 사이트
	 * @return 페이지이동
	 */
	@GetMapping("/healthFlight") public String healthFlight(){
		return "info/healthFlight";
	}

	/**
	 * 각 국의 코로나 입국정책이 담긴 객체를 반환한다.
	 * @return 각국정보가 담긴 객체
	 */
	@RequestMapping("/coronaList/json")
	public ModelAndView coronaPolicies(){
		List<CoronaPolicy> policies = countryService.getAllPolices();

		ModelAndView mav = new ModelAndView();
		mav.addObject("data", policies);
		mav.setView(jsonview);

		return mav;
	}

	/**
	 * 입력된 국가의 ISO-2코드와 일치하는 입국정보가 담긴 객체가 반환된다.
	 * @param code ISO-2 국가코드
	 * @return 일치하는 객체
	 */
	@RequestMapping("/coronaList/json/code")
	public ModelAndView coronaPolicy(@RequestParam("code") String code) {
		CoronaPolicy item = countryService.getCoronaPolicyByCode(code);

		ModelAndView mav = new ModelAndView();
		mav.addObject("data",item);
		mav.setView(jsonview);

		return mav;
	}

	/**
	 * ISO-2 이름과 일치하는 항공 정보들을 반환한다.
	 * @param engName 검색되는 *% 이름
	 * @return 검색된 항공사의 객체
	 */
	@RequestMapping("/healthFlight/json")
	public ModelAndView airLineInfos(@RequestParam("engName") String engName) {

		List<AirLine> airlines = airLineService.getAirLineInfoByEngName(engName);

		ModelAndView mav = new ModelAndView();
		mav.addObject("data",airlines);
		mav.setView(jsonview);

		return mav;
	}
}
