package com.ablecom.kangsan.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ablecom.kangsan.service.BoardService;
import com.ablecom.kangsan.vo.BoardVO;
import com.ablecom.kangsan.vo.MemberVO;
import com.ablecom.kangsan.vo.PageSearchVO;

@Controller
public class BoardController {

	@Inject
	BoardService boardService;
	
	//홈화면
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		System.setProperty( "https.protocols", "TLSv1,TLSv1.1,TLSv1.2" ); //버전오류때문에 검색해보니 넣어보라해서 넣어봤습니다!
		
		String pageNumStr = req.getParameter("pageNum");
		
		PageSearchVO pageVO = new PageSearchVO();
		if(pageNumStr != null) { //페이지 번호가 있을때 숫자화, 없으면 1로 설정되어있음
			pageVO.setPageNum(Integer.parseInt(pageNumStr));
		}
		
		pageVO.setTotalRecord(boardService.boardTotalRecord(pageVO));
		mav.addObject("list", boardService.boardList(pageVO));
		mav.addObject("pageVO", pageVO);
		mav.setViewName("home");
		
		return mav;
	}
	
	//글쓰기 페이지 이동
	@RequestMapping("boardCreate")
	public String boardcreate() {
		
		return "boardCreate";
	}
	
	//글 완료버튼 누르면 시작하는 로직
	@RequestMapping(value="/boardCreateOk", method=RequestMethod.POST)
	public ModelAndView boardCreateOk(BoardVO vo, HttpServletRequest req, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		MemberVO vo2 = (MemberVO)session.getAttribute("logVO");
		vo.setUserid(vo2.getUserid());
		
		int success = boardService.boardCreateOk(vo);
		
		if(success>=1) {
			mav.setViewName("redirect:/"); //성공했을때에 보낼 페이지
		}
		return mav;
	}
	
	//글 상세내역
	@RequestMapping("/boardRead")
	public ModelAndView boardRead(int no) {
	
		ModelAndView mav = new ModelAndView();
		
		hitCount(no);  //조회수 올려주는 메소드 
		
		mav.addObject("vo", boardService.boardSelect(no));
		mav.setViewName("boardRead");
		
		return mav;
	}
	
	//글수정페이지 들어가기
	@RequestMapping("/boardUpdate")
	public ModelAndView boardUpdate(int no) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("vo", boardService.boardSelect(no)); //boardSelect코드 재사용 JAVA의 장점중 하나
		mav.setViewName("boardUpdate");
		
		return mav;
	}
	
	//글수정페이지에서 수정하기버튼 눌렀을때
	@RequestMapping("/boardUpdateOk")
	public ModelAndView boardUpdateOk(BoardVO vo) {
		ModelAndView mav = new ModelAndView();
		
		int success = boardService.boardUpdate(vo);
		if(success>=1) {
			mav.setViewName("redirect:/");
		}else {
			mav.setViewName("redirect:boardUpdate");
		}
		return mav;
	}
	
	//글삭제하기
	@RequestMapping("/deleteOk")
	public ModelAndView deleteOk(int no) {
		ModelAndView mav = new ModelAndView();
		
		int success = boardService.boardDelete(no);
		
		if(success >=1) {
			mav.setViewName("redirect:/");
		}else {
			mav.setViewName("redirect:boardRead");
		}
		return mav;
	}
	
	public void hitCount(int no) {
		int success = boardService.hitCount(no);
		
		if(success>=1) {
			System.out.println("조회수 증가 성공 ^^");
		}else {
			System.out.println("조회수 증가 실패 ㅠㅠ");
		}
	}
}
