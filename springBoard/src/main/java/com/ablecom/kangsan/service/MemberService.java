package com.ablecom.kangsan.service;

import com.ablecom.kangsan.vo.MemberVO;

public interface MemberService {

	public int signIn(MemberVO vo);

	public MemberVO loginCheck(MemberVO vo);



}
