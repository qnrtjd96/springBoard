package com.ablecom.kangsan.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ablecom.kangsan.service.MemberService;
import com.ablecom.kangsan.vo.MemberVO;

@Controller
public class MemberController {

	@Inject
	MemberService memberService;
	
	//로그인 페이지로 이동
	@RequestMapping("/login")
	public String login() {
		return "member/login";
	}
	
	//회원가입 페이지로 이동
	@RequestMapping("/sign")
	public String sign() { 
		return "member/sign";
	}
	
	//회원가입 로직
	@RequestMapping(value="/signin", method=RequestMethod.POST)
	public ModelAndView signIn(MemberVO vo) {
		ModelAndView mav = new ModelAndView();
		
		int success = memberService.signIn(vo);

		if(success>=1) {
			mav.setViewName("member/login");
		}
		
		return mav;
	}
	
	//로그인
	@RequestMapping(value="/loginOk", method=RequestMethod.POST)
	public ModelAndView loginOk(MemberVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		//logVO가 null로그인 실패 null이 아닐경우에는 VO에 아이디, 이름을 저장해서 리턴받는다.
		MemberVO logVO = memberService.loginCheck(vo);
		
		if(logVO != null) {//로그인 성공
			session.setAttribute("logVO", logVO);
			mav.setViewName("redirect:/");
		}else {//로그인실패
			mav.setViewName("redirect:login");
		}
		return mav;
	}
	
	//로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
}
