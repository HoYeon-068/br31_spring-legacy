package com.br.app.domain.myflavor;

import java.io.Serializable;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MyFlavorResultDTO implements Serializable {
    private static final long serialVersionUID = 1L;

    private int seq;
    private String size;        // A/B/C/D
    private String title;       // 조합이름
    private String badgeTag;    // 태그
    private String writer;      // 나중에 로그인 id로 바꿔주기..
    private List<FlavorDTO> flavors; // 선택한 맛들
}
