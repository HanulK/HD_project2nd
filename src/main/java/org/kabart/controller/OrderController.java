package org.kabart.controller;

import java.util.*;

import org.kabart.domain.OrderVO;
import org.kabart.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import lombok.Setter;

@Controller
@RequestMapping("/kabart/order")
public class OrderController {
	
	@Setter(onMethod_= {@Autowired})
	private OrderService oService;
	
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/list")
	public void getOrderList(@RequestParam("prod_id")List<String> prod_id,@RequestParam(value="up_id",required = false, defaultValue = "-1")String up_id, Model model) {
		List<OrderVO> oList;
		int isUsed = 0;
		if(up_id.equals("-1")) {
			isUsed = 0;
			oList = oService.getProducts(prod_id, isUsed);
		}else {
			isUsed = 1;
			List<String> pList = new ArrayList<>();
			pList.add(up_id);
			oList = oService.getProducts(pList, isUsed);
		}
		model.addAttribute("products", oList);
		model.addAttribute("isUsed",isUsed);
			
	}
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/ordercomplete")
	public void complete() {
		
	}
	
}
