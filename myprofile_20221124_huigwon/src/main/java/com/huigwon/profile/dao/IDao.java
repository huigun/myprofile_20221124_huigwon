package com.huigwon.profile.dao;

import java.util.ArrayList;

import com.huigwon.profile.dto.MemberDto;
import com.huigwon.profile.dto.QBoardDto;
import com.huigwon.profile.dto.QBoardRownum;


public interface IDao {
	//멤버 관련
	public int memberjoin(String mid, String mpw, String mname, String memail); // 회원가입
	public int checkid(String mid); // 회원 확인
	public MemberDto memberlogin(String mid); // 로그인
	public void membermodify(String mid, String mpw, String mname, String memail); // 회원 정보 수정
	
	//게시판 관련
	public void questionok(String qid, String qname, String qtitle, String qcontent, String qemail); // 게시판 글 작성
	public ArrayList<QBoardDto> qlist();
	public ArrayList<QBoardDto> qlist(int firstgl, int pagesu);
	public ArrayList<QBoardRownum> qbrownum();  
	public QBoardDto qview(String qnum);
	public void qdelete(String qnum);
	public void qupdate(String qnum, String qtitle, String qcontent, String qemail);
}
