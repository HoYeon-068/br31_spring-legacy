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
    public void createInquiry(InquiryDTO dto, String userId) {
        if (userId == null || userId.trim().isEmpty()) {
            throw new IllegalArgumentException("userId is required.");
        }
        if (dto == null) {
            throw new IllegalArgumentException("InquiryDTO is required.");
        }

   
        dto.setUserID(userId);

        inquiryMapper.insertInquiry(dto);
   
    }

    @Override
    public List<InquiryListDTO> getMyInquiryList(String userId) {
        if (userId == null || userId.trim().isEmpty()) {
            throw new IllegalArgumentException("userId is required.");
        }
        return inquiryMapper.selectMyInquiryList(userId);
    }

    @Override
    public InquiryViewDTO getInquiryView(Long inquiryId, String userId) {
        if (inquiryId == null) {
            throw new IllegalArgumentException("inquiryId is required.");
        }
        if (userId == null || userId.trim().isEmpty()) {
            throw new IllegalArgumentException("userId is required.");
        }

   
        InquiryViewDTO dto = inquiryMapper.selectInquiryView(inquiryId, userId);

   
        if (dto == null) {
          
            throw new IllegalStateException("Inquiry not found or access denied.");
        }
        return dto;
    }
}
