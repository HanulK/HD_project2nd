package org.kabart.mapper;

import java.util.List;

import org.kabart.domain.ImgVO;
import org.kabart.domain.ProductDetailVO;
import org.kabart.domain.ShopVO;

public interface ProductDetailMapper {
	
	public ProductDetailVO get(int prod_id);

	public List<ImgVO> getdetailImgs(int prod_id);
	 
//	public ProductDetailVO getProdDetail(int prod_id);
	

}
