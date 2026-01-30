package com.br.app.domain.story;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HistoryFlavorThemeDTO {
	public Integer historyIceId;
	public Integer themeId;
	public Integer awardYear;
	public Integer awardMonth;
	
}
