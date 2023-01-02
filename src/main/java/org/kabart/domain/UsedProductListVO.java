package org.kabart.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UsedProductListVO {

	private String prod_name;
	private int prod_id;
	private int up_id;
	private String grade;
	private Date up_regdate;
	private int prod_price;
	private int discount_price;
	private String img_srcs;
	private String img_tag;
	private int discount_rate;
	private String prod_category;
}
