package org.kabart.mapper;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.MemberVO;

public interface MemberMapper {
	public MemberVO read(String mem_id);
	public MemberVO getInfo(String mem_id);
	public int insertMember(MemberVO member);
	public void setAuth(String mem_id);
	public int idCheck(String new_id);
	public String findId(String phone);
	public void updatePhone(@Param("mem_id") String mem_id, @Param("new_data") String new_data);
	public void updateFamilyNum(@Param("mem_id") String mem_id, @Param("new_data") int new_data);
	public int removeAuthority(String mem_id);
	public void registerExpireDate(String mem_id);
	public void removeRememberMe(String mem_id);
}
