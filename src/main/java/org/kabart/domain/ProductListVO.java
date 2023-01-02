package org.kabart.domain;

import lombok.Data;

@Data
public class ProductListVO {
	private int prod_id;
	private String prod_name;
	private int prod_price;
	private String prod_category;
	private String img_srcs;
	private String img_tag;

}
