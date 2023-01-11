package org.kabart.domain;

import lombok.Data;

/**
 * 
 * @author 차민수
 * 기능 : 신상품 리스트를 뿌려주기 위한 신상품 리스트 VO
 *
 */
@Data
public class ProductListVO {
	private int prod_id;
	private String prod_name;
	private int prod_price;
	private String prod_category;
	private String img_srcs;
	private String img_tag;

}
