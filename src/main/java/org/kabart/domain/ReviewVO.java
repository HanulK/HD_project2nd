package org.kabart.domain;

/*
 * *Author : 이세아
 * *기능 : 제품 상세정보 내의 상품 후기 VO
 * 
 * */

import java.util.Date;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewVO {
	
	private int order_id;
	private String mem_id;
	private String rv_text;
	private Date rv_date;
	private int prod_id;

}
