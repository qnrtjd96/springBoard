package com.ablecom.kangsan.service;

import java.util.List;

import com.ablecom.kangsan.vo.BoardVO;
import com.ablecom.kangsan.vo.PageSearchVO;

public interface BoardService {

	public List<BoardVO> boardList(PageSearchVO pageVO);

	public int boardCreateOk(BoardVO vo);

	public BoardVO boardSelect(int no);

	public int boardUpdate(BoardVO vo);

	public int boardDelete(int no);
	
	//페이징처리를 위해서 토탈레코드를 구한다
	public int boardTotalRecord(PageSearchVO pageVO);

	public int hitCount(int no);


}
