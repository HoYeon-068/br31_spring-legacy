package com.br.app.domain.myflavor;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class MyFlavorCatalog {

    private static final Map<String, FlavorDTO> MAP;

    static {
        Map<String, FlavorDTO> m = new HashMap<>();

        m.put("863", new FlavorDTO("863", "윈터 밤", "/resources/images/upload/product/main/9503e9dc08e5e728836d6243219a1141.png"));
        m.put("862", new FlavorDTO("862", "초콜릿 쿠키 스모어", "/resources/images/upload/product/main/005a8b9dab143458191930812c1a5561.png"));
        m.put("843", new FlavorDTO("843", "아이스 꼬북칩", "/resources/images/upload/product/main/01b945440bbb79c034a7eb6672e5fea4.png"));
        m.put("840", new FlavorDTO("840", "초코포키해♥", "/resources/images/upload/product/main/d1c5862f5649eb3de61e7cc150999d18.png"));
        m.put("803", new FlavorDTO("803", "말차다미아", "/resources/images/upload/product/main/196edabde017591708905ad0f489257e.png"));
        m.put("827", new FlavorDTO("827", "(Lessly Edition) 초코나무숲", "/resources/images/upload/product/main/0716427ae68eff29f6da0445ad46cf39.png"));
        m.put("808", new FlavorDTO("808", "골든 애플 요거트", "/resources/images/upload/product/main/ec90470f157dbd136d2cfc7e94c1cd89.png"));
        m.put("801", new FlavorDTO("801", "(Lessly Edition) 아몬드 봉봉", "/resources/images/upload/product/main/e511aa903274e35ed11287f59cc924df.png"));
        m.put("777", new FlavorDTO("777", "(Lessly Edition) 엄마는 외계인", "/resources/images/upload/product/main/09ce6b140dad71186b063fbc77fa6617.png"));
        m.put("788", new FlavorDTO("788", "아이스 맥심 모카골드", "/resources/images/upload/product/main/63c000c0602e29401abc877f8f617ec9.png"));
        m.put("786", new FlavorDTO("786", "사랑에 빠진 딸기", "/resources/images/upload/product/main/fea066eec3455d92b954428498ad30b3.png"));
        m.put("557", new FlavorDTO("557", "수박 Hero", "/resources/images/upload/product/main/16c6b8173ad0f21ed0e53fed0ffc86cf.png"));
        m.put("414", new FlavorDTO("414", "아빠는 딸바봉", "/resources/images/upload/product/main/abd67bc325966a949b24f08e75d8f1a7.png"));
        m.put("348", new FlavorDTO("348", "마법사의 비밀 레시피", "/resources/images/upload/product/main/dd743197f80c722eb57389b4c1814d2f.png"));
        m.put("17",  new FlavorDTO("17",  "엄마는 외계인", "/resources/images/upload/product/main/91c8668227bcf556c43a968b97e342e6.png"));
        m.put("6",   new FlavorDTO("6",   "민트 초콜릿 칩", "/resources/images/upload/product/main/fb92d70dee836652115c4f3b13175541.png"));
        m.put("3",   new FlavorDTO("3",   "뉴욕 치즈케이크", "/resources/images/upload/product/main/60a04a3a5d1b0119f065d12ee7797b2c.png"));
        m.put("5",   new FlavorDTO("5",   "레인보우 샤베트", "/resources/images/upload/product/main/5ad63f3af7244a666d981a1497a39fe7.png"));
        m.put("24",  new FlavorDTO("24",  "체리쥬빌레", "/resources/images/upload/product/main/f6609e3e3431d54beceeb1d3787403af.png"));
        m.put("15",  new FlavorDTO("15",  "슈팅스타", "/resources/images/upload/product/main/a4b71e8b99743c93a7824331850b0a3d.png"));
        m.put("19",  new FlavorDTO("19",  "오레오 쿠키 앤 크림", "/resources/images/upload/product/main/414246bd9041530d6ad4d30d97aac87c.png"));
        m.put("12",  new FlavorDTO("12",  "베리베리 스트로베리", "/resources/images/upload/product/main/ea6608b4f72563b360da5c44c946ddc7.png"));
        m.put("1",   new FlavorDTO("1",   "31요거트", "/resources/images/upload/product/main/d56328637eaf86e3273ebc39c57aada7.png"));
        m.put("8",   new FlavorDTO("8",   "바람과 함께 사라지다", "/resources/images/upload/product/main/01ecc320f5d3a6f32e5188eda373842d.png"));
        m.put("22",  new FlavorDTO("22",  "이상한 나라의 솜사탕", "/resources/images/upload/product/main/4db4f9967ad6f603837a40eede965ef0.png"));
        m.put("29",  new FlavorDTO("29",  "피스타치오 아몬드", "/resources/images/upload/product/main/868364b0ed6038d0c9aee0a10e50d4a9.png"));
        m.put("28",  new FlavorDTO("28",  "초콜릿 무스", "/resources/images/upload/product/main/0d67607c2ca4dde4ec24ac8109a343c2.png"));
        m.put("2",   new FlavorDTO("2",   "그린티", "/resources/images/upload/product/main/a6bd7bcdd6bdb56f28df7e98f051abda.png"));
        m.put("27",  new FlavorDTO("27",  "초콜릿", "/resources/images/upload/product/main/aff1c39b1653ddb7701abd9b4c8394ee.png"));
        m.put("23",  new FlavorDTO("23",  "자모카 아몬드 훠지", "/resources/images/upload/product/main/f31388da0371388c2086a7c90990a097.png"));
        m.put("16",  new FlavorDTO("16",  "아몬드 봉봉", "/resources/images/upload/product/main/e7cb5667c3147ddb0b31e28d1f365980.png"));
        m.put("7",   new FlavorDTO("7",   "바닐라", "/resources/images/upload/product/main/901f131644310c0eb356cbab7ecc4738.png"));

        MAP = Collections.unmodifiableMap(m);
    }

    public static FlavorDTO find(String id) {
        return MAP.get(id);
    }
}
