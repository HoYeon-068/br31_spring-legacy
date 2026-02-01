package com.br.app.domain.menu;

import java.util.Date;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductDTO {
	
	private Integer productsId;
	private Integer categoryId;
	private String categoryName;
	private String productName;
	private String englishName;
	private String subTitle;
	private String description;
	private String productStatus;
	private String imgPath;
	private String bgColor;
	private String spanColor;
	private String posterPath;
	private int price;
	private Date releaseDate;
	
}
