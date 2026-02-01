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
	private Integer monthlyFlavorId;
	private Integer productsId;
	private String posterPath;
	private String youtubePath;
	private String imgPath;
}
