package com.br.app.domain.plaza;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PlazaViewDTO {
	private String name;
	private int plazaId;
	private String title;
	private String content;
	private int isAuthorPublics;
	private int plazaCategoryId;
	private int status;
	
	private boolean liked; // 좋아요
}
