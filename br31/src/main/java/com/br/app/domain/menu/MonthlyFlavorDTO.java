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
public class MonthlyFlavorDTO {
	private int monthly_flavor_id;
	private int products_id;
	private String poster_path;
	private String youtube_path;
	private String img_path;
}
