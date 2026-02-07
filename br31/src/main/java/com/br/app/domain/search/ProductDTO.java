package com.br.app.domain.search;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductDTO {

    private Long productsId;
    private Long categoryId;

    private String productName;
    private String englishName;
    private String subTitle;

    private String description;
    private String productStatus;

    private String imgPath;
    private String bgColor;
    private String spanColor;

    private String posterPath;
    private Integer price;
    private Date releaseDate;
}
