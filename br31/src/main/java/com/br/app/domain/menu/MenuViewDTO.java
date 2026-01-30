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
	private int products_id;
	private int category_id;
	private String product_name;
	private String english_name;
	private String description;
	private String category_name;
	private int price;
	private String bg_color;
	private String img_path;
	private String poster_path;
	private IceNutritionDTO iceNutritionDTO;
	private List<IngredientDTO> ingredientDTO; 
	
}
