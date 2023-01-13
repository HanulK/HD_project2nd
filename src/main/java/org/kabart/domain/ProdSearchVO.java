package org.kabart.domain;

import javax.mail.Store;

import lombok.*;
import lombok.extern.log4j.Log4j;



/*작성자 : 박정훈 
*기능 :  ProdSearchVO에 검색에 필요한 변수를 선언.
*/ 
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
	
	
}
