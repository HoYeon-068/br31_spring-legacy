package com.br.app.domain.recipe;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RecipeViewDTO {
	
    private int recipeId; // PK
    private String title;  // 제목
    private String subTitle;  // 소제목
    private String thumbnail;  // 대표사진
    private String contentHtml;   // Html
    private int recipeCategoryId;  // 카테고리 ID
    private String categoryName;  // 카테고리명
    
}
