package org.kabart.service;

import org.kabart.domain.UsedSellVO;

/**
 *
 * @author @차민수
 * @Date 2023. 1. 11.
 * @기능 중고 상품 판매를 위한 인터페이스 
 * 
 */
public interface UsedSellService {
	
	public void registerUsedProduct(UsedSellVO usedSell);
	
	public boolean modifyUsedProduct(UsedSellVO usedSell);
	
	public boolean removeUsedProduct(int up_id);
}
