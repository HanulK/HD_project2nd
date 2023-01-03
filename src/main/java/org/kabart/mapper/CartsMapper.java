package org.kabart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.CartsVO;

public interface CartsMapper {
	public List<CartsVO> getList();

	// public List<CartsVO> insertcart();
	// public void insertSelectKey(CartsVO carts);
	public int insert(@Param("mem_id") String mem_id, @Param("prod_id") int prod_id, @Param("quantity") int quantity);
	
	public int isExist(@Param("mem_id") String mem_id, @Param("prod_id") int prod_id);
	public int quantityUpdate(@Param("mem_id")String mem_id, @Param("prod_id") int prod_id,@Param("quantity") int quantity);
}
