package com.br.app.domain.myflavor;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class FlavorDTO implements Serializable {
	private static final long serialVersionUID = 1L;

    private String id;
    private String name;
    private String imgPath;
}
