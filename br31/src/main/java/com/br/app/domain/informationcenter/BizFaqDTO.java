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
public class BizFaqDTO {
	private Integer bizFaqId;
	private String question;
	private String answer;
	private Date regDate;
}
