package com.on.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.on.project.serivce.CartService;
import com.on.project.serivce.MemberService;
import com.on.project.vo.MemberVo;

@Controller
@RequestMapping("/cart/*")
public class CartController {

	private CartService cartService;
	
	@Autowired
	public CartController(CartService cartService) {
		this.cartService= cartService;
	}
	
	
	
	
 @RequestMapping("insert.do")
 public String insert() {
	 
 }
	
	
	
	
	
	
	
}
