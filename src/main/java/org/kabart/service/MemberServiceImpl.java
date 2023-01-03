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
	
	@Setter (onMethod_ = {@Autowired})
	private MemberMapper mapper;
	
	@Setter (onMethod_ = {@Autowired})
	private PasswordEncoder pwencoder;

	@Transactional
	@Override
	public int signUp(MemberVO member) {
		member.setMem_pw(pwencoder.encode(member.getMem_pw()));
		int result = mapper.insertMember(member);
		mapper.setAuth(member.getMem_id());
		return result;
	}
	
	@Override
	public MemberVO getInfoById(String mem_id) {
		return mapper.getInfo(mem_id);
	}
	
	@Override
	public int idCheck(String new_id) {
		int result = mapper.idCheck(new_id);
		return result;
	}
	
	@Override
	public String findId(String phone) {
		return mapper.findId(phone);
	}
	
	@Override
	public void changePhoneInfo(String mem_id, String new_data) {
		mapper.updatePhone(mem_id, new_data);
	}
	
	@Override
	public void changeFamilyNumInfo(String mem_id, int new_data) {
		mapper.updateFamilyNum(mem_id, new_data);
	}
}
