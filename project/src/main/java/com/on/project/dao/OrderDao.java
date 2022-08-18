package com.on.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.on.project.vo.MemberVo;
import com.on.project.vo.OrderVo;

@Repository
public class OrderDao {

	public SqlSession sqlSession;

	public static final String MAPPER = "order";

	@Autowired
	public OrderDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public void update(OrderVo vo) {
		sqlSession.insert(MAPPER + ".insert", vo);
	}

}
