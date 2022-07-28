package com.on.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.on.project.serivce.MemberService;
import com.on.project.vo.MemberVo;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private MemberService memberService;
	
	@Autowired
	public MemberController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	
	
	
	@RequestMapping("login.do")
	public String login() {
		return "member/login";  // 로그인페이지로 이동하는 로직
		
	}
	
	
	@RequestMapping("loginprocess.do")
	public String loginprocess(MemberVo vo,HttpSession session) {
		
		String name = memberService.loginprocess(vo); // MemberVo 클래스에 login 페이지에서 넘어온값을 집어넣음 ㅎ.
		
		if(name != null) { // 쿼리가 정상적으로 실행되면 이름을 받아와서 실행
			session.setAttribute("member_id", vo.getMember_id()); //세션값을 아이디를 저장
			session.setAttribute("name", name); // 세션값을 이름값을 저장
		
		}else if(name ==null){ // name ==null 이면 데이터베이스가 실행되자않음
			return "member/login"; // 로그인페이지로 다시이동 해줌
		}
		System.out.println("리다이렉트가 실해 ㅇㅋㅋ");
		return "redirect:/main.do"; // 쿼리가 정상적으로 실행되면 리다이렉트 사용해줌 리다이렉트 사용이유는 저장된 데이터가 아니라서 리다이렉트로 사진을 보여주기위함.
	}
	
	
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate(); // 세션값을 삭제시킴
		return "redirect:/main.do"; // 메인페이지로 이동 시킴.
	}
	
	
	@RequestMapping("join.do")
	public String join() {
		return "member/join"; // 회원가입으로 이동하는 로직을 실행.
	}
	
	
	@RequestMapping("joinprocess.do")
	public String joinprocess(MemberVo vo) {
		
		int result = memberService.joinprocess(vo);
		// result 값은 데이터베이스가 실행되면 1 아니면 0 이실행
		
		if(result ==1) { //1이되면 메인으로 이동하고
			return "redirect:/main.do";
		}else { // 실패하면 회원가입페이지로 이동.
			return "member/join";
		}
		
	
	}
	
	
	
	
	
	
	
}
