package com.br.app.service.informationcenter;

import java.util.List;
import com.br.app.domain.informationcenter.InquiryDTO;
import com.br.app.domain.informationcenter.InquiryListDTO;
import com.br.app.domain.informationcenter.InquiryViewDTO;

public interface InquiryService {
    void createInquiry(InquiryDTO dto, String userId);
    List<InquiryListDTO> getMyInquiryList(String userId);
    InquiryViewDTO getInquiryView(Long inquiryId, String userId);
}
