package com.br.app.service.search;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.br.app.domain.search.ProductDTO;
import com.br.app.mapper.search.ProductSearchMapper;

@Service
public class ProductSearchServiceImpl implements ProductSearchService {

    @Autowired
    private ProductSearchMapper productSearchMapper;

    @Override
    public List<ProductDTO> search(String keyword, Long categoryId) {
        String k = (keyword == null) ? "" : keyword.trim();
        return productSearchMapper.selectSearchList(k, categoryId);
    }

    @Override
    public int count(String keyword, Long categoryId) {
        String k = (keyword == null) ? "" : keyword.trim();
        return productSearchMapper.selectSearchCount(k, categoryId);
    }
}
