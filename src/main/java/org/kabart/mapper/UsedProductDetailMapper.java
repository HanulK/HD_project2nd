package org.kabart.mapper;

import org.kabart.domain.UsedProductDetailVO;

public interface UsedProductDetailMapper {
	
	public UsedProductDetailVO read(int up_id);
	
	public int delete(int up_id);
	
	public int update(UsedProductDetailVO upused);

}
