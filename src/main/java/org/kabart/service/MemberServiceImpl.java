package org.kabart.service;

import org.kabart.domain.MemberVO;
import org.kabart.mapper.*;
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
	private MemberMapper mMapper;
	
	@Setter(onMethod_ = @Autowired)
	private CartsMapper cMapper;
	
	@Setter (onMethod_ = {@Autowired})
	private PasswordEncoder pwencoder;

	@Transactional
	@Override
	public int signUp(MemberVO member) {
		member.setMem_pw(pwencoder.encode(member.getMem_pw()));
		int result = mMapper.insertMember(member);
		mMapper.setAuth(member.getMem_id());
		return result;
	}
	
	@Override
	public MemberVO getInfoById(String mem_id) {
		return mMapper.getInfo(mem_id);
	}
	
	@Override
	public int idCheck(String new_id) {
		int result = mMapper.idCheck(new_id);
		return result;
	}
	
	@Override
	public String findId(String phone) {
		return mMapper.findId(phone);
	}
	
	@Override
	public void changePhoneInfo(String mem_id, String new_data) {
		mMapper.updatePhone(mem_id, new_data);
	}
	
	@Override
	public void changeFamilyNumInfo(String mem_id, int new_data) {
		mMapper.updateFamilyNum(mem_id, new_data);
	}
	
	@Transactional
	@Override
	public int withdrawalMember(String mem_id) {
		// member cart 비우기
		cMapper.deleteAllCartProds(mem_id);
		
		// member 탈회 날자 update
		mMapper.registerExpireDate(mem_id);
		
		// 자동 로그인 기록 지우기
		mMapper.removeRememberMe(mem_id);

		// member 권한 지우기
		int result = mMapper.removeAuthority(mem_id);
		
		return result;
	}
}
