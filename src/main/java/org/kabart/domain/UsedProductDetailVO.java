package org.kabart.domain;

import java.util.*;

import lombok.Data;

@Data
public class UsedProductDetailVO {
	
	// used_prod_detail 에 들어가는 내용
	
	private int prod_id;  
	private String prod_name;
	private int prod_price;
	private int prod_width;
	private int prod_height;
	private int prod_depth;
	
	private int up_id;
	private Date up_regdate;
	private String up_comment;
	private String grade;
	private Date sale_date;
	private int discount_rate;
	
	private String img_srcs;
	private String img_tag;
	
	private int used_price;
	
	private List<AttachVO> attachList;
	

}
