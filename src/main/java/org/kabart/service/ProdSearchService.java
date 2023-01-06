package org.kabart.service;

import java.util.List;

import org.kabart.domain.*;
import org.springframework.stereotype.Service;
@Service
public interface ProdSearchService {
	
	public List<ProductListVO> searchProd(Criteria cri);

	int getTotal(Criteria cri);

}
