package org.kabart.mapper;

import java.util.List;

import org.kabart.domain.ImgVO;
import org.kabart.domain.ProductDetailVO;
import org.kabart.domain.ShopVO;
import org.kabart.domain.UsedProductVO;

public interface ProductDetailMapper {
	
	public ProductDetailVO get(int prod_id);

	public List<ImgVO> getdetailImgs(int prod_id);
	
	public List<UsedProductVO> getused(int prod_id);
	

}
