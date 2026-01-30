package com.br.app.domain.plaza;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class NewDTO {
	private String title; // 제목
	private String content; // 본문내용
	private Date regDate; // 작성일
	private int isAuthorPublic; // 작성자 공개여부
	private String userId; // 회원ID
	private int personalInfoConsent; // 개인정보동의여부
	private int termsAgreement; // 이용약관동의여부
	private int plazaCategoryId; // 카테고리ID
	private int status; // 처리상태
	private int ideaOfferAgreement; // 아이디어제공동의여부
}
