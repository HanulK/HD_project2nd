package org.kabart.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.Criteria;
import org.kabart.domain.ProductListVO;

/**
 *
 * @author @차민수
 * @Date 2023. 1. 11.
 * @기능 신상품 리스트를 보여주기 위한 인터페이스 
 * 
 */
public interface ProductListService {

	public List<ProductListVO> getListWithPaging(@Param("prod_category") String prod_category, @Param("cri") Criteria cri);
	
	public int getTotal(Criteria cri);
	
}
