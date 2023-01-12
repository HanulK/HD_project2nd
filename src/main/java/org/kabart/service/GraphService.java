package org.kabart.service;

/*
 * *Author : 이세아
 * *기능 : 상세 제품 정보 내의 소비자 분석표를 위한 Service
 * 
 * */

import java.util.List;

import org.kabart.domain.*;

public interface GraphService {
	
	public List<FamilyGraphVO> family(int prod_id);
	
	public List<AgeGraphVO> age(int prod_id);

}
