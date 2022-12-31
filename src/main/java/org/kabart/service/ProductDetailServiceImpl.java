
package org.kabart.service;

import java.util.List;

import org.kabart.domain.ImgVO;
import org.kabart.domain.ProductDetailVO;
import org.kabart.domain.ShopVO;
import org.kabart.mapper.ProductDetailMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Service
public class ProductDetailServiceImpl implements ProductDetailService {

	private ProductDetailMapper mapper;

	@Override
	public ProductDetailVO getProdDetail(int prod_id) {
		log.info("productDetail.........");
		return mapper.get(prod_id);
	}

	@Override
	public List<ImgVO> getdetailImgs(int prod_id) {
		log.info("productDetail Img........."); 
		return mapper.getdetailImgs(prod_id);
	}

	/*
	 * @Override public List<ShopVO> getShop(int prod_id) {
	 * log.info("productDetail Shop........."); return mapper.getShop(prod_id); }
	 */
  
  }
