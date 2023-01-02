package org.kabart.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UsedProductDetailVO {
	
	private int prod_id;  
	private String prod_name;
	private int prod_price;
	private int prod_width;
	private int prod_height;
	private int prod_depth;
	private String prod_category;
	private int up_id;
	private Date up_regdate;
	private String up_comment;
	private String grade;
	private Date sale_date;
	private int discount_rate;
	

}
