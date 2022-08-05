package com.on.project.serivce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.on.project.dao.CartDao;
import com.on.project.dao.MemberDao;
import com.on.project.vo.CartVo;
import com.on.project.vo.MemberVo;
import com.on.project.vo.TotalVo;

@Service
public class CartService {

	
	private CartDao cartDao;
	
	@Autowired
	public CartService(CartDao cartDao) {
		this.cartDao = cartDao;
	}

	public void insert(CartVo vo) {
       cartDao.insert(vo);		
	}

	public List<TotalVo> list(String userid) {
		return cartDao.list(userid);
	}

	public int sumMoney(String userid) {
		return cartDao.sumMoney(userid);
	}
	
	

	
}
