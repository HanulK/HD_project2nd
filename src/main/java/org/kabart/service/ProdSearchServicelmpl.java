package org.kabart.service;

import java.util.List;

import org.kabart.domain.*;
import org.kabart.mapper.ProdSearchMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*작성자 : 박정훈
 *  기능 :  ProdSearchService에서 선언후 implements을 하여 ProdSearchServicelmpl에 searchProd와 getTotal 기능 구현
 */
@Log4j
@Service
public class ProdSearchServicelmpl implements ProdSearchService {

	@Setter(onMethod_ = @Autowired)
	private ProdSearchMapper mapper;
	
	@Override
	public List<ProductListVO> searchProd(Criteria cri) {
		log.info(cri);
		return mapper.getListWithPaging2(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
	

}
