package org.kabart.service;

import javax.servlet.http.HttpServletResponse;

import org.kabart.domain.MemberVO;

/* writer : hanul 
 * 회원 관련 CRUD, 아이디 찾기, 비밀번호 찾기를 위한 service */
public interface MemberService {
	public int signUp(MemberVO member);
	public MemberVO getInfoById(String mem_id);
	public int checkId(String new_id);
	public String findId(String phone);
	public void changePhoneInfo(String mem_id, String new_data);
	public void changeFamilyNumInfo(String mem_id, int new_data);
	public int withdrawalMember(String mem_id);
	public boolean checkPW(String mem_id, String tester);
	public void changePW(String mem_id, String new_data);
	public int findPW(HttpServletResponse resp, String mem_id, String email) throws Exception;
	public boolean sendEmail(String mem_id, String tmp_pw, String email, String div) throws Exception;
}
