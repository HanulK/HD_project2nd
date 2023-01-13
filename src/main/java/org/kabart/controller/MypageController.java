package org.kabart.controller;

import java.security.Principal;
import java.util.*;

import org.kabart.domain.*;
import org.kabart.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/kabart/mypage")
@Log4j
public class MypageController {

	@Setter(onMethod_ = { @Autowired })
	private CartsService cService;

	@Setter(onMethod_ = { @Autowired })
	private MemberService mService;

	@GetMapping("/my")
	public void myMain() {

	}

	/*
	 * *Author : 남승현 
	 * 기능 : 장바구니 상품 페이지로 이동
	 */
	@GetMapping("/cart")
	public void cartsGet() {

	}

	/*
	 * *Author : 남승현 기능 : 장바구니 상품을 받아 JSON 형태로 JSP에 넘겨줌 매개변수 : 사용자 아이디 기타 : 사용자 상품
	 * 수량 변경 및 삭제와 같은 상황에서 ajax 처리를 위해 ResponseBody 어노테이션을 활용 결과 값은 HttpBody에 담아 반환
	 */
	@PostMapping(value = "/cartlist", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<List<CartsVO>> getCartList(@RequestBody Map<String, Object> body) {
		log.info(body.get("mem_id"));
		return new ResponseEntity<>(cService.getList((String) body.get("mem_id")), HttpStatus.OK);

	}

	/*
	 * *Author : 남승현 기능 : 장바구니 담기 시, 존재 여부에 따른 추가 혹은 수량 변경 매개변수 : 사용자 아이디, 상품 아이디,
	 * 상품 수량 기타 : 장바구니 추가 시, 페이지 전환없이 수행하기위해 JSP단에서 ajax로 요청, 그에 따른 응답을 위해
	 * ResponseBody 어노테이션 활용, 결과 값은 HttpBody에 담아 반환
	 */
	@PostMapping(value = "/cart", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> addCart(@RequestBody Map<String, Object> body) {
		String mem_id = (String) body.get("mem_id");
		int prod_id = (int) body.get("prod_id");
		int quantity = (int) body.get("quantity");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", cService.isExist(mem_id, prod_id, quantity));
		return new ResponseEntity<>(map, HttpStatus.OK);

	}

	/*
	 * *Author : 남승현 기능 : 장바구니 상품 전체 삭제, 선택 삭제 매개변수 : 사용자 아이디, 상품 아이디 기타 : 다수의 상품
	 * 아이디가 들어오는 경우를 위해 리스트에 상품 아이디를 담음 상품 아이디가 들어오지 않고, 삭제요청을 하는 경우 전체 삭제로 판단
	 */
	@GetMapping(value = "/removeCarts", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> removeCart(@RequestParam("mem_id") String mem_id,
			@RequestParam(value = "prod_id", required = false) List<Integer> prod_id) {
		if (prod_id == null) {
			cService.removeCartAll(mem_id);
		} else {
			cService.removeCart(mem_id, prod_id);
		}
		return new ResponseEntity<String>(HttpStatus.OK);

	}

	@GetMapping("/profile")
	public void profile(Principal principal, Model model) {
		MemberVO mem = mService.getInfoById(principal.getName());
		model.addAttribute("member", mem);
	}

	@ResponseBody
	@RequestMapping(value = "/changeInfo.do", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public void idCheck(@RequestBody Map<String, Object> body) {
		String mem_id = (String) body.get("mem_id");
		String type = (String) body.get("type");

		log.warn("new data : " + body.get("newData"));
		if (type.equals("phone")) {
			// 전화 번호 변경
			String new_data = (String) body.get("newData");
			mService.changePhoneInfo(mem_id, new_data);
		} else if (type.equals("new_fm")) {
			// 가구원 수 변경
			int new_data = Integer.parseInt((String) body.get("newData"));
			mService.changeFamilyNumInfo(mem_id, new_data);
		}
	}

	@ResponseBody
	@RequestMapping(value = "/changePW.do", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> changePW(@RequestBody Map<String, Object> body) {
		String mem_id = (String) body.get("mem_id");
		String origin = (String) body.get("old_pw");
		String modified = (String) body.get("new_pw");

		boolean match = mService.checkPW(mem_id, origin);
		if (match) {
			mService.changePW(mem_id, modified);
			return new ResponseEntity<String>(HttpStatus.OK);
		} else {
			return new ResponseEntity<String>(HttpStatus.NOT_FOUND);
		}

	}

	@GetMapping("/withdrawal")
	public void withdrawal() {
	}

	@RequestMapping("/withdrawal.do")
	public String withdrawalAction(Principal principal, SessionStatus sessionStatus, RedirectAttributes attr) {
		String mem_id = principal.getName();
		int result = mService.withdrawalMember(mem_id);
		if (result > 0) {
			SecurityContextHolder.clearContext();
		}
		return "redirect:/";
	}

	/*
	 * *Author : 남승현 
	 * 기능 : 구매내역 페이지로 이동
	 */
	@GetMapping("/buying")
	public void buying() {

	}
	
	/*
	 * *Author : 남승현 
	 * 기능 : 판매내역 페이지로 이동
	 */
	@GetMapping("/selling")
	public void selling() {

	}

}
