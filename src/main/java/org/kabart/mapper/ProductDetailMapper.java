package org.kabart.mapper;

import java.util.List;

import org.kabart.domain.ImgVO;
import org.kabart.domain.ProductDetailVO;
import org.kabart.domain.ShopVO;

public interface ProductDetailMapper {

	public ProductDetailVO getProdDetail(int prod_id);

	public List<ShopVO> getShop(int prod_id);

	public List<ImgVO> getImgs(int prod_id);

}
