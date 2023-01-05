package org.kabart.service;

import java.util.List;

import org.kabart.domain.*;
import org.kabart.mapper.ProdSearchMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;



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
	
	
	//토탈 
	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
}
