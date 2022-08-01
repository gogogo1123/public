package com.on.project.serivce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.on.project.dao.ProductDao;

@Service
public class ProductService {

	
	private ProductDao productDao;
	
	@Autowired
	public ProductService(ProductDao productDao) {
		this.productDao = productDao;
		
		
	}
	
	
	
	
}
