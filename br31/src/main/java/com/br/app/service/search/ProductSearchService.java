package com.br.app.service.search;

import java.util.List;
import com.br.app.domain.search.ProductDTO;

public interface ProductSearchService {
    List<ProductDTO> search(String keyword, Long categoryId);
    int count(String keyword, Long categoryId);
}
