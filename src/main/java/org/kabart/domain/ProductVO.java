package org.kabart.domain;

import lombok.Data;

@Data
public class ProductVO {
	private String prodID;
	private String prodName;
	private int prodPrice;
	private int prodWidth;
	private int prodHeight;
	private int prodDepth;
	private String prodCategory;
}
