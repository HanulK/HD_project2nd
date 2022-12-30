package org.kabart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.Criteria;
import org.kabart.domain.ProductListVO;


public interface ProductListMapper {
	
	public List<ProductListVO> getListWithPaging(Criteria cri);
	
	public List<ProductListVO> getCategoyProductList(@Param("prod_category") String prod_category, @Param("cri") Criteria cri);
	
	public int getTotalCount(Criteria cri); 
}
