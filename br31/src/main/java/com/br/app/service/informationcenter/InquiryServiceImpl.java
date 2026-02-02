package com.br.app.service.informationcenter;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.br.app.domain.informationcenter.InquiryDTO;
import com.br.app.domain.informationcenter.InquiryListDTO;
import com.br.app.domain.informationcenter.InquiryViewDTO;
import com.br.app.mapper.informationcenter.InquiryMapper;

@Service
public class InquiryServiceImpl implements InquiryService {

    private final InquiryMapper inquiryMapper;

    public InquiryServiceImpl(InquiryMapper inquiryMapper) {
        this.inquiryMapper = inquiryMapper;
    }

    @Override
    @Transactional
    public void createInquiry(InquiryDTO dto) {
        // regDate는 DB에서 SYSDATE로 넣을 거라 DTO에 세팅 안 해도 됨
        inquiryMapper.insertInquiry(dto);
        // selectKey로 dto.inquiryId가 세팅됨(원하면 이후 로직에서 사용 가능)
    }
    
    @Override
    public List<InquiryListDTO> getMyInquiryList(String userId) {
        return inquiryMapper.selectMyInquiryList(userId);
    }
    
    @Override
    public InquiryViewDTO getInquiryView(Long inquiryId) {
        return inquiryMapper.selectInquiryView(inquiryId);
    }
}
