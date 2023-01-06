package org.kabart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.OrderVO;

public interface OrderMapper {

	public List<OrderVO> getNewList(List<String> prod_id);

	public List<OrderVO> getUsedList(String prod_id);

	public int orderID(@Param("mem_id") String mem_id, @Param("addr") String addr,
			@Param("addr_detail") String addr_detail, @Param("phone") String phone, @Param("dname") String dname);

	public int insertOrders(@Param("mem_id") String mem_id, @Param("prod_id") String prod_id,
			@Param("quantity") String quantity, @Param("isUsed") String isUsed,
			@Param("review_check") String review_check);
	
	public int updateUsed(@Param("up_id") String up_id, @Param("p_id")String p_id);

}
