package com.br.app.domain.myflavor;

public class MyFlavorSession {
    public static String key(int seq) {
        return "MYFLAVOR_" + seq;
    }
}
