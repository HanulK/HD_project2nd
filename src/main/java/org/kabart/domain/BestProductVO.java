package org.kabart.domain;

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
