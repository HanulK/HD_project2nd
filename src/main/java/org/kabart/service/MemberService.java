package org.kabart.service;

import org.kabart.domain.MemberVO;

public interface MemberService {
	public int signUp(MemberVO member);
	public MemberVO getInfoById(String mem_id);
}
