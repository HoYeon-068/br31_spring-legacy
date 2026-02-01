package com.br.app.domain.menu;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MenuViewDTO {
	private Integer productsId;
	private Integer categoryId;
	private String productName;
	private String englishName;
	private String description;
	private String categoryName;
	private Integer price;
	private String bgColor;
	private String imgPath;
	private String posterPath;
	private IceNutritionDTO iceNutritionDTO;
	private List<IngredientDTO> ingredientDTO; 
	
}
