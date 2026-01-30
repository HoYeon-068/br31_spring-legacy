package com.br.app.domain.story;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CampaignInfoDTO {
	public Integer campaignActivityInfoId;
	public String campaignActivityYm;
	public String campaignActivityDescription;
	public String campaignActivityTitle;
	public String campaignActivityImgPath;
	public Integer campaignId;
	public String campaignName;
}
