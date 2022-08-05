package com.on.project.serivce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.on.project.dao.MemberDao;
import com.on.project.dao.OrderDao;
import com.on.project.vo.MemberVo;
import com.on.project.vo.OrderVo;

@Service
public class OrderService {

	
	private OrderDao orderDao;
	
	@Autowired
	public OrderService(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	public void update(OrderVo vo) {
	   orderDao.update(vo);
	}
	

	
}
