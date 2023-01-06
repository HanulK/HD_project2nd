package org.kabart.mapper;

import java.util.List;

import org.kabart.domain.Criteria;
import org.kabart.domain.ProductListVO;

//정훈
public interface ProdSearchMapper {
	
	public List<ProductListVO> getListWithPaging2(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
}
