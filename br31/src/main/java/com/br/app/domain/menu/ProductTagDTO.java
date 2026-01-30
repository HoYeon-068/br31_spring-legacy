package com.br.app.domain.menu;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductTagDTO {
	private int product_tag_id;
	private int products_id;
	private String tag;
}
