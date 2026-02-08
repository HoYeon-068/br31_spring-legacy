package com.br.app.mapper.admin;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.admin.AdminFaqDTO;

public interface AdminFaqMapper {


    List<AdminFaqDTO> selectList();

 
    AdminFaqDTO selectOne(@Param("faqId") Long faqId);


    int insert(AdminFaqDTO dto);

  
    int update(AdminFaqDTO dto);


    int delete(@Param("faqId") Long faqId);
}
