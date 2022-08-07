package com.on.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.on.project.vo.MemberVo;

@Repository
public class MemberDao {

	public SqlSession sqlSession;

	public static final String MAPPER = "member";

	@Autowired
	public MemberDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public int joinprocess(MemberVo vo) {
		return sqlSession.insert(MAPPER + ".insert", vo);
	}

	public String loginprocess(MemberVo vo) {
		return sqlSession.selectOne(MAPPER + ".loginprocess", vo);
	}

	public int checkid(String member_id) {
		return sqlSession.selectOne(MAPPER + ".check", member_id);
	}

}
