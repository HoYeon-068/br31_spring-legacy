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
	
	private int products_id;
	private int category_id;
	private String category_name;
	private String product_name;
	private String english_name;
	private String sub_title;
	private String description;
	private String product_status;
	private String img_path;
	private String bg_color;
	private String span_color;
	private String poster_path;
	private int price;
	private Date release_date;
	
}
