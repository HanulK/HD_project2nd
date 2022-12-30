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
	
	@Test
	public void readMemberTest() {
		String member_id = "banana";
		MemberVO member = mapper.read(member_id);
		log.info(member);
	}
}
