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
	private Integer productTagId;
	private Integer productsId;
	private String tag;
}
