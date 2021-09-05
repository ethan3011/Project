package com.maknolja.web.controller;


import com.maknolja.service.LocalFlightService;
import com.maknolja.vo.LocalFlight;
import com.maknolja.vo.LocalFlightCreditInfo;
import com.maknolja.vo.LocalFlightReserve;
import com.maknolja.vo.User;
import com.maknolja.web.utils.SessionUtils;
import com.maknolja.web.view.JsonView;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class FlightController {
	Logger logger = LogManager.getLogger(FlightController.class);
	@Autowired
	LocalFlightService localFlightService;
	@Autowired
	JsonView jsonView;
	//예약페이지이동
	@PostMapping("/flight")
	public String flightmain(Model model) {
		
	User id = (User)SessionUtils.getAttribute("LOGINED_USER");
	model.addAttribute("id",id);
		return "flight/flightmain";
	}
	//가는날 페이지
	@PostMapping("/registers")
	public String stday(@RequestParam("stdayTime")String stdayTime,@RequestParam("stdayAirportKor")String stdayAirportKor,
			@RequestParam("stdayAirplaneCode")String stdayAirplaneCode,@RequestParam("stdayAirportCode")String stdayAirportCode,
			@RequestParam("stdayEndAirportCode")String stdayEndAirportCode,@RequestParam("stdayEndTime")String stdayEndTime,@RequestParam("stdayFlightTime")String stdayFlightTime,
			@RequestParam("comeback")String comeback,
			@RequestParam("startCode")String startCode,
			@RequestParam("finishCode")String finishCode,
			@RequestParam("userid")String userid,
			@RequestParam("stdaySeat")String stdaySeat,
			@RequestParam("stdayAirPrice")String stdayAirPrice,
			@RequestParam("stdayDate")String stdayDate,
			@RequestParam("startCityName")String startCityName,//추가 저녁 12시에!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
			@RequestParam("arriveCityName")String arriveCityName,//추가 저녁 12시에!!!!!!!!!!!!!!!!!!!!!!!
			@RequestParam("startDate")String startDate,
			@RequestParam("comebackday")String comebackday,
			@RequestParam("comebackReturnview")String comebackReturnview,
			Model model
			) {
		LocalFlightCreditInfo list = new LocalFlightCreditInfo();
		list.setStdayAirplaneCode(stdayAirplaneCode);
		list.setStdayAirportCode(stdayAirportCode);
		list.setStdayAirportEng("testaaaaaa");
		list.setStdayAirportKor(stdayAirportKor);
		list.setStdayEndAirportCode(stdayEndAirportCode);
		list.setStdayEndTime(stdayEndTime);
		//list.setStdayFlightTime(stdayFlightTime);
		list.setStdayTime(stdayTime);
		list.setUserId(userid);
		list.setStdaySeat(stdaySeat);
		list.setStdayAirPrice(stdayAirPrice);
		list.setStdayDate(stdayDate);
		list.setRtdayDate(comebackReturnview);
		
		logger.info(comebackday);
		
		localFlightService.insertstDay(list);
		model.addAttribute("stdayTime", stdayTime);	
		model.addAttribute("comeback", comeback);	
		model.addAttribute("startCode", startCode);	
		model.addAttribute("finishCode", finishCode);
		model.addAttribute("stdaySeat",stdaySeat);
		model.addAttribute("stdayAirportKor",stdayAirportKor);
		model.addAttribute("startCityName",startCityName);// w저녁 추가한것!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		model.addAttribute("arriveCityName",arriveCityName);// 저녁 추가한것!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		model.addAttribute("stdayAirplaneCode",stdayAirplaneCode); //업데이트에 필요한것  이라인부터 아래는210813오전12시추가
		model.addAttribute("stdayAirportCode",stdayAirportCode);
		model.addAttribute("stdayEndAirportCode",stdayEndAirportCode);
		model.addAttribute("userId",userid);
		model.addAttribute("startDate",startDate);
		model.addAttribute("comebackday",comebackday);
		model.addAttribute("comebackReturnview",comebackReturnview);
		return "flight/flightreturn";
	}
	
	@PostMapping("/returnregister")
	public String Rtday(@RequestParam("rtdayTime")String rtdayTime,@RequestParam("rtdayAirportKor")String rtdayAirportKor,
			@RequestParam("rtdayAirplaneCode")String rtdayAirplaneCode,@RequestParam("rtdayAirportCode")String rtdayAirportCode,
			@RequestParam("rtdayEndAirportCode")String rtdayEndAirportCode,@RequestParam("rtdayEndTime")String rtdayEndTime,
			@RequestParam("rtdayFlightTime")String rtdayFlightTime,
			@RequestParam("stname")String stname,
			@RequestParam("rtname")String rtname,
			@RequestParam("stdayAirplaneCode")String stdayAirplaneCode,
			@RequestParam("stdayAirportCode")String stdayAirportCode,
			@RequestParam("stdayEndAirportCode")String stdayEndAirportCode,
			@RequestParam("stdayTime")String stdayTime,
			@RequestParam("classprice")String classprice,
			@RequestParam("userId")String userId,
			@RequestParam("startDatelast")String startDate,
			
			Model model) { //@RequestParam("stdayTime")String stdayTime추가됨 삭제필요 테스트용임
		String startday = startDate;
		String year = startday.substring(0,4);
		String month = startday.substring(4,6);
		String day = startday.substring(6);
		
		String value = year + "/" + month + "/" +day;
		
		System.out.println(year);
		System.out.println(month);
		System.out.println(day);
		
		LocalFlightCreditInfo list = new LocalFlightCreditInfo();
		list.setRtdayAirplaneCode(rtdayAirplaneCode);
		list.setRtdayAirportCode(rtdayAirportCode);
		list.setRtdayAirportEng("test");
		list.setRtdayAirportKor(rtdayAirportKor);
		list.setRtdayEndAirportCode(rtdayEndAirportCode);
		list.setRtdayEndTime(rtdayEndTime);
		list.setRtdayFlightTime(rtdayFlightTime);
		list.setRtdayTime(rtdayTime);
		list.setStdayAirplaneCode(stdayAirplaneCode);
		list.setStdayAirportCode(stdayAirportCode);
		list.setStdayEndAirportCode(stdayEndAirportCode);
		list.setStdayTime(stdayTime);
		list.setRtdayAirPrice(classprice);
		list.setUserId(userId);
		list.setStdayDate(value);
		
		System.out.println(stdayTime);
		System.out.println(userId);
		System.out.println(stdayEndAirportCode);
		System.out.println(stdayAirportCode);
		System.out.println(stdayAirplaneCode);
		System.out.println(value);

		
		
		localFlightService.insertrtDay(list);
		model.addAttribute("startname",stname);//출발도시 왕복표시용
		model.addAttribute("rtartname",rtname);//돌아오는 도시 왕복표시용
		model.addAttribute("userId",userId);	// 유저아이디
		model.addAttribute("stdayTime",stdayTime);	//출발시간
		model.addAttribute("stdayAirplaneCode",stdayAirplaneCode); //출발항공편
		model.addAttribute("rtdayAirplaneCode",rtdayAirplaneCode); //돌아오는항공편
		model.addAttribute("stdayAirportCode",stdayAirportCode);   //출발공항코드	
		model.addAttribute("stdayEndAirportCode",stdayEndAirportCode); //도착공항코드
		
		
		//돌아오
		return "flight/loading";
	}
	
	// 실질적으로 예약페이지에 뿌릴  컨트롤러 ? 
	@PostMapping("/registerto")
	public String register(@RequestParam("userId")String userId,@RequestParam("stdayTime")String stdayTime,
			@RequestParam("stdayAirplaneCode")String stdayAirplaneCode,@RequestParam("rtdayAirplaneCode")String rtdayAirplaneCode,
			@RequestParam("stdayAirportCode")String stdayAirportCode,@RequestParam("stdayEndAirportCode")String stdayEndAirportCode,
			@RequestParam("startname")String startname,@RequestParam("rtartname")String rtartname,
			Model model){
		
			LocalFlightCreditInfo regist = new LocalFlightCreditInfo();
			regist.setUserId(userId);
			regist.setStdayTime(stdayTime);
			regist.setStdayAirplaneCode(stdayAirplaneCode);
			regist.setRtdayAirplaneCode(rtdayAirplaneCode);
			regist.setStdayAirportCode(stdayAirportCode);
			regist.setStdayEndAirportCode(stdayEndAirportCode);
			
			LocalFlightCreditInfo a =localFlightService.creditView(regist);
			String go = a.getStdayAirPrice();
			String back = a.getRtdayAirPrice();
			int gos = Integer.parseInt(go);
			int backs = Integer.parseInt(back);
			
			int total = gos+backs;
			System.out.println(total);
			System.out.println(go);
			System.out.println(back);
			model.addAttribute("a",a);
			model.addAttribute("startname",startname);
			model.addAttribute("rtartname",rtartname);
			model.addAttribute("total",total);
			model.addAttribute("userId",userId);
				
				return "flight/flightreserve";
			}
	
	@PostMapping("pay")
	public String paymoent(@RequestParam("rtartname")String rtartname,@RequestParam("startname")String startname,
						   @RequestParam("stdayDate")String stdayDate,@RequestParam("stdayTime")String stdayTime,
						   @RequestParam("stdayAirportCode")String stdayAirportCode,@RequestParam("stdayEndTime")String stdayEndTime,
						   @RequestParam("stdayEndAirportCode")String stdayEndAirportCode,@RequestParam("stdayAirportKor")String stdayAirportKor,
						   @RequestParam("stdayAirplaneCode")String stdayAirplaneCode,@RequestParam("rtdaySeat")String rtdaySeat,
						   @RequestParam("rtdayDate")String rtdayDate,@RequestParam("rtdayTime")String rtdayTime,
						   @RequestParam("rtdayAirportCode")String rtdayAirportCode,@RequestParam("rtdayEndTime")String rtdayEndTime,
						   @RequestParam("rtdayEndAirportCode")String rtdayEndAirportCode,@RequestParam("rtdayAirportKor")String rtdayAirportKor,
						   @RequestParam("rtdayAirplaneCode")String rtdayAirplaneCode,@RequestParam("stdayAirPrice")String stdayAirPrice,
						   @RequestParam("rtdayAirPrice")String rtdayAirPrice,@RequestParam("total")String total,
						   @RequestParam("firstname")String firstname ,@RequestParam("gender")String gender,
						   @RequestParam("country")String country,@RequestParam("postnum")String postnum,
						   @RequestParam("lastname")String lastname,@RequestParam("birsday")String birsday,
						   @RequestParam("postpaper")String postpaper,@RequestParam("postday")String postday,
						   @RequestParam("infofullname")String infofullname,@RequestParam("email")String email,
						   @RequestParam("phone")String phone,@RequestParam("userId")String userId, Model model) {

		LocalFlightReserve reseve = new LocalFlightReserve();
		reseve.setStdayTime(stdayTime);
		reseve.setStdayAirportKor(stdayAirportKor);
		reseve.setStdayAirplaneCode(stdayAirplaneCode);
		reseve.setStdayAirportCode(stdayAirportCode);
		reseve.setStdayEndAirportCode(stdayEndAirportCode);
		reseve.setStdayEndTime(stdayEndTime);
		reseve.setStdayAirPrice(stdayAirPrice);
		reseve.setRtdayTime(rtdayTime);
		reseve.setRtdayAirportCode(rtdayAirportCode);
		reseve.setRtdayAirportKor(rtdayAirportKor);
		reseve.setRtdayAirPlaneCode(rtdayAirplaneCode);
		reseve.setRtdayEndAirportCode(rtdayEndAirportCode);
		reseve.setRtdayEndTime(rtdayEndTime);
		reseve.setRtdayReturnAirPrice(rtdayAirPrice);
		reseve.setFirstName(firstname);
		reseve.setLastName(lastname);
		reseve.setGender(gender);
		reseve.setDob(birsday);
		reseve.setNa(country);
		reseve.setPassPort(postpaper);
		reseve.setPassNo(postnum);
		reseve.setIfEmail(email);
		reseve.setIfPhone(phone);
		reseve.setIfName(infofullname);
		reseve.setStdayDate(stdayDate);
		reseve.setRtdayDate(rtdayDate);
		reseve.setUserId(userId);
		
		localFlightService.flightreseve(reseve);
		
		model.addAttribute("userId",userId);
		model.addAttribute("startname",startname);
		model.addAttribute("rtartname",rtartname);
		model.addAttribute("total", total);
		model.addAttribute("stdayAirPrice",stdayAirPrice);
		model.addAttribute("rtdayAirPrice",rtdayAirPrice);
		model.addAttribute("stdayAirportCode",stdayAirportCode);
		model.addAttribute("stdayEndAirportCode",stdayEndAirportCode);
		model.addAttribute("stdayTime",stdayTime);
		model.addAttribute("stdayEndTime",stdayEndTime);
		model.addAttribute("rtdayTime",rtdayTime);
		model.addAttribute("rtdayAirportCode",rtdayAirportCode);
		model.addAttribute("rtdayEndAirportCode",rtdayEndAirportCode);
		model.addAttribute("rtdayTime",rtdayTime);
		model.addAttribute("rtdayEndTime",rtdayEndTime);
		model.addAttribute("firstname",firstname);
		model.addAttribute("lastname",lastname);
		model.addAttribute("postpaper",postpaper);
		model.addAttribute("postnum",postnum);
		model.addAttribute("infofullname",infofullname);
		model.addAttribute("phone",phone);
		model.addAttribute("email",email);
		model.addAttribute("stdayDate",stdayDate);
		model.addAttribute("rtdayDate",rtdayDate);
		model.addAttribute("a",reseve); //객체로 담아서 넘겨도되지만 우선 각각 model에 담아 넣기)
		model.addAttribute("stdayAirplaneCode",stdayAirplaneCode);
		model.addAttribute("rtdayAirplaneCode",rtdayAirplaneCode);
		return "flight/paymont";
	}
	
	@PostMapping("payfinished")
	public String payClear(@RequestParam("cardNo")String cardNo,@RequestParam("userId")String userId,@RequestParam("stdayTime")String stdayTime,
							@RequestParam("stdayEndTime")String stdayEndTime,
							@RequestParam("rtdayTime")String rtdayTime,@RequestParam("rtdayEndTime")String rtdayEndTime,@RequestParam("stdayAirPlaneCode")String stdayAirPlaneCode
							,@RequestParam("rtdayAirPlaneCode")String rtdayAirPlaneCode,
							@RequestParam("stdayDate")String stdayDate,@RequestParam("rtdayDate")String rtdayDate,@RequestParam("passNo")String passNo,
							@RequestParam("phone")String phone,
							@RequestParam("stdayAirPortCode")String stdayAirPortCode,@RequestParam("stdayEndAirPortCode")String stdayEndAirPortCode,
							@RequestParam("rtdayAirPortCode")String rtdayAirPortCode,@RequestParam("rtdayEndAirPortCode")String rtdayEndAirPortCode,
							@RequestParam("payStatus")String payStatus) {
		//SimpleDateFormat test = new SimpleDateFormat("yyyy/MM/dd");
			
		System.out.println();
		System.out.println();
		System.out.println("굿"+rtdayDate);

		
		LocalFlightReserve payclear = new LocalFlightReserve();
		payclear.setPayStatus(payStatus);
		payclear.setUserCardNo(cardNo);
		payclear.setUserId(userId);
		payclear.setPassNo(passNo);
		payclear.setIfPhone(phone);
		payclear.setStdayTime(stdayTime);
		payclear.setStdayEndTime(stdayEndTime);
		payclear.setRtdayTime(rtdayTime);
		payclear.setRtdayEndTime(rtdayEndTime);
		payclear.setStdayAirplaneCode(stdayAirPlaneCode);
		payclear.setRtdayAirPlaneCode(rtdayAirPlaneCode);
		payclear.setStdayDate(stdayDate);
		payclear.setRtdayDate(rtdayDate);
		payclear.setStdayAirportCode(stdayAirPortCode);
		payclear.setStdayEndAirportCode(stdayEndAirPortCode);
		payclear.setRtdayAirportCode(rtdayAirPortCode);
		payclear.setRtdayEndAirportCode(rtdayEndAirPortCode);
		
		localFlightService.payClear(payclear);
		System.out.println("---------------------------");
		System.out.println(payStatus);
		System.out.println(passNo);
		System.out.println(phone);
		System.out.println(stdayTime);
		System.out.println(stdayEndTime);
		System.out.println(rtdayTime);
		System.out.println(rtdayEndTime);
		System.out.println(stdayAirPlaneCode);
		System.out.println(rtdayAirPlaneCode);
		System.out.println(stdayDate);
		System.out.println(rtdayDate);
		System.out.println(stdayAirPortCode);
		System.out.println(stdayEndAirPortCode);
		System.out.println(rtdayAirPortCode);
		System.out.println(rtdayEndAirPortCode);
		System.out.println(userId);
		
		return "redirect:main";
	}
	
    @RequestMapping("jsonairlist")
    public ModelAndView ticket(@RequestParam("startday") String startday,@RequestParam("startCode") String startCode,
    						@RequestParam("comebackday") String comebackday,@RequestParam("arriveCode") String arriveCode,Model model){
            	
         List<LocalFlight> list =localFlightService.getFlightsTicketList(startCode, arriveCode, startday, comebackday);
         logger.info(list);		 

         ModelAndView mav = new ModelAndView();
         mav.addObject("data",list);
         mav.setView(jsonView);
        return mav;
    }
	
	/*
	 * @GetMapping("/flightreturn") public String rtday(){ return
	 * "flight/flightreturn"; }
	 */

}
