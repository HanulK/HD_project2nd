package org.kabart.service;

import java.util.List;

import org.kabart.domain.Criteria;
import org.kabart.domain.ProductListVO;
import org.kabart.mapper.ProductListMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ProductListServiceImpl implements ProductListService{
	
	private ProductListMapper mapper;

	@Override
	public List<ProductListVO> getProductList(Criteria cri) {
		log.info("productGetList......... With criteria" + cri);
		return mapper.getListWithPaging(cri);
	}

	@Override
	public List<ProductListVO> getProductList(String prod_category) {
		log.info("productGetList" + prod_category);
		return mapper.getProductList(prod_category);
	}
	
}
