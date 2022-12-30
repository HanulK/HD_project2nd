package org.kabart.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.extern.log4j.Log4j;


@Data
@Log4j
@AllArgsConstructor
public class SearchOrderVO {
	
	private int order_id;
	private String mem_id;
	private int prod_id;
	private int prod_isused;
	private int order_quantity;
	private int review_check;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy/MM/dd")
	private Date cancle_date;
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy/MM/dd")
	private Date order_date;
	private String prod_name;
	private int prod_price;
	private String imgs_src;
}
