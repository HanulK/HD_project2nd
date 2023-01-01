package org.kabart.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int order_id;
	private String mem_id;
	private int prod_id;
	private String rv_text;
	private Date rv_date;

}
