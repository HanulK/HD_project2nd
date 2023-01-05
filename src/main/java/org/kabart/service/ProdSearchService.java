package org.kabart.service;

import java.util.List;

import org.kabart.domain.*;

public interface ProdSearchService {
	
	public List<ProductListVO> searchProd(Criteria cri);
//	public int getTotalCount(Criteria cri);
	
}
