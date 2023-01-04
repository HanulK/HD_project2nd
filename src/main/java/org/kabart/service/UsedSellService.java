package org.kabart.service;

import org.kabart.domain.UsedSellVO;

public interface UsedSellService {
	
	public void registerUsedProduct(UsedSellVO usedSell);
	
	public boolean modifyUsedProduct(UsedSellVO usedSell);
	
	public boolean removeUsedProduct(int up_id);
}
