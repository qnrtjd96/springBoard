package com.ablecom.kangsan.dao;

import java.util.List;

import com.ablecom.kangsan.vo.BoardVO;
import com.ablecom.kangsan.vo.PageSearchVO;

public interface BoardDAO {

	public List<BoardVO> boardList(PageSearchVO pageVO);

	public int boardCreateOk(BoardVO vo);

	public BoardVO boardSelect(int no);

	public int boardUpdate(BoardVO vo);

	public int boardDelete(int no);

	public int boardTotalRecord(PageSearchVO pageVO);

	public int hitCount(int no);
}
