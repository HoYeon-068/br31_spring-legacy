package com.br.app.domain.story;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StoryDTO {
	public Integer storyId;
	public Integer storyYear;
	public String storyLogoImgPath;
	public String storyTitle;
	public String storyDescription;
	public String storyImgPath;
}
