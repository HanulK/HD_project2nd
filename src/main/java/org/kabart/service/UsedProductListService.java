package org.kabart.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.Criteria;
import org.kabart.domain.UsedProductListVO;

/**
 *
 * @author @차민수
 * @Date 2023. 1. 11.
 * @기능 중고 상품 리스트를 보여주기 위한 인터페이스  
 * 
 */

public interface UsedProductListService {

	public List<UsedProductListVO> getUsedProductListWithPaging(@Param("prod_category") String prod_category, @Param("cri") Criteria cri);
	
	public int getTotalCount(Criteria cri);
}
