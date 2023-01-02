package org.kabart.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.CategoryDTO;
import org.kabart.domain.Criteria;
import org.kabart.domain.ProductListVO;

public interface ProductListService {

	public List<ProductListVO> getProductList(Criteria cri);
	
	public List<ProductListVO> categoryProductList(@Param("prod_category") String prod_category, @Param("cri") Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public CategoryDTO getListPage(Criteria cri, String prod_category);
}
