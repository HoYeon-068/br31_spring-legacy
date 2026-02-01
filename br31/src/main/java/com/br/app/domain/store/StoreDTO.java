package com.br.app.domain.store;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class StoreDTO {
	private Integer storeId;           // store_id
    private Integer managerId;         // manager_id
    private String storeName;       // store_name
    private String storeType;       // store_type
    private Date openDate;          // open_date
    private String storeTel;        // store_tel
    private String businessHours;   // business_hours
    private String storeStatus;     // store_status
    private String sido;            // sido
    private String sigungu;         // sigungu
    private String street;          // street
    private String addressDetail;   // address_detail
    private Double latitude;        // latitude
    private Double longitude;       // longitude
}
