//상수

package com.maknolja.service;

import com.maknolja.vo.User;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public interface UserService {

	/**
	 * 지정된 사용자정보를 회원가입시킨다.
	 * @param user 사용자정보
	 */
	void registerUser(User user);

	/**
	 * 지정된 아이디와 비밀번호로 사용자를 인증한다.
	 * @param id 사용자 아이디
	 * @param password 사용자 비밀번호
	 */
	void login(String id, String password);

	/**
	 * 지정된 아이디로 사용자의 상세정보를 제공하는 서비스
	 * @param id 사용자 아이디
	 * @return 사용자에 대한 상세정보가 포함된 Map객체
	 */
	Map<String, Object> getUserDetail(String id);
	
	/**
	 * 수정된 사용자 정보를 저장시킨다.
	 * @param user 수정된 사용자정보
	 */
	void updateUser(User user);
	
	/**
	 * 비밀번호를 변경해서 저장시킨다.
	 * @param user 수정된 사용자정보 비밀번호
	 */
	void changePassword(User user);

	/**
	 * 유저 아이디로 조회해서 일치하는 유저 정보를 찾는다.
	 * @param id 검색할 아이디
	 * @return 일치하면 유저, 없을시 null 반환
	 */
	User getUserById(String id);
}
