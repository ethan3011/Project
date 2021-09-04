package com.maknolja.web.controller;

import com.maknolja.exception.UserInvalidException;
import com.maknolja.service.LocalHotelService;
import com.maknolja.service.UserService;
import com.maknolja.vo.*;
import com.maknolja.web.utils.SessionUtils;
import com.maknolja.web.view.JsonView;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.internet.MimeMessage;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/hotel")
public class HotelController {

    @Autowired
    LocalHotelService localHotelService;

    @Autowired
    UserService userService;

    @Autowired
    JsonView jsonview;

    @Autowired
    private JavaMailSender mailSender;

    Logger logger = LogManager.getLogger(HotelController.class);

    DecimalFormat decFmt = new DecimalFormat("###,###");

    @ExceptionHandler(UserInvalidException.class)
    public String handleInvalidException(UserInvalidException ex, Model model) {
        model.addAttribute("deny", ex.getMessage());
        return "user/login/loginform";
    }

    @PostMapping("/main")
    public String hotelInfo(@RequestParam("areaName") String areaName,
                            @RequestParam("check-in") String checkIn,
                            @RequestParam("check-out") String checkOut,
                            @RequestParam("traveler") String traveler,
                            @RequestParam("hotelName") String hotelName,
                            Model model) {

        // 두 날짜간의 차이값 구하기
        Date format1 = null;
        Date format2 = null;
        try {
            format1 = new SimpleDateFormat("yyyy/MM/dd").parse(checkIn);
            format2 = new SimpleDateFormat("yyyy/MM/dd").parse(checkOut);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        // 밀리초 차이를 구하고, 날짜를 구한다.
        long calDate = format2.getTime() - format1.getTime();
        long diffDays = calDate / (24 * 60 * 60 * 1000);


        // 호탤 총 갯수 구하기
        int totalSize = 0;
        HotelRoomDtoVo hotelRoom = localHotelService.getSearchHotelOne(hotelName);
        List<HotelRoomDtoVo> hotelRooms = localHotelService.getSearchByAreaName(areaName);

        if (hotelRooms != null) {
            totalSize = 1 + hotelRooms.size();
        }
        if (hotelRooms.size() != 0 && hotelRoom != null) {
            totalSize = 1;
        }
        if (hotelRooms.size() == 0 && hotelRoom == null) {
            totalSize = 0;
        }

        // 검색결과 1개, 여러개 나눠서 내리기
        if (hotelRoom != null) {
            model.addAttribute("hotel", hotelRoom);
        } else {
            model.addAttribute("hotelRooms", hotelRooms);
        }

        // 호텔리스트
        List<LocalHotel> hotels = localHotelService.getAllLocalHotelsList();
        List<LocalHotel> names = localHotelService.getAllCityNames();

        model.addAttribute("hotels", hotels);
        model.addAttribute("names", names);
        model.addAttribute("areaName", areaName);
        model.addAttribute("checkIn", checkIn);
        model.addAttribute("checkOut", checkOut);
        model.addAttribute("diffDays", diffDays);
        model.addAttribute("traveler", traveler);
        model.addAttribute("hotelName", hotelName);
        model.addAttribute("totalHotelCount", totalSize);

        return "hotel/main";
    }

    @GetMapping("/detail")
    public String detail(@RequestParam("no") int no,
                         @RequestParam("hotelId") int hotelId,
                         @RequestParam("checkIn") String checkIn,
                         @RequestParam("checkOut") String checkOut,
                         @RequestParam("traveler") String traveler,
                         Model model) {

        // 두 날짜간의 차이값 구하기
        Date format1 = null;
        Date format2 = null;
        try {
            format1 = new SimpleDateFormat("yyyy/MM/dd").parse(checkIn);
            format2 = new SimpleDateFormat("yyyy/MM/dd").parse(checkOut);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        // 밀리초 차이를 구하고, 날짜를 구한다.
        long calDate = format2.getTime() - format1.getTime();
        long diffDays = calDate / (24 * 60 * 60 * 1000);


        checkIn = checkIn.replaceAll("\\/", "-");
        checkOut = checkOut.replaceAll("\\/", "-");
        // 방갯수
        int rooms = Integer.parseInt(traveler.substring(2, 3));
        // 성인 명수
        String adult = traveler.substring(7, 9);
        adult = adult.replace(",", "");
        adult = adult.replace("명", "");
        int adults = Integer.parseInt(adult);
        // 아이 명수
        int startLetter = traveler.indexOf("아이");
        String child = traveler.substring(startLetter);
        child = child.replace("명", "");
        child = child.replace("아이", "");
        int childs = Integer.parseInt(child);

        int totalPersonByRoom = (int) Math.floor((adults + childs) / rooms);

        // 검색된 총 호텔 갯수 구하기
        List<HotelRoomView> item = localHotelService.getPossibleReserveRooms(hotelId, checkIn, checkOut, totalPersonByRoom);
        int totalPossible = item.size();

        // 이용가능한 총 호텔 방 갯수를 조건에 넣어서 부합하면 내리기
        List<HotelRoomView> items = localHotelService.getRealPossibleReserveRooms(hotelId, checkIn, checkOut, totalPersonByRoom, totalPossible);


        // 호텔 검색정보 내리기
        LocalHotel hotel = localHotelService.getLocalHotelByHotelId(no);
        List<LocalHotel> hotels = localHotelService.getAllLocalHotelsList();
        List<LocalHotel> names = localHotelService.getAllCityNames();
        changesNoToName(names);
        changesNoToName(hotels);

        // 검색조건
        model.addAttribute("hotels", hotels);
        model.addAttribute("names", names);
        // 호텔 디테일
        model.addAttribute("rooms", items);
        model.addAttribute("hotelInfo", hotel);
        // 다른 날짜
        model.addAttribute("diffDays", diffDays);

        return "hotel/detail";
    }

    private void changesNoToName(List<LocalHotel> hotels) {
        for(LocalHotel localHotel : hotels){
            if(localHotel.getAreaCode().equals("1")){
                localHotel.setAreaCode("서울");
            }else if(localHotel.getAreaCode().equals("2")){
                localHotel.setAreaCode("인천");
            }else if(localHotel.getAreaCode().equals("3")){
                localHotel.setAreaCode("대전");
            }else if(localHotel.getAreaCode().equals("4")){
                localHotel.setAreaCode("대구");
            }else if(localHotel.getAreaCode().equals("5")){
                localHotel.setAreaCode("광주");
            }else if(localHotel.getAreaCode().equals("6")){
                localHotel.setAreaCode("부산");
            }else if(localHotel.getAreaCode().equals("7")){
                localHotel.setAreaCode("울산");
            }else if(localHotel.getAreaCode().equals("8")){
                localHotel.setAreaCode("세종특별자치시");
            }else if(localHotel.getAreaCode().equals("31")){
                localHotel.setAreaCode("경기도");
            }else if(localHotel.getAreaCode().equals("32")){
                localHotel.setAreaCode("강원도");
            }else if(localHotel.getAreaCode().equals("33")){
                localHotel.setAreaCode("충청북도");
            }else if(localHotel.getAreaCode().equals("34")){
                localHotel.setAreaCode("충청남도");
            }else if(localHotel.getAreaCode().equals("35")){
                localHotel.setAreaCode("경상북도");
            }else if(localHotel.getAreaCode().equals("36")){
                localHotel.setAreaCode("경상남도");
            }else if(localHotel.getAreaCode().equals("37")){
                localHotel.setAreaCode("전라북도");
            }else if(localHotel.getAreaCode().equals("38")){
                localHotel.setAreaCode("전라남도");
            }else if(localHotel.getAreaCode().equals("39")){
                localHotel.setAreaCode("제주");
            }
        }
    }

    @PostMapping("/reservation")
    public String reservation(@RequestParam("roomId") int roomId,
                              @RequestParam("type") String type,
                              @RequestParam("checkIn") String checkIn,
                              @RequestParam("checkOut") String checkOut,
                              @RequestParam("diffDays") int diffDays,
                              @RequestParam("adults") int adults,
                              @RequestParam("childs") int childs,
                              @RequestParam("hotelId") int hotelId,
                              @RequestParam("roomSize") int roomSize,
                              @RequestParam("describe") String describe,
                              @RequestParam("bedType") String bedType,
                              @RequestParam("roomView") String roomView,
                              @RequestParam("bedCount") int bedCount,
                              @RequestParam("price") int price,
                              @RequestParam("eventPrice") int eventPrice,
                              @RequestParam("breakfast") String breakfast,
                              @RequestParam("roomRef") String roomRef,
                              @RequestParam("roomBooth") String roomBooth,
                              @RequestParam("roomTv") String roomTv,
                              @RequestParam("roomAircon") String roomAircon,
                              @RequestParam("roomSmoking") String roomSmoking,
                              @RequestParam("roomWifi") String roomWifi,
                              @RequestParam("addr1") String addr1,
                              @RequestParam("hotelStar") int hotelStar,
                              @RequestParam("name") String name,
                              @RequestParam("hasFrontDesk") String hasFrontDesk,
                              @RequestParam("hasrestaurant") String hasrestaurant,
                              @RequestParam("hasHotelWifi") String hasHotelWifi,
                              @RequestParam("hasSmokeBanArea") String hasSmokeBanArea,
                              @RequestParam("hasCoffeeShop") String hasCoffeeShop,
                              @RequestParam("roomCount") int roomCount,
                              Model model
    ) {

        User user = (User) SessionUtils.getAttribute("LOGINED_USER");
        if (user == null) {
            throw new UserInvalidException("비로그인 회원", "로그인 이후 사용 가능한 서비스 입니다.");
        }
        model.addAttribute("roomId", roomId);
        model.addAttribute("checkIn", checkIn);
        model.addAttribute("checkOut", checkOut);
        model.addAttribute("diffDays", diffDays);
        model.addAttribute("type", type);
        model.addAttribute("adults", adults);
        model.addAttribute("childs", childs);
        model.addAttribute("hotelId", hotelId);
        model.addAttribute("roomSize", roomSize);
        model.addAttribute("describe", describe);
        model.addAttribute("bedType", bedType);
        model.addAttribute("roomView", roomView);
        model.addAttribute("bedCount", bedCount);
        model.addAttribute("price", price);
        model.addAttribute("eventPrice", eventPrice);
        model.addAttribute("breakfast", breakfast);
        model.addAttribute("roomRef", roomRef);
        model.addAttribute("roomTv", roomTv);
        model.addAttribute("roomAircon", roomAircon);
        model.addAttribute("roomSmoking", roomSmoking);
        model.addAttribute("roomWifi", roomWifi);
        model.addAttribute("addr1", addr1);
        model.addAttribute("name", name);
        model.addAttribute("hotelStar", hotelStar);
        model.addAttribute("hasFrontDesk", hasFrontDesk);
        model.addAttribute("hasrestaurant", hasrestaurant);
        model.addAttribute("hasHotelWifi", hasHotelWifi);
        model.addAttribute("hasSmokeBanArea", hasSmokeBanArea);
        model.addAttribute("hasCoffeeShop", hasCoffeeShop);
        model.addAttribute("roomCount", roomCount);

        return "hotel/reservation";
    }


    @PostMapping("/credited")
    public String credited(@RequestParam("lastName") String lastName,
                           @RequestParam("firstName") String firstName,
                           @RequestParam("email") String email,
                           @RequestParam("phone") String phone,
                           @RequestParam(value = "reqeustMemo", required = false) String reqeustMemo,
                           @RequestParam("checkIn") String checkIn,
                           @RequestParam("checkOut") String checkOut,
                           @RequestParam("roomId") int roomId,
                           @RequestParam("totalPrice") int totalPrice,
                           @RequestParam("adults") int adults,
                           @RequestParam("childs") int childs,
                           @RequestParam("roomCount") int roomCount,
                           @RequestParam("hotelNo") int hotelNo,
                           @RequestParam("roomType") String type,
                           @RequestParam("savedCoin") double savedCoin,
                           @RequestParam("hotelName") String hotelName
    ) {
        User user = (User) SessionUtils.getAttribute("LOGINED_USER");
        String userId = user.getId();

        // 유저 포인트 적립
        int point = (int) savedCoin;
        user.setPoint(user.getPoint() + point);

        userService.updateUser(user);

        String uuid = UUID.randomUUID().toString();
        uuid = uuid.substring(0,18);
        HotelReservation reservationId = localHotelService.getInfoByReservationNo(uuid);
        if (reservationId == null){
            uuid = UUID.randomUUID().toString();
            uuid = uuid.substring(0,18);
            reservationId = localHotelService.getInfoByReservationNo(uuid);
        }

        int roomId1 = 0;
        int roomId2 = 0;
        int roomId3 = 0;

        List<HotelRoomView> hotels = localHotelService.getRoomsByHotelRoomName(hotelNo, checkIn, checkOut, type);

        for (HotelRoomView hotel : hotels) {

            if (roomId1 == 0) {
                roomId1 = Integer.parseInt(hotel.getRoomId());
                continue;
            }

            if (roomId2 == 0) {
                roomId2 = Integer.parseInt(hotel.getRoomId());
                continue;
            }

            if (roomId3 == 0) {
                roomId3 = Integer.parseInt(hotel.getRoomId());
                break;
            }
        }


        if (roomCount >= 1) {
            insertRoomByCount(lastName, firstName, phone, reqeustMemo, checkIn, checkOut, totalPrice, adults, childs, roomCount, hotelNo, hotelName, userId, uuid, roomId1);
        }
        if (roomCount >= 2) {
            insertRoomByCount(lastName, firstName, phone, reqeustMemo, checkIn, checkOut, totalPrice, adults, childs, roomCount, hotelNo, hotelName, userId, uuid, roomId2);
        }
        if (roomCount == 3) {
            HotelReservation reservation = new HotelReservation();
            reservation.setUserId(userId);
            reservation.setCheckInDate(checkIn);
            reservation.setCheckOutDate(checkOut);
            reservation.setRoomNo(roomId3);
            reservation.setFirstName(firstName);
            reservation.setLastName(lastName);
            reservation.setBookingPrice(totalPrice);
            reservation.setAdultCount(adults);
            reservation.setChildCount(childs);
            reservation.setRoomCount(roomCount);
            reservation.setPhone(phone);
            reservation.setHotelNo(hotelNo);
            if (reqeustMemo != null) {
                reservation.setMemo(reqeustMemo);
            }
            reservation.setHotelName(hotelName);
            reservation.setReservationId(uuid);
            localHotelService.insertHotel(reservation);
        }

        String subject = lastName + " " + firstName + " 님의 예약이 완료되었습니다.";
        StringBuffer content = new StringBuffer();
        content.append("<html>");
        content.append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />");
        content.append("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
        content.append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />");
        content.append("<style type=\"text/css\">");
        content.append("@media screen {@font-face {font-family: 'Lato';font-style: normal;font-weight: 700;src: local('Lato Bold'), local('Lato-Bold'), url(https:/*fonts.gstatic.com/s/lato/v11/qdgUG4U09HnJwhYI-uK18wLUuEpTyoUstqEm5AMlJo4.woff) format('woff');*/} @font-face {font-family: 'Lato';font-style: italic;font-weight: 400;src: local('Lato Italic'), local('Lato-Italic'), url(https:/*fonts.gstatic.com/s/lato/v11/RYyZNoeFgb0l7W3Vu1aSWOvvDin1pK8aKteLpeZ5c0A.woff) format('woff');*/} @font-face {font-family: 'Lato';font-style: italic;font-weight: 700;src: local('Lato Bold Italic'), local('Lato-BoldItalic'), url(https:/*fonts.gstatic.com/s/lato/v11/HkF_qI1x_noxlxhrhMQYELO3LdcAZYWl9Si6vvxL-qU.woff) format('woff');*/}}");
        content.append("body, table, td, a {-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;}");
        content.append("table, td {mso-table-lspace: 0pt;mso-table-rspace: 0pt;}");
        content.append("img {-ms-interpolation-mode: bicubic;}");
        content.append("img {border: 0;height: auto;line-height: 100%; outline: none;text-decoration: none;}");
        content.append("table {border-collapse: collapse !important;}");
        content.append("body {height: 100% !important;margin: 0 !important;padding: 0 !important;width: 100% !important;}");
        content.append("a[x-apple-data-detectors] {color: inherit !important;text-decoration: none !important;font-size: inherit !important;font-family: inherit !important;font-weight: inherit !important;line-height: inherit !important;}");
        content.append("@media screen and (max-width:600px) {h1 {font-size: 32px !important;line-height: 32px !important;}}");
        content.append("div[style*=\"margin: 16px 0;\"] {margin: 0 !important;}");
        content.append("</style>");
        content.append("</head>");
        content.append("<body style=\"background-color: #f4f4f4; margin: 0 !important; padding: 0 !important;\">");
        content.append("<div style=\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: 'Lato', Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\"> We're thrilled to have you here! Get ready to dive into your new account. </div>");
        content.append("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">");
        content.append("<tr><td bgcolor=\"#FFA73B\" align=\"center\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\"><tr><td align=\"center\" valign=\"top\" style=\"padding: 40px 10px 40px 10px;\"> </td></tr></table></td></tr>");
        content.append("<tr><td bgcolor=\"#FFA73B\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\"><tr><td bgcolor=\"#ffffff\" align=\"center\" valign=\"top\" style=\"padding: 40px 20px 20px 20px; border-radius: 4px 4px 0px 0px; color: #111111; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; letter-spacing: 4px; line-height: 48px;\"><h1 style=\"font-size: 48px; font-weight: 400; margin: 2;\">예약성공!</h1> <img src=\" https://img.icons8.com/clouds/100/000000/handshake.png\" width=\"125\" height=\"120\" style=\"display: block; border: 0px;\" /></td></tr></table></td></tr>");
        content.append("<tr><td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\"><tr><td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 20px 30px 40px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\"><p style=\"margin: 0;\">저희 막놀자닷컴은 엄선된 숙소만 제공하는 최고의 사이트 입니다.</p> </td> </tr>");
        content.append("<tr><td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 0px 30px 0px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\"><p style=\"margin: 0; padding:15px;\">예약번호 : " + uuid + "</p><p style=\"margin: 0; padding:15px;\">호텔명 : " + hotelName + "</p><p style=\"margin: 0; padding:15px;\">예약자 명 : " + lastName + " " + firstName + " 님" + "</p><p style=\"margin: 0; padding:15px;\">아이디 : " + user.getId() + "</p><p style=\"margin: 0; padding:15px;\">연락처 : " + phone + "</p><p style=\"margin: 0; padding:15px;\">체크인 : " + checkIn + "</p><p style=\"margin: 0; padding:15px;\">체크아웃 : " + checkOut + "</p><p style=\"margin: 0; padding:15px;\">방 개수 : " + roomCount + " 개</p><p style=\"margin: 0; padding:15px;\">성인 " + adults + "명, 아이" + childs + "명</p><p style=\"margin: 0; padding:15px;\">총 가격 : " + decFmt.format(totalPrice) + "원</p>");
        if(reqeustMemo == null){
            content.append("<p style=\"margin: 0; padding:15px;\">요청사항 : " + reqeustMemo + "</p>");
        }
        content.append("</td> </tr><tr> <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 20px 30px 20px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\"></td> </tr> <tr> <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 0px 30px 20px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\"> <p style=\"margin: 0;\">궁금하신사항이 있으시면 이 메일로 회신 부탁드립니다.</p></td></tr><tr><td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 0px 30px 40px 30px; border-radius: 0px 0px 4px 4px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\"><p style=\"margin: 0;\">Cheers,<br>MAKNOLJA Team</p></td></tr></table></td></tr>");
        content.append("<tr><td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 30px 10px 0px 10px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\"><tr><td bgcolor=\"#FFECD1\" align=\"center\" style=\"padding: 30px 30px 30px 30px; border-radius: 4px 4px 4px 4px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\"><h2 style=\"font-size: 20px; font-weight: 400; color: #111111; margin: 0;\">도움이 필요하십니까??</h2><p style=\"margin: 0;\"><a href=\"http://localhost:8080\" target=\"_blank\" style=\"color: #FFA73B;\">MAKNOLJA.COM을 방문해보세요 !</a></p></td></tr></table></td></tr>");
        content.append("<tr><td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\"><tr><td bgcolor=\"#f4f4f4\" align=\"left\" style=\"padding: 0px 30px 30px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 18px;\"> <br></td></tr></table></td></tr></table></body></html>");

        String from = "eknnnooosw@gmail.com";
        String to = email;

        try {
            MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");
            // true는 멀티파트 메세지를 사용하겠다는 의미

            /*
             * 단순한 텍스트 메세지만 사용시엔 아래의 코드도 사용 가능
             * MimeMessageHelper mailHelper = new MimeMessageHelper(mail,"UTF-8");
             */

            mailHelper.setFrom(from);
            // 빈에 아이디 설정한 것은 단순히 smtp 인증을 받기 위해 사용 따라서 보내는이(setFrom())반드시 필요
            // 보내는이와 메일주소를 수신하는이가 볼때 모두 표기 되게 원하신다면 아래의 코드를 사용하시면 됩니다.
            //mailHelper.setFrom("보내는이 이름 <보내는이 아이디@도메인주소>");
            mailHelper.setTo(to);
            mailHelper.setSubject(subject);
            mailHelper.setText(content.toString(), true);
            // true는 html을 사용하겠다는 의미입니다.

            mailSender.send(mail);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/main";
    }

    private void insertRoomByCount(@RequestParam("lastName") String lastName, @RequestParam("firstName") String firstName, @RequestParam("phone") String phone, @RequestParam(value = "reqeustMemo", required = false) String reqeustMemo, @RequestParam("checkIn") String checkIn, @RequestParam("checkOut") String checkOut, @RequestParam("totalPrice") int totalPrice, @RequestParam("adults") int adults, @RequestParam("childs") int childs, @RequestParam("roomCount") int roomCount, @RequestParam("hotelNo") int hotelNo, @RequestParam("hotelName") String hotelName, String userId, String uuid, int roomId1) {
        HotelReservation reservation = new HotelReservation();
        reservation.setUserId(userId);
        reservation.setCheckInDate(checkIn);
        reservation.setCheckOutDate(checkOut);
        reservation.setRoomNo(roomId1);
        reservation.setFirstName(firstName);
        reservation.setLastName(lastName);
        reservation.setBookingPrice(totalPrice);
        reservation.setAdultCount(adults);
        reservation.setChildCount(childs);
        reservation.setRoomCount(roomCount);
        reservation.setPhone(phone);
        reservation.setHotelNo(hotelNo);
        reservation.setHotelName(hotelName);
        reservation.setReservationId(uuid);

        if (reqeustMemo != null) {
            reservation.setMemo(reqeustMemo);
        }
        localHotelService.insertHotel(reservation);
    }

    @RequestMapping("SearchHotelListJson")
    public ModelAndView hotelByLowPrice(@RequestParam("cityName") String cityName,
                                        @RequestParam("check-in") String checkIn,
                                        @RequestParam("check-out") String checkOut,
                                        @RequestParam("traveler") String traveler) {

        List<HotelRoomDtoVo> hotelRooms = localHotelService.getSearchByAreaName(cityName);
        ModelAndView mav = new ModelAndView();
        mav.addObject("data", hotelRooms);
        mav.setView(jsonview);
        return mav;
    }


    // 호텔 필터에 이용됨
    @RequestMapping("hotelFilter")
    public ModelAndView getFilterHotel(@RequestParam("hotelId") int hotelId,
                                       @RequestParam("checkIn") String checkIn,
                                       @RequestParam("checkOut") String checkOut,
                                       @RequestParam("traveler") String traveler
    ) {

        checkIn = checkIn.replaceAll("\\/", "-");
        checkOut = checkOut.replaceAll("\\/", "-");
        // 방갯수
        int rooms = Integer.parseInt(traveler.substring(2, 3));
        // 성인 명수
        String adult = traveler.substring(7, 9);
        adult = adult.replace(",", "");
        adult = adult.replace("명", "");
        int adults = Integer.parseInt(adult);
        // 아이 명수
        int startLetter = traveler.indexOf("아이");
        String child = traveler.substring(startLetter);
        child = child.replace("명", "");
        child = child.replace("아이", "");
        int childs = Integer.parseInt(child);

        int totalPersonByRoom = (int) Math.floor((adults + childs) / rooms);

        // 검색된 총 호텔 갯수 구하기
        List<HotelRoomView> item = localHotelService.getPossibleReserveRooms(hotelId, checkIn, checkOut, totalPersonByRoom);
        int totalPossible = item.size();

        // 이용가능한 총 호텔 방 갯수를 조건에 넣어서 부합하면 내리기
        List<HotelRoomView> items = localHotelService.getRealPossibleReserveRooms(hotelId, checkIn, checkOut, totalPersonByRoom, totalPossible);

        ModelAndView mav = new ModelAndView();
        mav.addObject("data", items);
        mav.setView(jsonview);
        return mav;

    }


    // 호텔 위치 나타내기
    /*@GetMapping("/location")
    public String getLocation(@RequestParam("no") int contentNo, Model model){
        LocalHotel hotel = localHotelService.getLocalHotelByHotelId(contentNo);


        model.addAttribute("hotelInfo", hotel);
        model.addAttribute("contentNo",contentNo);
        return "hotel/location";
    }*/

}
