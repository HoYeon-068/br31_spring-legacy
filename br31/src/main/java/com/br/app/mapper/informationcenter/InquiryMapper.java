package com.br.app.mapper.informationcenter;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.br.app.domain.informationcenter.InquiryDTO;
import com.br.app.domain.informationcenter.InquiryListDTO;
import com.br.app.domain.informationcenter.InquiryViewDTO;

public interface InquiryMapper {
    int insertInquiry(InquiryDTO dto);
    List<InquiryListDTO> selectMyInquiryList(@Param("userId") String userId);
    InquiryViewDTO selectInquiryView(@Param("inquiryId") Long inquiryId);
}
