package org.kabart.domain;

/*
 * *Author : 이세아
 * *기능 : 제품 상세정보 내의 Display Shop viewer VO
 * 
 * */

import lombok.Data;

@Data
public class ShopVO {
	
	private int prod_id;
	private String shop_name;
	private String shop_address;

}
