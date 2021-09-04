// 상수

package com.maknolja.web.form;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserRegisterForm {

	// form.jsp에 있는 name과 같은 name로 입력
	 private String id;
	 private String password ;

}
