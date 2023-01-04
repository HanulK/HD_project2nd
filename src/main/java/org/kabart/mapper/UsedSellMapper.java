package org.kabart.mapper;

import org.kabart.domain.UsedSellVO;

public interface UsedSellMapper {
	
	public void insertUsedProduct(UsedSellVO used);
	
	public int deleteUsedProduct(int up_id);
	
	public int updateUsedProduct(UsedSellVO used);

}
