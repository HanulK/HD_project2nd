package org.kabart.service;

import java.util.List;

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
	public List<ProductListVO> getProductList() {
		log.info("productGetList.........");
		return mapper.getProductList();
	}

	@Override
	public List<ProductListVO> getProductList(String prod_category) {
		log.info("productGetList" + prod_category);
		return mapper.getProductList(prod_category);
	}
	
}
