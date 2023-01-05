package org.kabart.domain;

import lombok.*;
import lombok.extern.log4j.Log4j;

@Data
@Log4j
@AllArgsConstructor
public class ProdSearchVO {

	
	private String prod_name;
	private int prod_price;
	private int prod_id;
	
	private int prod_width;
	private int prod_height;
	private int prod_depth;
	
	private String prod_category; 
	
	
//	private int prod_id;
//	private String prod_name;
//	private int prod_price;
//	private String prod_category;
//	private String img_srcs;
//	private String img_tag;
}
