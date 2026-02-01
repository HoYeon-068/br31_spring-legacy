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
	private Integer ingredientProductsId;
	private Integer productsId;
	private Integer ingredientId;
	private String ingredientName;
	private String imgPath;
}
