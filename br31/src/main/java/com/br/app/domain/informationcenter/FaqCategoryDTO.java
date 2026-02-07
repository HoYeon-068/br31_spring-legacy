package com.br.app.domain.informationcenter;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class FaqCategoryDTO {

    private int faqCategoryID;
    private String name;
}
