package com.on.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.on.project.vo.MemberVo;

@Repository
public class CartDao {

	
	
	public SqlSession sqlSession;
	
	public static final String MAPPER = "cart";
	
	@Autowired
	public CartDao(SqlSession sqlSession) {
		this.sqlSession= sqlSession;
	}
	
	
	
	
	
}
