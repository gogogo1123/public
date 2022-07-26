package com.on.project;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
	
	
		
		return "redirect:/main.do";
	}
	
	@RequestMapping("main.do")
	public String main() {
		return "main";
	}
	
	@RequestMapping("list.do")
	public String list() {
		return "shop/product_list";
	}
	
	
	@RequestMapping("detail.do")
	public String deta() {
		return "shop/product_detail";
	}
	
	@RequestMapping("order.do")
	public String order() {
		return "cart/cart_order";
	}
	
	@RequestMapping("page")
	public String page() {
		return "page/NewFile";
	}
}
