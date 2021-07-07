package com.ablecom.kangsan.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ablecom.kangsan.dao.BoardDAO;
import com.ablecom.kangsan.vo.BoardVO;
import com.ablecom.kangsan.vo.PageSearchVO;

@Service
public class BoardServiceImp implements BoardService {
	
	@Inject
	BoardDAO boardDAO;
	
	@Override
	public List<BoardVO> boardList(PageSearchVO pageVO) {
		
		return boardDAO.boardList(pageVO);
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

	@Override
	public int boardDelete(int no) {
		
		return boardDAO.boardDelete(no);
	}

	@Override
	public int boardTotalRecord(PageSearchVO pageVO) {
		
		return boardDAO.boardTotalRecord(pageVO);
	}

	@Override
	public int hitCount(int no) {
		// TODO Auto-generated method stub
		return boardDAO.hitCount(no);
	}



}
