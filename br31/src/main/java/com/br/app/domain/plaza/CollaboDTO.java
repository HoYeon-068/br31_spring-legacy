package com.br.app.domain.plaza;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CollaboDTO {
	private int collaboId; // pk
	private String tel; // 연락처
	private String companyName; // 회사명
	private String companyEmail; // 이메일
	private String name; // 이름
	private int plazaId; // 광장게시글pk
}
