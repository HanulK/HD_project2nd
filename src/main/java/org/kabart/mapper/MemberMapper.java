package org.kabart.mapper;

import org.kabart.domain.MemberVO;

public interface MemberMapper {
	public MemberVO read(String mem_id);
	public MemberVO getInfo(String mem_id);
	public int insertMember(MemberVO member);
	public void setAuth(String mem_id);
	public int idCheck(String new_id);
	public String findId(String phone);
}
