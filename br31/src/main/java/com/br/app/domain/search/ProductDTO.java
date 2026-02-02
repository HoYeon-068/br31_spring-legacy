package com.br.app.domain.search;

import java.util.Date;

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

    public Long getProductsId() { return productsId; }
    public void setProductsId(Long productsId) { this.productsId = productsId; }

    public Long getCategoryId() { return categoryId; }
    public void setCategoryId(Long categoryId) { this.categoryId = categoryId; }

    public String getProductName() { return productName; }
    public void setProductName(String productName) { this.productName = productName; }

    public String getEnglishName() { return englishName; }
    public void setEnglishName(String englishName) { this.englishName = englishName; }

    public String getSubTitle() { return subTitle; }
    public void setSubTitle(String subTitle) { this.subTitle = subTitle; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getProductStatus() { return productStatus; }
    public void setProductStatus(String productStatus) { this.productStatus = productStatus; }

    public String getImgPath() { return imgPath; }
    public void setImgPath(String imgPath) { this.imgPath = imgPath; }

    public String getBgColor() { return bgColor; }
    public void setBgColor(String bgColor) { this.bgColor = bgColor; }

    public String getSpanColor() { return spanColor; }
    public void setSpanColor(String spanColor) { this.spanColor = spanColor; }

    public String getPosterPath() { return posterPath; }
    public void setPosterPath(String posterPath) { this.posterPath = posterPath; }

    public Integer getPrice() { return price; }
    public void setPrice(Integer price) { this.price = price; }

    public Date getReleaseDate() { return releaseDate; }
    public void setReleaseDate(Date releaseDate) { this.releaseDate = releaseDate; }
}
