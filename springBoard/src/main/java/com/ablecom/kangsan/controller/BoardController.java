package com.ablecom.kangsan.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ablecom.kangsan.service.BoardService;
import com.ablecom.kangsan.vo.BoardVO;

@Controller
public class BoardController {

	@Inject
	BoardService boardService;
	
	//홈화면
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView();
		
		System.setProperty( "https.protocols", "TLSv1,TLSv1.1,TLSv1.2" );
		
		mav.addObject("list", boardService.boardList());
		mav.setViewName("home");
		
		return mav;
	}
	
	//글쓰기 페이지 이동
	@RequestMapping("boardcreate")
	public String boardcreate() {
		
		return "board/boardcreate";
	}
	
	//글 완료버튼 누르면 시작하는 로직
	@RequestMapping(value="boardCreateOk", method=RequestMethod.POST)
	public ModelAndView boardCreateOk(BoardVO vo) {
		
		ModelAndView mav = new ModelAndView();
		int success = boardService.boardCreateOk(vo);
		
		if(success>=1) {
			mav.setViewName("redirect:/"); //성공했을때에 보낼 페이지
		}else {
			mav.setViewName("");//실패했을때 보낼페이지
		}
		return mav;
	}
	
	//글 상세내역
	@RequestMapping("/boardread")
	public ModelAndView boardRead(int no) {
	
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("vo", boardService.boardSelect(no));
		mav.setViewName("board/boardread");
		
		return mav;
	}
	
	//글수정페이지 들어가기
	@RequestMapping("/boardUpdate")
	public ModelAndView boardUpdate(int no) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("vo", boardService.boardSelect(no));
		mav.setViewName("board/boardUpdate");
		
		return mav;
	}
	
}
