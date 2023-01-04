package org.kabart.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

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
