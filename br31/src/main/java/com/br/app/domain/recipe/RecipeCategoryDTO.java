package com.br.app.domain.recipe;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class RecipeCategoryDTO {
    private int recipeCategoryId; // PK
    private String categoryName;  // 카테고리명
}
