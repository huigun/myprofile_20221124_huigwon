package com.huigwon.profile.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class MemberDto {
	private String mid; // 아이디
	private String mname; // 회원 이름
	private String mpw; // 비밀번호
	private String memail; // 이메일
	private String mdate; // 가입일시
	
}
