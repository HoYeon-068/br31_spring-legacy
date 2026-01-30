package com.br.app.domain.menu;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MenuListDTO {
	private int productsId;
	private int categoryId;
	private String productName;
	private String categoryName;
	private String tags;
	private String subTitle;
	private String imgPath;
	private String bgColor;
	private String spanColor;
}
