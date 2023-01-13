package org.kabart.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/* *Author : 남승현
 * 기능 : 장바구니 등록 및 불러오는 경우 필요한 데이터들을 모아놓음
 */
@Data
@AllArgsConstructor
public class CartsVO {
	
	private int prod_id;
	private int quantity; 
	private String prod_name;
	private int prod_price;
	private String img_srcs;
	private String prod_category;
}
