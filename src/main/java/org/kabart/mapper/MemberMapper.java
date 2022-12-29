package org.kabart.mapper;

import org.kabart.domain.MemberVO;

public interface MemberMapper {
	public MemberVO read(String mem_id);
	public void insertMember(MemberVO member);
	public void setAuth(String mem_id);
}
