package org.kabart.service;

/*
 * *Author : 이세아
 * *기능 : 상세 제품 정보 Service
 * 
 * */

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.ImgVO;
import org.kabart.domain.ProductDetailVO;
import org.kabart.domain.ShopVO;
import org.kabart.domain.UsedProductVO;

public interface ProductDetailService {

	public ProductDetailVO getProdDetail(int prod_id);

	public List<ImgVO> getdetailImgs(@Param("prod_id") int prod_id);

	public List<UsedProductVO> getused(@Param("prod_id") int prod_id);

}
