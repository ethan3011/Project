package com.maknolja.web.controller;

import com.maknolja.service.LocalFlightService;
import com.maknolja.service.LocalHotelService;
import com.maknolja.service.UserService;
import com.maknolja.vo.HotelReservation;
import com.maknolja.vo.User;
import com.maknolja.web.utils.SessionUtils;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/my")
public class MypageController {
	
	Logger logger = LogManager.getLogger(MypageController.class);
	
	@Autowired
	LocalFlightService localFlightService;
	@Autowired
	LocalHotelService localHotelService;
	@Autowired
	UserService userService;
	
	
	@GetMapping("/order")
	public String order(Model model) {
		
		return "user/member/order";
	}

	@GetMapping("/searchhotel")
	public String searchhotel(@RequestParam("bookingno") String bookingno, Model model) {

		HotelReservation res = localHotelService.getInfoByReservationNo(bookingno);
		logger.info(res);
			model.addAttribute("searchhotel", res );
		return "user/member/order";
	}

	
	@GetMapping("/profile")
	public String profile(Model model ) {
		
		
		return "user/member/profile";
	}
	
	@GetMapping("/accountpassword")
	public String acccountpassword(Model model ) {
		
		return "user/member/accountpassword";
	}
	
	@PostMapping("/passwordmodify")
	public String passwordmodify(@RequestParam("password") String password,
			@RequestParam("newpassword") String newpassword,
			@RequestParam("newpasswordcheck") String newpasswordcheck) {
		
		System.out.println(password);
		System.out.println(newpassword);
		System.out.println(newpasswordcheck);
		
		User user = (User)SessionUtils.getAttribute("LOGINED_USER");
		
		String secretPassword = DigestUtils.sha256Hex(password);
		if ( !user.getPassword().equals(secretPassword)) {
			return "redirect:accountpassword";
		} 

		if ( !newpasswordcheck.equals(newpassword)) {
			return "redirect:accountpassword";
		}
		
		String secretnewPassword = DigestUtils.sha256Hex(newpassword);
		user.setPassword(secretnewPassword);
		
		userService.changePassword(user);
		
		return "redirect:changesuccess";
		
	}
	
	@GetMapping("/changesuccess")
	public String changesuccess() {
		return "user/member/changesuccess";
	}
	
	
	@PostMapping("/profilemodify")
	public String profilemodify(@RequestParam("surname") String surname, @RequestParam("givenname") String giveenname,
			@RequestParam("dobMonth") String dobMonth, @RequestParam("dobDay") String dobDay,
			@RequestParam("dobYear") String dobYear, @RequestParam("gender") String gender) {
		System.out.println(surname);
		System.out.println(giveenname);
		System.out.println(dobMonth);
		System.out.println(dobDay);
		System.out.println(dobYear);
		System.out.println(gender);
		
		User user = (User)SessionUtils.getAttribute("LOGINED_USER");
		user.setKorLastName(surname);
		user.setKorFirstName(giveenname);
		user.setBirth(dobYear+"-"+dobMonth+"-"+dobDay);
		user.setGender(gender);
		
		userService.updateUser(user);
		
		return "redirect:profile";
	}




	
	
}
