package org.kabart.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml", 
						"file:src/main/webapp/WEB-INF/spring/root-context.xml",
						"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MemberMaperTests {
	
	@Setter (onMethod_ = {@Autowired})
	private MemberMapper mapper;
	
	/* writer : hanul 
	 * 회원 정보 읽기 테스트 */
	@Test
	public void readMemberTest() {
		String member_id = "banana";
		MemberVO member = mapper.read(member_id);
		log.info(member);
	}
	
	/* writer : hanul 
	 * 아이디 중복 확인 테스트 */
	@Test
	public void idCheckTest() {
		String new_id = "asdf";
		int result = mapper.checkId(new_id);
		log.info("ID 중복 체크 : " + result);
	}
	
	/* writer : hanul 
	 * 핸드폰 번호로 아이디 조회 테스트 */
	@Test
	public void findIdTest() {
		String phone = "01051523372";
		String mem_id = mapper.findId(phone);
		log.info(mem_id);
	}
	
	/* writer : hanul 
	 * 특정 회원 정보 조회 테스트 */
	@Test
	public void getMemberInfo() {
		String mem_id = "anna";
		MemberVO mem = mapper.getInfo(mem_id);
		log.info(mem);
	}
}
