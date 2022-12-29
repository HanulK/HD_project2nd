package org.kabart.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class ProductVO {
	private int prod_id;
	private String prod_name;
	private int prod_price;
	private int prod_width;
	private int prod_height;
	private int prod_depth;
	private String prod_category;
}
