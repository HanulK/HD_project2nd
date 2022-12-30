package org.kabart.service;

import java.util.List;

import org.kabart.domain.CategoryDTO;
import org.kabart.domain.Criteria;
import org.kabart.domain.ProductListVO;
import org.kabart.mapper.ProductListMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ProductListServiceImpl implements ProductListService{

	private ProductListMapper mapper;

	@Override
	public List<ProductListVO> getProductList(Criteria cri) {
		log.info("productGetList......... With criteria" + cri);
		return mapper.getListWithPaging(cri);
	}

	@Override
	public List<ProductListVO> categoryProductList(String prod_category, Criteria cri) {
		log.info("productGetList" + prod_category);
		return mapper.getCategoyProductList(prod_category, cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
	
	@Override
	public CategoryDTO getListPage(Criteria cri, String prod_category) {
		return new CategoryDTO(mapper.getTotalCountCategory(prod_category), mapper.getCategoyProductList(prod_category, cri));
	}
	
}
