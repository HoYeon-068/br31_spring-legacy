package com.br.app.domain.informationcenter;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class NewStoreBoardDTO {
	private Integer newStoreBoardId;   // NUMBER
    private String userId;          // VARCHAR2(20)
    private String sido;            // VARCHAR2(30)
    private String sigungu;         // VARCHAR2(50)
    private String marketArea;      // VARCHAR2(255)
    private Date createdAt; // DATE
    private Integer viewCount;          // NUMBER
    private String currentBusiness; // VARCHAR2(100)
    private String floor;           // VARCHAR2(20)
    private String area;            // VARCHAR2(20)
    private String keyMoney;        // VARCHAR2(20)
    private String deposit;         // VARCHAR2(20)
    private Integer isDeleted;           // NUMBER(1)
    private String description;     // VARCHAR2(2000)
    private String rentalFee;       // VARCHAR2(20)
    private double latitude;        // NUMBER
    private double longitude;       // NUMBER
}
