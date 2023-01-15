package org.kabart.controller;

import java.util.*;

import org.kabart.domain.*;
import org.kabart.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import lombok.Setter;

/* *Author : 남승현
 * 기능 : 주문 관련 컨트롤러   
 */
@Controller
@RequestMapping("/kabart/order")
public class OrderController {
	
	// 주문 서비스에 대한 의존성 주입 
	@Setter(onMethod_ = { @Autowired })
	private OrderService oService;
	
	/* *Author : 남승현
	 * 기능 : 주문서에 필요한 데이터를 담아, 주문서 페이지로 이동   
	 * 매개변수 : 상품 아이디 리스트, 중고상품 아이디, 상품 수량
	 * 기타 : 주문서에 대한 정보의 경우 사용자가 인증된 사용자여야만 
	 *        진행가능하기에 PreAuthorize 어노테이션을 통해 확인 
	 */
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/list")
	public void getOrderList(@RequestParam("prod_id") List<String> prod_id,
			@RequestParam(value = "up_id", required = false, defaultValue = "-1") String up_id,@RequestParam(value="quantity",required = false, defaultValue = "1")String quantity, Model model) {
		List<OrderVO> oList;
		int isUsed = 0;
		// 중고상품 아이디가 넘어오지 않은 경우 넘어온 prod_id에 대한 정보를 불러옴 
		if (up_id.equals("-1")) {
			isUsed = 0;
			oList = oService.getProducts(prod_id, isUsed);
		} else {
			// 중고상품인 경우, 새로운 상품 아이디 리스트에 해당 상품만을 추가하여 정보를 불러옴 
			isUsed = 1;
			List<String> pList = new ArrayList<>();
			pList.add(up_id);
			oList = oService.getProducts(pList, isUsed);
		}
		// 신상품 중 수량을 2개 이상으로 설정 후, 바로 구매시 진행 
		if(!quantity.equals("1")) {
			// 바로구매인 경우, 한 상품만 구매하므로 첫 상품에 대한 수량을 변경시켜줌 
			oList.get(0).setQuantity(Integer.parseInt(quantity));
		}
		// model에 해당 상품 리스트 및 중고상품 여부를 담아 페이지로 넘겨줌 
		model.addAttribute("products", oList);
		model.addAttribute("isUsed", isUsed);
	}
	
	/* *Author : 남승현
	 * 기능 : 결제하기 후, 주문완료 페이지로 이동    
	 * 매개변수 : 주문한 상품 데이터 
	 */
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/ordercomplete")
	public void insertCart(@RequestParam("mem_id") String mem_id,
			@RequestParam(value = "isUsed", required = false, defaultValue = "0") String Used,
			@RequestParam("prod_id") List<String> prod_ids, @RequestParam("quantity") List<String> quantities,
			@RequestParam("address_detail") String address_detail, @RequestParam("address") String address,
			@RequestParam("phone") String phone, @RequestParam("dname") String dname, Model model) {

		List<OrderVO> list = new ArrayList<>();
		int result = oService.insertProducts(mem_id, address, address_detail, phone, dname, prod_ids, quantities, Used);
		if (prod_ids.size() == result) {
			list = oService.getProducts(prod_ids,Integer.parseInt(Used));
		}
		
		model.addAttribute("products", list);

	}
	
	/* *Author : 남승현
	 * 기능 : 주문 취소 시, 주문 데이터 업데이트 
	 * 매개변수 : 주문 번호, 사용자 아이디, 상품 아이디
	 * 기타 : 주문 취소의 경우 ajax를 통해 처리하도록 설계하여, ResponseBody 어노테이션을 활용하여
	 *        HttpBody내에 성공했다는 결과와 HttpHeader에 상태정보를 담아 넘겨줌  
	 */
	@PostMapping(value = "/cancle",consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> cancle(@RequestBody UpdateOrderVO oVO) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", oService.orderCancle(oVO));
		return new ResponseEntity<>(map,HttpStatus.OK);
	}

}
