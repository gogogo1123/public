package com.on.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.on.project.serivce.ProductService;

@Controller //임포트
public class ProductController {

   
	private ProductService productService;
	
	@Autowired
	public ProductController(ProductService productService) {  // service 객체 의존성 주입.사용할려고
		this.productService = productService;  
	}
	
	
	
	
	
	
	
}
