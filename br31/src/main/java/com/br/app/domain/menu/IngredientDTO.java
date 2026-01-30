package com.br.app.domain.menu;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class IngredientDTO {
	private int ingredient_products_id;
	private int products_id;
	private int ingredient_id;
	private String ingredient_name;
	private String img_path;
}
