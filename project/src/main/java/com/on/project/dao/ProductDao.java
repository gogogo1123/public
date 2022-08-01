package com.on.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.on.project.vo.ProductVo;



@Repository
public class ProductDao {

	
	private SqlSession sqlSession;
	
	public static final String MAPPER = "product";
	
	@Autowired
	public ProductDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	
	
	public void register(ProductVo vo) {
		sqlSession.insert(MAPPER+".register",vo);
	}

	
	
	
}
