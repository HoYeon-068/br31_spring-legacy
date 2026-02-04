package com.br.app.mapper.plaza;

import java.util.List;

import com.br.app.domain.plaza.CollaboDTO;
import com.br.app.domain.plaza.ConsultingDTO;
import com.br.app.domain.plaza.PlazaSelectDTO;
import com.br.app.domain.plaza.PlazaViewDTO;
import com.br.app.domain.plaza.PlazaWriteDTO;

public interface PlazaMapper {
	// plaza 리스트
	List<PlazaSelectDTO> select();
	
	// 카테고리로 리스트 보기
	List<PlazaSelectDTO> selectCategory(String categoryId);
	
	// 상세보기
	PlazaViewDTO view(int seq);
	
	// 컨설팅 insert
	int insertConsulting(ConsultingDTO dto);
	
	// plaza post
	int insertPlazaReturnId(PlazaWriteDTO dto);
	int insertPlazaFile(int plazaId, String fileName, String origName);
	int insertCollabo(CollaboDTO dto);
	
	// 좋아요
	boolean existsLike(int plazaId, String userId);
	int insertLike(int plazaId, String userId);
	int deleteLike(int plazaId, String userId);
	
	// 로그인 후 좋아요 포함.....리스트...
	List<PlazaSelectDTO> select(String loginUserId, boolean withLike);
    List<PlazaSelectDTO> select(String categoryId, String loginUserId, boolean withLike);
    PlazaViewDTO view(int seq, String loginUserId, boolean withLike);
    
    // 관리자 페이지 ( 입점 문의 )
    List<ConsultingDTO> selectAdminList(); // 목록조회
    ConsultingDTO selectAdminView(int consultingId); // 상세보기
    int updateAdminStatus(int consultingId, int status); // 상태변경
    
    // 관리자 페이지용 ( plaza )
    List<PlazaSelectDTO> adminSelect(String categoryId); // 목록 categoryId null이면 전체
    PlazaViewDTO adminView(int seq); // 상세보기
    int updatePlazaStatus(int plazaId, int status); // 상태변경
}
