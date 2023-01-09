package org.kabart.controller;

import java.util.*;

import org.apache.catalina.tribes.group.Response;
import org.kabart.domain.*;
import org.kabart.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import lombok.Setter;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/kabart/order")
public class OrderController {

	@Setter(onMethod_ = { @Autowired })
	private OrderService oService;

	@PreAuthorize("isAuthenticated()")
	@GetMapping("/list")
	public void getOrderList(@RequestParam("prod_id") List<String> prod_id,
			@RequestParam(value = "up_id", required = false, defaultValue = "-1") String up_id,@RequestParam(value="quantity",required = false, defaultValue = "1")String quantity, Model model) {
		List<OrderVO> oList;
		int isUsed = 0;
		if (up_id.equals("-1")) {
			isUsed = 0;
			oList = oService.getProducts(prod_id, isUsed);
		} else {
			isUsed = 1;
			List<String> pList = new ArrayList<>();
			pList.add(up_id);
			oList = oService.getProducts(pList, isUsed);
		}
		if(!quantity.equals("1")) {
			oList.get(0).setQuantity(Integer.parseInt(quantity));
		}
		model.addAttribute("products", oList);
		model.addAttribute("isUsed", isUsed);

	}

	@PreAuthorize("isAuthenticated()")
	@GetMapping("/ordercomplete")
	public void complete() {

	}

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
	
	@PostMapping(value = "/cancle",consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> cancle(@RequestBody UpdateOrderVO oVO) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", oService.orderCancle(oVO));
		return new ResponseEntity<>(map,HttpStatus.OK);
	}

}
