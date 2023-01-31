package com.huigwon.profile.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class QBoardDto {
	
	private int qnum; // 글 번호 
	private String qid; // 질문자 아이디
	private String qname; // 질문자 이름
	private String qtitle; // 질문제목
	private String qcontent; // 질문내용
	private String qemail; // 질문자 이메일
	private String qdate; // 질문 등록일시
}
