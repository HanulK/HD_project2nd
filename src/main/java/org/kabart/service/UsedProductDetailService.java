package org.kabart.service;

/*
 * *Author : 이세아
 * *기능 : 중고 제품 상세 정보 Service
 * 
 * */

import java.util.List;

import org.kabart.domain.*;

public interface UsedProductDetailService {

	public UsedProductDetailVO read(int up_id);

	
	public List<AttachVO> getAttachList(int up_id);
	/*
	 * public int delete(int up_id);
	 * 
	 * public boolean update(UsedProductDetailVO upused);
	 */

}
