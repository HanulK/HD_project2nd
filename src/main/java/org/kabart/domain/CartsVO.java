package org.kabart.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartsVO {
	
	private String mem_id;
	private int prod_id;
	private int quantity;
	
	
	private String prod_category; 
	private String prod_name;
	private int prod_price;
	private int prod_width;
	private int prod_height;
	private int prod_depth;
	
	
	private String imgSrcs;
	private String imgTag;
	private int prodID;
	
	
	
}
