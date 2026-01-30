package com.br.app.domain.story;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class HistoryFlavorDTO {
	public Integer historyIceId;
	public Integer historyYear;
	public Integer historyMonth;
	public String historyIceName;
	public String historyImgPath;
}
