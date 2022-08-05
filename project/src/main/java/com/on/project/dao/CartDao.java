package com.on.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.on.project.vo.CartVo;
import com.on.project.vo.MemberVo;
import com.on.project.vo.TotalVo;

@Repository
public class CartDao {

	
	
	public SqlSession sqlSession;
	
	public static final String MAPPER = "cart";
	
	@Autowired
	public CartDao(SqlSession sqlSession) {
		this.sqlSession= sqlSession;
	}

	public void insert(CartVo vo) {
           sqlSession.insert(MAPPER+".insert", vo);		
	}

	public List<TotalVo> list(String userid) {
		return sqlSession.selectList(MAPPER+".list", userid);
	}

	public int sumMoney(String userid) {
		return sqlSession.selectOne(MAPPER+".sumMoney", userid);
	}

	public void delete(int cart_id) {
            sqlSession.delete(MAPPER+".delete", cart_id);		
	}

	public void deleteAll(String userid) {
		 sqlSession.delete(MAPPER+".deleteAll", userid);
	}

	public void update(CartVo vo) {
         sqlSession.update(MAPPER+".update", vo);		
	}
	
	
	
	
	
}
