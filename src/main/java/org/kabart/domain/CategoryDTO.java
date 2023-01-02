package org.kabart.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor

public class CategoryDTO {

	private int categoryProductCnt;
	private List<ProductListVO> list;
}
