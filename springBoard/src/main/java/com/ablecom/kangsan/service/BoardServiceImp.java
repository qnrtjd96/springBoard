package com.ablecom.kangsan.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.ablecom.kangsan.dao.BoardDAO;
import com.ablecom.kangsan.vo.BoardVO;

@Service
public class BoardServiceImp implements BoardService {
	
	@Inject
	BoardDAO boardDAO;
	
	@Override
	public List<BoardVO> boardList() {
		
		return boardDAO.boardList();
	}

	@Override
	public int boardCreateOk(BoardVO vo) {
		
		return boardDAO.boardCreateOk(vo);
	}

	@Override
	public BoardVO boardSelect(int no) {
		return boardDAO.boardSelect(no);
	}

	@Override
	public int boardUpdate(BoardVO vo) {
		
		return boardDAO.boardUpdate(vo);
	}


}
