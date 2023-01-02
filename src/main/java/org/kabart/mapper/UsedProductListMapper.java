package org.kabart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.Criteria;
import org.kabart.domain.UsedProductListVO;

public interface UsedProductListMapper {

	public List<UsedProductListVO> getUsedProductListWithPaging(@Param("prod_category") String prod_category, @Param("cri") Criteria cri);
	
	public int getTotalCount(Criteria cri); 
}
