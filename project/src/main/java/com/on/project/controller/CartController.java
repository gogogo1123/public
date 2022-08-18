package com.on.project.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.on.project.serivce.CartService;
import com.on.project.serivce.MemberService;
import com.on.project.vo.CartVo;
import com.on.project.vo.MemberVo;
import com.on.project.vo.TotalVo;

@Controller
@RequestMapping("/cart/*")
public class CartController {

	private CartService cartService;

	@Autowired
	public CartController(CartService cartService) {
		this.cartService = cartService;
	}

	@RequestMapping("insert.do")
	public String insert(CartVo vo, HttpSession session) {

		String userid = (String) session.getAttribute("member_id");

		if (userid == null) {
			return "redirect:/member/login.do";
		} else {
			vo.setMember_id(userid);
			cartService.insert(vo);
			return "redirect:/cart/list.do";
		}

	}

	@RequestMapping("list.do")
	public ModelAndView list(HttpSession session, ModelAndView mav) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		String userid = (String) session.getAttribute("member_id");

		if (userid != null) {
			List<TotalVo> list = cartService.list(userid);
			int sumMoney = cartService.sumMoney(userid);
			int fee = sumMoney >= 100000 ? 0 : 2500;

			map.put("sumMoney", sumMoney); // 상품 * 수량 합ㄱㅖ{금액
			map.put("fee", fee); // 배송비 10만원 이상이면 무료 아니면 2500원 을 줌
			map.put("list", list); // 카트에 담긴 정보를 카트 테이블에다가 리스트화
			map.put("count", list.size()); // 장바구니에 담겨잇는 개수
			mav.setViewName("cart/cart_list");

			mav.addObject("map", map);
			return mav;
		} else {
			return new ModelAndView("member/login");
		}

	}

	@RequestMapping("delete.do") // get방식으로 리스트에서 cart_id 값을 받아서 넣어줌.
	public String delete(int cart_id) {
		cartService.delete(cart_id);
		return "redirect:/cart/list.do";

	}

	@RequestMapping("deleteAll.do")
	public String deleteAll(HttpSession session) {
		String userid = (String) session.getAttribute("member_id");

		if (userid != null) {
			cartService.deleteAll(userid);
		} else {
			return "redirect:/member/login.do";
		}

		return "redirect:/cart/list.do";
	}

	@RequestMapping("update.do")
	public String update(int[] amount, int[] cart_id, HttpSession session) {

		String userid = (String) session.getAttribute("member_id");

		if (userid == null) {
			return "redirect:/member/login.do";
		}

		for (int i = 0; i < cart_id.length; i++) { // 카트 번호 에 도달햇을때까지 반복

			// 그중에서 만약에 카트번호에 맞는 amount 수량값이 0일때 삭제
			if (amount[i] == 0) {
				cartService.delete(cart_id[i]);
			} else {

				CartVo vo = new CartVo();
				vo.setMember_id(userid);
				vo.setCart_id(cart_id[i]);
				vo.setAmount(amount[i]);
				cartService.update(vo);
			}

		}

		return "redirect:/cart/list.do";
	}

}
