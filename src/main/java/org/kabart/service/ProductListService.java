package org.kabart.service;

import java.util.List;

import org.kabart.domain.ProductListVO;

public interface ProductListService {

	public List<ProductListVO> getProductList();
	
	public List<ProductListVO> getProductList(String prod_category);
}
