package com.on.project.serivce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.on.project.dao.ProductDao;
import com.on.project.vo.ProductVo;

@Service
public class ProductService {

	
	private ProductDao productDao;
	
	@Autowired
	public ProductService(ProductDao productDao) {
		this.productDao = productDao;
		
		
	}

	public void register(ProductVo vo) {
         productDao.register(vo);  // 반환값 없어서 리턴 사용안함!!
		
	}

	public List<ProductVo> list() {
		return productDao.list();
	}
	
	
	
	
}
