package org.kabart.domain;

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
	private String grade;
	private int discount_rate;
	private int prod_width;
	private int prod_height;
	private int prod_depth;
	private int up_id;

	private List<ImgVO> imgs;
	private List<ShopVO> shops;

}
