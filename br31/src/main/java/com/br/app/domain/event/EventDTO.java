package com.br.app.domain.event;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EventDTO {
	private int eventId;
	private String title;
	private Date startDate;
	private Date endDate;
	private String imgPath;
	private String noticeTitle;
	private String noticeContent;
	private String eventDetailImg;
	private String storeScope;
	private int evtCategoryId;
	
	// 실제 DB엔 없음
	private Integer dday;
	
	// event_category 테이블
	private String categoryName;
}



