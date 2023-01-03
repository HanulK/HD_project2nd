package org.kabart.mapper;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.Criteria;
import org.kabart.domain.UsedProductListVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
@WebAppConfiguration
public class UsedProductListMapperTests {

	@Setter(onMethod_ = @Autowired)
	private UsedProductListMapper mapper;
	
	@Test
	public void testProductGetList() {
		Criteria cri = new Criteria();
		cri.setPageNum(1);
		cri.setAmount(8);
		String prod_category = "sofa";
		List<UsedProductListVO> list = mapper.getUsedProductListWithPaging(prod_category, cri);
		list.forEach(category -> log.info(category));
	}
}
