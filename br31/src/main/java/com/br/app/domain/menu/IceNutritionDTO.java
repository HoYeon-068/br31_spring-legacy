package com.br.app.domain.menu;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class IceNutritionDTO {
	private int ice_nutrition_id;
	private int products_id;
	private int serving_size;
	private int calories;
	private int sugar;
	private int protein;
	private int saturated_fat;
	private int sodium;
	private String allergens;
}
