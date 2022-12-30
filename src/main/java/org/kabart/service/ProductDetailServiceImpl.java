
package org.kabart.service;

import java.util.List;

import org.kabart.domain.ImgVO;
import org.kabart.domain.ProductDetailVO;
import org.kabart.domain.ShopVO;
import org.kabart.mapper.ProductDetailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j

@Service
public class ProductDetailServiceImpl implements ProductDetailService {

	@Setter(onMethod_ = @Autowired)
	private ProductDetailMapper mapper;

	@Transactional
	@Override public void getProdDetail(ProductDetailVO prod_id) {
		/* mapper.getProdDetail(); */
	}
  
  }
