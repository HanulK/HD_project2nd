package org.kabart.service;

import org.kabart.domain.MemberVO;
import org.kabart.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService {
	
	@Setter (onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Setter (onMethod_ = @Autowired)
	private PasswordEncoder pwencoder;

	@Transactional
	@Override
	public void signUp(MemberVO member) {
		member.setMem_pw(pwencoder.encode(member.getMem_pw()));
		mapper.insertMember(member);
		mapper.setAuth(member.getMem_id());
	}
}
