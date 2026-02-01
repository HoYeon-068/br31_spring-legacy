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
	private Integer iceNutritionId;
	private Integer productsId;
	private Integer servingSize;
	private Integer calories;
	private Integer sugar;
	private Integer protein;
	private Integer saturatedFat;
	private Integer sodium;
	private String allergens;
}
