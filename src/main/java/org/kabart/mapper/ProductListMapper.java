package org.kabart.mapper;

import java.util.List;

import org.kabart.domain.Criteria;
import org.kabart.domain.ProductListVO;


public interface ProductListMapper {
	
	public List<ProductListVO> getProductList();
	
	public List<ProductListVO> getProductList(String prod_category);
	
	public List<ProductListVO> getListWithPaging(Criteria cri);
}
