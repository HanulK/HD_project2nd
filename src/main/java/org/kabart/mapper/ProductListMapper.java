package org.kabart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.*;


public interface ProductListMapper {
	
	public List<ProductListVO> getListWithPaging(@Param("prod_category") String prod_category, @Param("cri") Criteria cri);
	
	public int getTotalCount(Criteria cri); 
}
