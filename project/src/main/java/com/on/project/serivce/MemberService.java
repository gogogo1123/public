package com.on.project.serivce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.on.project.dao.MemberDao;
import com.on.project.vo.MemberVo;

@Service
public class MemberService {

	
	private MemberDao memberDao;
	
	@Autowired
	public MemberService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	
	public int joinprocess(MemberVo vo) {
		return memberDao.joinprocess(vo);
	}
	
	
	public String loginprocess(MemberVo vo) {
		return memberDao.loginprocess(vo);
	}
	
}
