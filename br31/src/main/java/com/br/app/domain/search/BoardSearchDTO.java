package com.br.app.domain.search;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BoardSearchDTO {

    private String type;     // "NOTICE" or "PRESS"
    private int id;          // notice_id or pr_id
    private String title;
    private String regDate;  // 화면 출력용
    private String viewUrl;  // /information-center/notice/view.do?id=... or /press/view.do?id=...

    private int no;          // 화면 번호(목록에서 사용)
}
