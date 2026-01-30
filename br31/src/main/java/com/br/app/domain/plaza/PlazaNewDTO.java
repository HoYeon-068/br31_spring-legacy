package com.br.app.domain.plaza;

import java.io.File;

public class PlazaNewDTO {
	int personalInfoConsent; // 개인정보동의여부
	int isAuthorPublic; // 작성자공개여부
	int termsAgreement; // 이용약관동의여부
	int ideaOfferAgreement; // 아이디어제공동의여부
	String userId; // 아이디 로그인 한 아이디로 가져오면 될듯...
	String title; // 제목
	String content; // 내용
	File file; // 첨부파일
	
}
