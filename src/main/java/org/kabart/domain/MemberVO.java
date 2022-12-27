package org.kabart.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private Date birth;
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
