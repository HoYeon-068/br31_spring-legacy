package com.br.app.mapper.story;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.story.CampaignDTO;
import com.br.app.domain.story.CampaignInfoDTO;
import com.br.app.domain.story.HistoryFlavorDTO;
import com.br.app.domain.story.StoryDTO;

public interface StoryMapper {
	// 브랜드스토리
	public List<StoryDTO> storyList() ;
	
	// 이달의맛 히스토리
	public List<HistoryFlavorDTO> listByYear(@Param("historyYear") int historyYear);
	public List<HistoryFlavorDTO> listByTheme(@Param("themeId") int themeId);
	
	// 캠페인
	public List<CampaignDTO> campaignList();
	public List<CampaignInfoDTO> campaignInfoAll();
}
