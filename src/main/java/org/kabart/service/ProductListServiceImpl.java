package org.kabart.service;

import java.util.List;

import org.kabart.domain.Criteria;
import org.kabart.domain.ProductListVO;
import org.kabart.mapper.ProductListMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 *
 * @author @차민수
 * @Date 2023. 1. 11.
 * @기능  신상품 리스트를 보여주기 위한 인터페이스를 구현한 구현체 (비즈니스 로직 처리)
 * 
 */
@Log4j
@Service
@AllArgsConstructor
public class ProductListServiceImpl implements ProductListService{

	private ProductListMapper mapper;

	@Override
	public List<ProductListVO> getListWithPaging(String prod_category, Criteria cri) {
		log.info("productGetList" + prod_category);
		if (prod_category.equals("all")) {
			prod_category = "";
		}
		return mapper.getListWithPaging(prod_category, cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		if (cri.getProd_category().equals("all")) {
			cri.setProd_category("");
		}
		return mapper.getTotalCount(cri);
	}
	
	
}
