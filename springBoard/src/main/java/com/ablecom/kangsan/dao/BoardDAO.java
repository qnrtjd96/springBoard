package com.ablecom.kangsan.dao;

import java.util.List;

import com.ablecom.kangsan.vo.BoardVO;

public interface BoardDAO {

	public List<BoardVO> boardList();

	public int boardCreateOk(BoardVO vo);

	public BoardVO boardSelect(int no);

	public int boardUpdate(BoardVO vo);
}
