package com.br.app.mapper.plaza;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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
	int insertPlazaFile(
		        @Param("plazaId") int plazaId,
		        @Param("fileName") String fileName,
		        @Param("origName") String origName
	    );
	int insertCollabo(CollaboDTO dto);
	
	// 좋아요
	// boolean existsLike(@Param("plazaId") int plazaId, @Param("userId") String userId);
	int existsLike(@Param("plazaId") int plazaId, @Param("userId") String userId);
	int insertLike(@Param("plazaId") int plazaId, @Param("userId") String userId);
	int deleteLike(@Param("plazaId") int plazaId, @Param("userId") String userId);
	
	// 로그인 후 좋아요 포함.....리스트...
	List<PlazaSelectDTO> selectWithLike(@Param("loginUserId") String loginUserId);
	List<PlazaSelectDTO> selectCategoryWithLike(
		    @Param("categoryId") String categoryId,
		    @Param("loginUserId") String loginUserId
		);
    PlazaViewDTO viewWithLike(
    	    @Param("seq") int seq,
    	    @Param("loginUserId") String loginUserId
    	);

    
    // 관리자 페이지 ( 입점 문의 )
    List<ConsultingDTO> selectAdminList(); // 목록조회
    ConsultingDTO selectAdminView(int consultingId); // 상세보기
    int updateAdminStatus(@Param("consultingId") int seq, @Param("status") int status); // 상태변경
    
    // 관리자 페이지용 ( plaza )
    List<PlazaSelectDTO> adminSelect(@Param("category") String category); // 목록 categoryId null이면 전체
    PlazaViewDTO adminView(int seq); // 상세보기
    int updatePlazaStatus(@Param("plazaId") int seq, @Param("status") int status); // 상태변경
}
