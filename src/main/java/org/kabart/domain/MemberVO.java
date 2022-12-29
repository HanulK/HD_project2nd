package org.kabart.domain;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private String birth;
	private String address;
	private String address_detail;
	private char gender;
	private String phone;
	
	private boolean enabled;
	
	private Date join_date;
	private Date expire_date;
	private int family_num;
	private List<AuthVO> auths;
}
