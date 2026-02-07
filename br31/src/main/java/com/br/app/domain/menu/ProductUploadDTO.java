package com.br.app.domain.menu;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductUploadDTO {
	 private Integer categoryId;
	    private String productName;
	    private String englishName;
	    private String subTitle;
	    private String description;
	    private String bgColor;
	    private String spanColor;
	    private Integer price;

	    private MultipartFile productImg; // 실제 파일
	    private MultipartFile posterImg;  // 실제 파일

	    private List<String> tags;
}
