package com.on.project.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.on.project.serivce.CartService;
import com.on.project.serivce.MemberService;
import com.on.project.serivce.OrderService;
import com.on.project.vo.MemberVo;
import com.on.project.vo.OrderVo;
import com.on.project.vo.TotalVo;

@Controller
@RequestMapping("/order/*")
public class OrderController {

	private OrderService orderService;
	private CartService cartService;

	@Autowired
	public OrderController(OrderService orderService, CartService cartService) {
		this.orderService = orderService;
		this.cartService = cartService;
	}

	@RequestMapping("insert.do")
	public ModelAndView insert(HttpSession session, ModelAndView mav, HttpServletRequest requset) throws IOException {
		HashMap<String, Object> map = new HashMap<String, Object>();
		String userid = (String) session.getAttribute("member_id"); // 세션값조회하자!!

		if (userid != null) {
			List<TotalVo> list = cartService.list(userid); // 장바구니 담겨잇는거 가져오기,회원이름이랑 주소값 가져오기 조인햇으니
			int sumMoney = cartService.sumMoney(userid); // 결제 금액 총합계 가져오기

			map.put("sumMoney", sumMoney);

			for (TotalVo vo : list) { // 리스트 에 있는 값들 가져오기..!!
				System.out.println("멤버이름 =" + vo.getMember_name());
				System.out.println("이메일 = " + vo.getMember_email());
				System.out.println("주소  1=" + vo.getMember_addr1());
				System.out.println("주소  2=" + vo.getMember_addr2());
				System.out.println("주소  3=" + vo.getMember_addr3());
				System.out.println("Dddd# = " + vo.getProduct_name());

				map.put("name", vo.getMember_name());
				map.put("email", vo.getMember_email());
				map.put("addr1", vo.getMember_addr1());
				map.put("addr2", vo.getMember_addr2());
				map.put("addr3", vo.getMember_addr3());
				map.put("product_name", vo.getProduct_name());
				map.put("code", vo.getProduct_code());
				map.put("cart", vo.getCart_id());
				map.put("id", vo.getMember_id());
			}

			mav.setViewName("cart/cart_order"); // 페이지 이동!!
			mav.addObject("map", map); // map 저장
			return mav;

		} else {
			return new ModelAndView("member/login");
		}

	}

	@RequestMapping("update.do")
	public String pay(OrderVo vo, HttpServletRequest request, Model model) {

		orderService.update(vo);

		request.setAttribute("name", vo.getOrder_product());
		request.setAttribute("sum", vo.getOrder_sum());

		return "cart/pay";

	}

}
