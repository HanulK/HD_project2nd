package org.kabart.mapper;

/*
 * *Author : 이세아
 * *기능 : 상세제품 정보 내의 연령대 분석/가구원 분석을 위한 Mapper
 * 
 * */

import java.util.List;

import org.kabart.domain.*;

public interface GraphMapper {
	
	public List<FamilyGraphVO> family(int prod_id);
	
	public List<AgeGraphVO> age(int prod_id);

}
