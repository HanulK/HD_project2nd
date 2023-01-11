package org.kabart.domain;

import java.util.Date;

import lombok.Data;


/**
 *
 * @author @차민수
 * @Date 2023. 1. 11.
 * @기능 : 중고 상품 리스트를 뿌려주기 위한 중고 상품 리스트 VO
 * 
 */
@Data
public class UsedProductListVO {

	private String prod_name;
	private int prod_id;
	private int up_id;
	private String grade;
	private Date up_regdate;
	private Date sale_date;
	private int prod_price;
	private int discount_price;
	private String img_srcs;
	private String img_tag;
	private int discount_rate;
	private String prod_category;
}
