package com.ablecom.kangsan.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ablecom.kangsan.dao.MemberDAO;
import com.ablecom.kangsan.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService {
	
	@Inject
	MemberDAO memberDAO;

	@Override
	public int signIn(MemberVO vo) {
		return memberDAO.signIn(vo);
	}

	@Override
	public MemberVO loginCheck(MemberVO vo) {
		return memberDAO.loginCheck(vo);
	}

	
}
