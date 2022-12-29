package org.kabart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.kabart.domain.CartsVO;


public interface CartsMapper {

	
	
	@Select("select * from carts")
	public List<CartsVO> getList();
	
	
	
	
	
//	public CartsVO read(String mem_id,int quentity, int prod_id);
}
