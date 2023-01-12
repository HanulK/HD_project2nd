package org.kabart.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.MemberVO;
import org.kabart.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MemberServiceTests {
	@Setter (onMethod_ = @Autowired)
	private PasswordEncoder pwencoder;
	
	@Setter (onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Setter (onMethod_ = @Autowired)
	private MemberService service;
	
	/* writer : hanul 
	 * 회원 가입 테스트 
	 * 비밀번호 암호화되어 DB에 저장됨을 확인 완료 */
	@Test
	public void testSignUp() {
		MemberVO mem = new MemberVO();
		mem.setMem_id("banana");
		mem.setMem_pw("banana");
		mem.setMem_name("미니언즈");
		mem.setAddress("미니언즈 왕국");
		mem.setAddress_detail("1번 방");
		mem.setBirth("19940427");
		mem.setGender('M');
		mem.setPhone("01053559460");
		mem.setFamily_num(3);
	
		service.signUp(mem);
		
	}
	
	/* writer : hanul 
	 * 특정 회원 정보 조회 테스트 */
	@Test
	public void getInfoTest() {
		log.info("getInfoById service test : ");
		String id = "banana";
		MemberVO mem = service.getInfoById(id);
		log.info(mem);
	}
	
	/* writer : hanul 
	 * 아이디 중복 확인 테스트 */
	@Test
	public void checkIdTest() {
		String testId1 = "yumi";
		String testId2 = "banana";
		
		String result = service.checkId(testId1) == 0 ? " : 없는 ID":" : 이미 존재하는 ID";
		log.info(testId1 + result);

		result = service.checkId(testId2) == 0 ? " : 없는 ID":" : 이미 존재하는 ID";
		log.info(testId2 + result);
	}
	
	/* writer : hanul 
	 * 핸드폰 번호로 아이디 조회 테스트 */
	@Test
	public void findIdTest() {
		String phone = "01053559460";
		log.info(service.findId(phone));
	}
	
	/* writer : hanul 
	 * 전화번호 데이터 변경 테스트 */
	@Test
	public void changePhoneInfoTest() {
		String mem_id = "banana";
		String new_phone = "01011112222";
		service.changePhoneInfo(mem_id, new_phone);
		log.info(service.getInfoById(mem_id));
	}

	/* writer : hanul 
	 * 가구원 수 데이터 변경 테스트 */
	@Test
	public void changeFamilyNumInfoTest() {
		String mem_id = "banana";
		int new_family_num = 1;
		service.changeFamilyNumInfo(mem_id, new_family_num);
		log.info(service.getInfoById(mem_id));
	}
	
	/* writer : hanul 
	 * 비밀번호 일치 확인 테스트 */
	@Test
	public void checkPWTest() {
		String mem_id = "banana";
		String testPW1 = "banana";
		String testPW2 = "bananabanana";
		String testPW3 = "HkdZmfceXk0V";
		
		log.info("PW test 1 : " + service.checkPW(mem_id, testPW1));
		log.info("PW test 2 : " + service.checkPW(mem_id, testPW2));
		log.info("PW test 3 : " + service.checkPW(mem_id, testPW3));
	}
	
	/* writer : hanul 
	 * 비밀번호 변경 테스트 */
	@Test
	public void changePWTest() {
		String mem_id = "banana";
		String new_pw = "bananabanana";
		
		service.changePW(mem_id, new_pw);
		log.info("변경된 PW 확인 : "+service.checkPW(mem_id, new_pw));
	}
	
	/* writer : hanul 
	 * 비밀번호 찾기 테스트 */
	@Test
	public void findPWest() {
		String mem_id = "banana";
		String email = "hanscnnee@gmail.com";
		MockHttpServletResponse resp = new MockHttpServletResponse();
		try {
			service.findPW(resp, mem_id, email);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/* writer : hanul 
	 * 회원 탈퇴 테스트 */
	@Test
	public void withdrawalTest() {
		String mem_id = "banana";
		service.withdrawalMember(mem_id);
		log.info(mapper.read(mem_id) == null ? "탈회 성공":"탈회 실패");
	}
}
