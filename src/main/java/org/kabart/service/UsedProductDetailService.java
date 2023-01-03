package org.kabart.service;

import org.kabart.domain.UsedProductDetailVO;

public interface UsedProductDetailService {

	public UsedProductDetailVO read(int up_id);

	public int delete(int up_id);

	public boolean update(UsedProductDetailVO upused);

}
