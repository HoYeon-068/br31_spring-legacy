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
public class FomViewDTO {
	private MonthlyFlavorDTO monthlyFlavorDTO;
	private List<IngredientDTO> ingredientDTO;
	private ProductDTO productDTO; 
}
