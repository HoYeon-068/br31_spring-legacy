package com.br.app.mapper.event;

import java.util.List;

import com.br.app.domain.event.EventDTO;

public interface EventMapper {

	// 일반 회원
	// 목록 조회 (전체)
	List<EventDTO> selectAll();
	// 목록 조회 (프로모션, 제휴혜택 등 카테고리)
	List<EventDTO> selectCategory(String category);
	// 상세보기
	EventDTO view(int seq);
	// 행사매장(있을 시) 보기
	List<String> selectStoreNames(int eventId);
	// 추천 이벤트
	public List<EventDTO> selectOngoing(int currentEventId);

	// 관리자
	// 추가
	// int insert(EventDTO dto);
	// 수정
	// int update(EventDTO dto);
	// 삭제
	// int delete(int seq);
	
}
