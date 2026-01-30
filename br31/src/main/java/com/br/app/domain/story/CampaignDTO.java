package com.br.app.domain.story;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CampaignDTO {
	public Integer campaignId;
	public String campaignName;
	public String campaignDescription;
	public String campaignSummary;
	public String campaignImgPath;
	public String campaignSubtitle;
}
