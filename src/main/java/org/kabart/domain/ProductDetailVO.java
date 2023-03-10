package org.kabart.domain;

/*
 * *Author : 이세아
 * *기능 : 제품 상세정보 VO
 * 
 * */

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
public class ProductDetailVO {

	private int prod_id;
	private String prod_name;
	private int prod_price;
	private String prod_category;
	private int prod_width;
	private int prod_height;
	private int prod_depth;
	private String img_srcs;
	private String img_tag;

	private List<ShopVO> shops;
	private List<ImgVO> Imgs;
	private List<UsedProductVO> useds;

}
