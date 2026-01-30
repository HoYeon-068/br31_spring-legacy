package com.br.app.domain.recipe;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RecipeListDTO {
	
	private int recipeId; // PK
    private String title;  // 제목
    private String subTitle;  // 소제목(한글)
    private String thumbnail;  //  썸네일
    private int recipeCategoryId; // 카테고리
    
    // 조인용
    private String categoryName; // 카테고리 이름
    
}
