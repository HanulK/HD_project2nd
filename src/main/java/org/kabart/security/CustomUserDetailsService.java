package org.kabart.security;

import org.kabart.domain.MemberVO;
import org.kabart.mapper.MemberMapper;
import org.kabart.security.domain.CustomUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/* writer : hanul 
 * 프로젝트에서 사용자의 이름, 가구원 수 등 자세한 정보를 이용하기 위해 구현 */
@Log4j
public class CustomUserDetailsService implements UserDetailsService {
	
	@Setter (onMethod_ = {@Autowired})
	private MemberMapper memberMapper;

	/* member mapper 인터페이스를 사용하여 DB의 사용자 권한 등의 정보 불러오기 */
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.warn("========= login user by username : " + username);
		
		// MemberVO -> UserDatails(type of spring security)
		MemberVO vo = memberMapper.read(username);
		log.warn("queried by member mapper : " + vo);
		
		return vo == null ? null : new CustomUser(vo);
	}

}
