package com.br.app.domain.plaza;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PlazaWriteDTO {
	
	private String title;
    private String content;
    private Integer isAuthorPublic;       // 1/0
    private String userId;            // loginUserId
    private Integer personalInfoConsent;  // 1/0
    private Integer termsAgreement;       // 1/0
    private Integer plazaCategoryId;      // 1(아이디어) / 2(콜라보)
    private Integer ideaOfferAgreement;   // 1/0
    private Integer plazaId;
}
