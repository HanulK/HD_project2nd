package org.kabart.service;

import org.kabart.domain.MemberVO;

public interface MemberService {
	public int signUp(MemberVO member);
	public MemberVO getInfoById(String mem_id);
	public int idCheck(String new_id);
	public String findId(String phone);
	public void changePhoneInfo(String mem_id, String new_data);
	public void changeFamilyNumInfo(String mem_id, int new_data);
	public int withdrawalMember(String mem_id);
	public boolean pwCheck(String mem_id, String tester);
}
