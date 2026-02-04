package com.br.app.mapper.recipe;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.recipe.RecipeCategoryDTO;
import com.br.app.domain.recipe.RecipeListDTO;
import com.br.app.domain.recipe.RecipeViewDTO;

public interface RecipeMapper {

	List<RecipeCategoryDTO> selectCategories();

    int count(@Param("categoryId") Integer categoryId);

    List<RecipeListDTO> selectList(
        @Param("categoryId") Integer categoryId,
        @Param("offset") int offset,
        @Param("amount") int amount
    );
    
    RecipeViewDTO view(int recipeId);
	
}
