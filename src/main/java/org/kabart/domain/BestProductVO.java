package org.kabart.domain;

/*
 * *Author : 이세아
 * *기능 : Main화면에서 보여지는 Best Item VO
 * 
 * */

import lombok.Data;

@Data
public class BestProductVO {
	
	private int prod_id;
	private int quantity;
	private String prod_name;
	private int prod_price;
	private String img_srcs;
	private String img_tag;
	
}
