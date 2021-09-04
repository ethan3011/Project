//상수
package com.maknolja.service;

import com.maknolja.dao.UserDao;
import com.maknolja.exception.UserLoginException;
import com.maknolja.exception.UserRegisterException;
import com.maknolja.vo.User;
import com.maknolja.web.utils.SessionUtils;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	 UserDao userDao;
	
	
	@Override
	public void registerUser(User user) {
		User savedUser = userDao.getUserById(user.getId());
		if (savedUser != null) {
			throw new UserRegisterException("아이디 중복", "["+user.getId()+"]는 이미 사용중인 아이디입니다.");
		}
		
		String secretPassword = DigestUtils.sha256Hex(user.getPassword());
		user.setPassword(secretPassword);
		
		userDao.insertUser(user);
	}
	
	@Override
	public void login(String id, String password) {
		// 사용자정보 조회 - null인지 체크, 삭제된 사용자인지 체크, 비밀번호가 일치하는 체크
		User user = userDao.getUserById(id);
				
	if (user == null) {
			throw new UserLoginException("아이디/비밀번호 오류", "아이디 혹은 비밀번호가 유효하지 않습니다.");
		}
		// @@@@@@@우리 Status 기본값이 y인지 확인해야함@@@@@@@
		if (!"Y".equalsIgnoreCase(user.getStatus())) {
			throw new UserLoginException("사용중지된 회원", "탈퇴 혹은 일시정지 처리된 사용자입니다.");
		}
		
		String secretPassword = DigestUtils.sha256Hex(password);
		if (!user.getPassword().equals(secretPassword)) {
			throw new UserLoginException("아이디/비밀번호 오류", "아이디 혹은 비밀번호가 유효하지 않습니다.");
		}
	
		// HttpSession객체에 사용자 인증이 완료된 사용자정보를 속성으로 추가한다. 
		SessionUtils.addAttribute("LOGINED_USER", user);
	}

	@Override
	public Map<String, Object> getUserDetail(String id) {
		Map<String, Object> userDetailMap = new HashMap<>();

		User user = userDao.getUserById(id);
		
		userDetailMap.put("user", user);
		
		return userDetailMap;
	}
	
	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);
	}
	
	@Override
	public void changePassword(User user) {
		userDao.updateUser(user);
	}

	@Override
	public User getUserById(String id) {
		User user = userDao.getUserById(id);
		return user;
	}

}
