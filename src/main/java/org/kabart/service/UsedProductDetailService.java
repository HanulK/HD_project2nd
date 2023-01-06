package org.kabart.service;

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
