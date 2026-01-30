package com.br.app.domain.plaza;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ConsultingDTO {
	
	private int consultingId; // pk
	private String investmentAmount; // 투자금액
	private String desiredOpeningDate; // 점포개설희망시기
	private String storeArea; // 면적
	private int personalInfoConsent; // 개인정보동의여부
	private String content; // 문의내용
	private String name; // 이름
	private String tel; // 연락처
	private String time; // 연락가능시간
	private String email; // 이메일
	private String preferredRegion; // 희망지역
	private String zipcode; // 우편번호
	private String address; // 상세주소
	
	private int status; // 처리상태
}
