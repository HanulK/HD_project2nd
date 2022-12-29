package org.kabart.service;

import static org.hamcrest.CoreMatchers.nullValue;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.AuthVO;
import org.kabart.domain.MemberVO;
import org.kabart.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
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
	
	@Test
	public void testSignUpMember() {
		MemberVO mem = new MemberVO();
		mem.setMem_id("anna");
		mem.setMem_pw("anna");
		mem.setMem_name("김한울");
		mem.setAddress("수정로 119번길 6-1");
		mem.setAddress_detail("802");
		mem.setBirth("19940427");
		mem.setGender('W');
		mem.setPhone("01053559460");
		mem.setFamily_num(4);
	
		service.signUp(mem);
		
	} // end testSignUpMember()
}
