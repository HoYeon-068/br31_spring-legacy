package com.br.app.domain.plaza;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PlazaSelectDTO {
	private int plazaId; // pk
	private String title; // 제목
	private String content; // 내용
	private String userId; // 회원ID
	private int plazaCategoryId; // 카테고리ID
	private int status; // 상태
	
	private boolean liked; // 좋아요
}




