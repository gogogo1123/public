package com.on.project.serivce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.on.project.dao.ProductDao;
import com.on.project.vo.Criteria;
import com.on.project.vo.ProductVo;

@Service
public class ProductService {

	private ProductDao productDao;

	@Autowired
	public ProductService(ProductDao productDao) {
		this.productDao = productDao;

	}

	public void register(ProductVo vo) {
		productDao.register(vo); // 반환값 없어서 리턴 사용안함!!

	}

	public List<ProductVo> list(Criteria cri) throws Exception {
		return productDao.list(cri);
	}

	public ProductVo edit(int product_code) {
		return productDao.edit(product_code);
	}

	public void update(ProductVo vo) {
		productDao.update(vo);
	}

	public String file(Integer product_code) {
		return productDao.file(product_code);
	}

	public void delete(Integer product_code) {
		productDao.delete(product_code);
	}

	public ProductVo detail(int product_code) {
		return productDao.detail(product_code);
	}

	public int cnt(Criteria cri) {
		return productDao.cnt(cri);
	}

}
