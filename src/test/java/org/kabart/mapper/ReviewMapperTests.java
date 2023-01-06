package org.kabart.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
@WebAppConfiguration
public class ReviewMapperTests {

	@Setter(onMethod_ = @Autowired)
	private ReviewMapper mapper;

	@Test
	public void testMapper() {

		log.info(mapper);
	}

	@Test
	public void insert() {
		int order_id = 50;
		String mem_id = "dodo";
		String rv_text =" 포근하고 따듯한,,";
		String rv_date = null;
		int prod_id = 60088;
		ReviewVO rVo = new ReviewVO(order_id, mem_id, rv_text, rv_date, prod_id);
		mapper.insert(rVo);
	
	}

	@Test
	public void testGet() {
		int prod_id = 60088;
		List<ReviewVO> rvs = mapper.get(prod_id);
		rvs.forEach(review -> log.info(review));
	}

}
