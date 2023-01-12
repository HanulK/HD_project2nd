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

	@GetMapping("/cart")
	public void cartsGet() {

	}

	@PostMapping(value = "/cartlist", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<List<CartsVO>> getCartList(@RequestBody Map<String, Object> body) {
		log.info(body.get("mem_id"));
		return new ResponseEntity<>(cService.getList((String) body.get("mem_id")), HttpStatus.OK);

	}
	
	@PostMapping(value = "/cart", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> addCart(@RequestBody Map<String, Object> body) {
		String mem_id = (String) body.get("mem_id");
		System.out.println("inser Cart gogo ");
		int prod_id = (int) body.get("prod_id");
		int quantity = (int) body.get("quantity");
		System.out.println(mem_id);
		System.out.println(prod_id);
		System.out.println(quantity);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", cService.isExist(mem_id, prod_id, quantity));
		return new ResponseEntity<>(map, HttpStatus.OK);

	}

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

	/* writer : hanul 
	 * 마이페이지 첫 화면으로 이동
	 * security 에서 사용자 정보를 입력 받아 아이디 등 정보 표시 */ 
	@GetMapping("/profile")
	public void profile(Principal principal, Model model) {
		MemberVO mem = mService.getInfoById(principal.getName());
		model.addAttribute("member", mem);
	}

	/* writer : hanul 
	 * 개인정보 수정(전화번호, 가구원 수 변경) action */ 
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
	
	/* writer : hanul 
	 * 비밀번호 변경 action
	 * member Service의 checkPW로 사용자가 입력한 비밀번호 확인 후 변경 진행 */ 
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

	/* writer : hanul 
	 * 회원 탈퇴 페이지로 넘어가는 controller */ 
	@GetMapping("/withdrawal")
	public void withdrawal() {
	}

	/* writer : hanul 
	 * 회원 탈퇴 action */
	@RequestMapping("/withdrawal.do")
	public String withdrawalAction(Principal principal, SessionStatus sessionStatus, RedirectAttributes attr) {
		String mem_id = principal.getName();
		int result = mService.withdrawalMember(mem_id);
		if (result > 0) {
			SecurityContextHolder.clearContext();
		}
		return "redirect:/";
	}

   @GetMapping("/buying")
   public void buying() {


	}

	@GetMapping("/selling")
	public void selling() {

	}
	
	@PostMapping("/update")
	@ResponseBody
	public ResponseEntity<String> updateAmount(@RequestBody Map<String,Object> body){
		String mem_id = (String)body.get("mem_id");
		int prod_id = (int)body.get("prod_id");
		int quantity = (int)body.get("quantity");
		cService.updateCart(mem_id, prod_id, quantity);
		return new ResponseEntity<String>(HttpStatus.OK);
	}
}

