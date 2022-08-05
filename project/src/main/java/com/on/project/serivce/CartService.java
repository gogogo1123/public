package com.on.project.serivce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.on.project.dao.CartDao;
import com.on.project.dao.MemberDao;
import com.on.project.vo.MemberVo;

@Service
public class CartService {

	
	private CartDao cartDao;
	
	@Autowired
	public CartService(CartDao cartDao) {
		this.cartDao = cartDao;
	}
	
	

	
}
