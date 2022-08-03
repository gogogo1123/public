package com.on.project.dao;

import java.util.List;

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




	public List<ProductVo> list() {
		return sqlSession.selectList(MAPPER+".list");
	}




	public ProductVo edit(int product_code) {
		return sqlSession.selectOne(MAPPER+".edit", product_code);
	}




	public void update(ProductVo vo) {
            sqlSession.update(MAPPER+".update", vo);		
	}




	public String file(Integer product_code) {
		return sqlSession.selectOne(MAPPER+".file", product_code);
	}




	public void delete(Integer product_code) {
          sqlSession.delete(MAPPER+".delete", product_code);		
	}




	public ProductVo detail(int product_code) {
		return sqlSession.selectOne(MAPPER+".detail", product_code);
	}

	
	
	
}
