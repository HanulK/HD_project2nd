package org.kabart.mapper;

/*
 * *Author : 이세아
 * *기능 : 중고제품 상세정보 Mapper
 * 
 * */

import org.kabart.domain.UsedProductDetailVO;

public interface UsedProductDetailMapper {
	
	public UsedProductDetailVO read(int up_id);

}
