<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="date=no">
<meta name="format-detection" content="address=no">
<meta name="format-detection" content="email=no">
<title>배스킨라빈스</title>

<meta name="description" content="행복을 전하는 프리미엄 아이스크림, 배스킨라빈스 공식 홈페이지 입니다.">
<meta name="keywords" content="baskinrobbins, br31, 배스킨라빈스, 배라, 베라">
<meta name="author" content="배스킨라빈스">
<meta property="og:site_name" content="배스킨라빈스">
<meta property="og:url" content="https://www.baskinrobbins.co.kr">
<meta property="og:title" content="[배스킨라빈스] 신규직영점 입점제의">
<meta property="og:description" content="배스킨라빈스 신규직영점 입점 제의 페이지 입니다.">
<meta property="og:image" content="${pageContext.request.contextPath}/resources/images/common/img_share.png">
<meta property="og:type" content="website">


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">


<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style type="text/css" rel="stylesheet" id="sandollcloud_css">@font-face { font-family:'Sandoll GothicNeo1 TTF'; font-weight:500; font-display:swap; font-style:normal; unicode-range:U+ce35,U+ce68,U+ce74,U+cf54,U+cfe0,U+d0a8,U+d0c0,U+d0dd,U+d130,U+d154,U+d1a0,U+d2b8-d2b9,U+d30c,U+d3c9,U+d3ec,U+d45c,U+d53c,U+d544,U+d558,U+d569,U+d56d,U+d574,U+d638,U+d655,U+d658,U+d68c,U+d6c4,U+d76c; src: url('https://bks0c7yrb0.execute-api.ap-northeast-2.amazonaws.com/v1/api/woff/drop_fontstream_woff/?token=gAAAAABpR217ksRa96Lget9DrY9M3nqM6tZ_xRNavLAza4WNSta_guqxKm-zD6XI3ZoABRDmeFzXp5BF7W-iB90s-KtnPTufEgaXxVmfmzotw6EYKozahwOcKZkCrGa3NAuX76b5b9H9RkR3sTdHiEO3hF6F_3RWzfElkiTH1WoOBVFnU-sCwO1-nAbDHsqmwJTfG8i2vtVdcmzwEJGC-78mlVQl3dOQc-SYuzMvjC45Es6wOGyQWbpp-LwQLfAO-Rqmc2oupRFI&secret=gAAAAABpR217NK-Bl-CX-vpnuEU7L54tKZRxSKlr5Q-Eags7lw2JTfMuiDpl6EcTVJNYD5HgFhZXpJF0OTcFxAQvyjcVaHge7KiNt0ZpivjnCpwAPPorpni7cC15TyoWaaW60JbXhGG8&font=SDGothicNeoaTTF-eMd&words=7Li17Lmo7Lm07L2U7L%2Bg7YKo7YOA7YOd7YSw7YWU7Yag7Yq47Yq57YyM7Y%2BJ7Y%2Bs7ZGc7ZS87ZWE7ZWY7ZWp7ZWt7ZW07Zi47ZmV7ZmY7ZqM7ZuE7Z2s&flavor=woff2') format('woff2');}
@font-face { font-family:'Sandoll GothicNeo1 TTF'; font-weight:500; font-display:swap; font-style:normal; unicode-range:U+20,U+25,U+28-2a,U+2c-30,U+30-36,U+38-3a,U+41-43,U+45,U+47,U+49,U+4b-50,U+52-54,U+5a,U+61-62,U+64-65,U+67-69,U+6b-70,U+72-74,U+76,U+79,U+a9,U+ac00,U+ac04,U+ac1c,U+ac70,U+ac74,U+ac80,U+ac8c,U+acbd,U+ace0,U+acf5,U+ad00,U+ad6c,U+ad70,U+ad8c,U+addc,U+adf8,U+ae30,U+ae4c,U+b098,U+b0a8,U+b0b4,U+b294,U+b2a5,U+b2c8,U+b2e4,U+b2e8,U+b2f4,U+b2f9,U+b300,U+b358,U+b3c4-b3c5,U+b3d9,U+b418,U+b4dc,U+b4f1,U+b610,U+b728,U+b77c-b77d,U+b798,U+b825,U+b85c-b85d,U+b8f9,U+b97c,U+b984,U+b9ac,U+b9bd,U+b9c8,U+b9dd,U+b9e4,U+ba54,U+ba74,U+baa9,U+bab0,U+bb38,U+bb3c,U+bc0f,U+bc14,U+bc18,U+bc29,U+bc30,U+bc88,U+bcc4,U+bcd1,U+bcf4-bcf5,U+bcf8,U+bd80,U+bd84,U+be44,U+be48,U+c0ac,U+c0b0,U+c0bc,U+c0c1,U+c0c9,U+c11c,U+c120,U+c124,U+c131,U+c138,U+c13c,U+c18c,U+c218,U+c21c,U+c2a4,U+c2b5,U+c2dc,U+c2e0,U+c2e4,U+c544,U+c548,U+c54a,U+c54c,U+c57d,U+c591,U+c5c5,U+c5d0,U+c5ec,U+c5f0,U+c601,U+c6a9,U+c6b0,U+c6b4,U+c6b8,U+c6cc,U+c6d0,U+c6d4,U+c720,U+c724,U+c728,U+c740,U+c758,U+c774,U+c778,U+c77c,U+c784-c785,U+c790,U+c7a5,U+c7ac,U+c801,U+c804,U+c810,U+c815,U+c81c,U+c870-c871,U+c8fc,U+c900,U+c9c0-c9c1,U+c9d1,U+cc0c,U+cc44-cc45,U+cc98,U+cc9c,U+cca0,U+ccad,U+cd08,U+cd94-cd95; src: url('https://bks0c7yrb0.execute-api.ap-northeast-2.amazonaws.com/v1/api/woff/drop_fontstream_woff/?token=gAAAAABpR217ksRa96Lget9DrY9M3nqM6tZ_xRNavLAza4WNSta_guqxKm-zD6XI3ZoABRDmeFzXp5BF7W-iB90s-KtnPTufEgaXxVmfmzotw6EYKozahwOcKZkCrGa3NAuX76b5b9H9RkR3sTdHiEO3hF6F_3RWzfElkiTH1WoOBVFnU-sCwO1-nAbDHsqmwJTfG8i2vtVdcmzwEJGC-78mlVQl3dOQc-SYuzMvjC45Es6wOGyQWbpp-LwQLfAO-Rqmc2oupRFI&secret=gAAAAABpR217NK-Bl-CX-vpnuEU7L54tKZRxSKlr5Q-Eags7lw2JTfMuiDpl6EcTVJNYD5HgFhZXpJF0OTcFxAQvyjcVaHge7KiNt0ZpivjnCpwAPPorpni7cC15TyoWaaW60JbXhGG8&font=SDGothicNeoaTTF-eMd&words=ICUoKSosLS4vMDAxMjM0NTY4OTpBQkNFR0lLTE1OT1BSU1RaYWJkZWdoaWtsbW5vcHJzdHZ5wqnqsIDqsITqsJzqsbDqsbTqsoDqsozqsr3qs6Dqs7XqtIDqtazqtbDqtozqt5zqt7jquLDquYzrgpjrgqjrgrTripTriqXri4jri6Tri6jri7Tri7nrjIDrjZjrj4Trj4Xrj5nrkJjrk5zrk7HrmJDrnKjrnbzrnb3rnpjroKXroZzroZ3ro7nrpbzrpoTrpqzrpr3rp4jrp53rp6TrqZTrqbTrqqnrqrDrrLjrrLzrsI%2FrsJTrsJjrsKnrsLDrsojrs4Trs5Hrs7Trs7Xrs7jrtoDrtoTruYTruYjsgqzsgrDsgrzsg4Hsg4nshJzshKDshKTshLHshLjshLzshozsiJjsiJzsiqTsirXsi5zsi6Dsi6TslYTslYjslYrslYzslb3slpHsl4Xsl5Dsl6zsl7DsmIHsmqnsmrDsmrTsmrjsm4zsm5Dsm5TsnKDsnKTsnKjsnYDsnZjsnbTsnbjsnbzsnoTsnoXsnpDsnqXsnqzsoIHsoITsoJDsoJXsoJzsobDsobHso7zspIDsp4Dsp4Hsp5HssIzssYTssYXsspjsspzssqDssq3stIjstpTstpU%3D&flavor=woff2') format('woff2');}
@font-face { font-family:'Sandoll GothicNeo1 TTF'; font-weight:400; font-display:swap; font-style:normal; unicode-range:U+c640,U+c6a9,U+c6b0,U+c6b4,U+c6b8,U+c6cc,U+c6d0,U+c6d4,U+c720,U+c724,U+c728,U+c73c,U+c740,U+c74c,U+c758,U+c774,U+c778,U+c77c,U+c784-c785,U+c790-c791,U+c7a5,U+c7ac,U+c800-c801,U+c804,U+c810,U+c815,U+c81c,U+c870-c871,U+c8fc,U+c900,U+c911,U+c9c0-c9c1,U+c9d1,U+cc0c,U+cc2c,U+cc3e,U+cc44-cc45,U+cc98,U+cc9c,U+cca0,U+ccad,U+ccb4,U+cd08,U+cd94-cd95,U+cde8,U+ce35,U+ce68,U+ce6d,U+ce74,U+cee4,U+cf00,U+cf54,U+cfe0,U+d06c,U+d0a8,U+d0c0,U+d0dd,U+d130,U+d154,U+d1a0,U+d2b8-d2b9,U+d30c,U+d329,U+d3c9,U+d3ec,U+d3fc,U+d45c,U+d488,U+d504,U+d50c,U+d53c,U+d544,U+d558,U+d569,U+d56d,U+d574,U+d61c,U+d638,U+d655,U+d658,U+d68c,U+d6c4,U+d734,U+d76c,U+d788; src: url('https://bks0c7yrb0.execute-api.ap-northeast-2.amazonaws.com/v1/api/woff/drop_fontstream_woff/?token=gAAAAABpR217ksRa96Lget9DrY9M3nqM6tZ_xRNavLAza4WNSta_guqxKm-zD6XI3ZoABRDmeFzXp5BF7W-iB90s-KtnPTufEgaXxVmfmzotw6EYKozahwOcKZkCrGa3NAuX76b5b9H9RkR3sTdHiEO3hF6F_3RWzfElkiTH1WoOBVFnU-sCwO1-nAbDHsqmwJTfG8i2vtVdcmzwEJGC-78mlVQl3dOQc-SYuzMvjC45Es6wOGyQWbpp-LwQLfAO-Rqmc2oupRFI&secret=gAAAAABpR217NK-Bl-CX-vpnuEU7L54tKZRxSKlr5Q-Eags7lw2JTfMuiDpl6EcTVJNYD5HgFhZXpJF0OTcFxAQvyjcVaHge7KiNt0ZpivjnCpwAPPorpni7cC15TyoWaaW60JbXhGG8&font=SDGothicNeoaTTF-dRg&words=7JmA7Jqp7Jqw7Jq07Jq47JuM7JuQ7JuU7Jyg7Jyk7Jyo7Jy87J2A7J2M7J2Y7J207J247J287J6E7J6F7J6Q7J6R7J6l7J6s7KCA7KCB7KCE7KCQ7KCV7KCc7KGw7KGx7KO87KSA7KSR7KeA7KeB7KeR7LCM7LCs7LC%2B7LGE7LGF7LKY7LKc7LKg7LKt7LK07LSI7LaU7LaV7Leo7Li17Lmo7Lmt7Lm07Luk7LyA7L2U7L%2Bg7YGs7YKo7YOA7YOd7YSw7YWU7Yag7Yq47Yq57YyM7Yyp7Y%2BJ7Y%2Bs7Y%2B87ZGc7ZKI7ZSE7ZSM7ZS87ZWE7ZWY7ZWp7ZWt7ZW07Zic7Zi47ZmV7ZmY7ZqM7ZuE7Zy07Z2s7Z6I&flavor=woff2') format('woff2');}
@font-face { font-family:'Sandoll GothicNeo1 TTF'; font-weight:400; font-display:swap; font-style:normal; unicode-range:U+20,U+25,U+28-2a,U+2c-30,U+30-36,U+38-3a,U+3d,U+3f,U+41-47,U+49-55,U+57,U+59-5b,U+5d,U+5f,U+61-70,U+72-76,U+78-7a,U+a9,U+ac00,U+ac04,U+ac1c-ac1d,U+ac70,U+ac74,U+ac80,U+ac8c,U+acbd,U+ace0,U+acf5,U+ad00,U+ad11,U+ad6c,U+ad70,U+ad8c,U+addc,U+adf8,U+ae30,U+ae4c,U+b098,U+b0a8,U+b0b4,U+b274,U+b294,U+b2a5,U+b2c8,U+b2e4,U+b2e8,U+b2eb-b2ec,U+b2f4,U+b2f9,U+b300,U+b358,U+b3c4-b3c5,U+b3d9,U+b418,U+b4dc,U+b4f1,U+b514,U+b610,U+b728,U+b77c-b77d,U+b798,U+b79c,U+b808,U+b825,U+b85c-b85d,U+b8cc,U+b8f9,U+b97c,U+b984,U+b9ac,U+b9bc-b9bd,U+b9c8,U+b9db,U+b9dd,U+b9e4,U+ba54,U+ba74,U+baa8-baa9,U+bab0,U+bb38,U+bb3c,U+bc0f,U+bc14,U+bc18,U+bc29,U+bc30,U+bc84,U+bc88,U+bca4,U+bcc4,U+bcd1,U+bcf4-bcf5,U+bcf8,U+bd80,U+bd84,U+be0c,U+be44,U+be48,U+c0ac-c0ad,U+c0b0,U+c0bc,U+c0c1,U+c0c9,U+c0f5,U+c11c,U+c120,U+c124,U+c131,U+c138,U+c13c,U+c158,U+c18c,U+c218,U+c21c,U+c2a4,U+c2b5,U+c2dc,U+c2e0,U+c2e4,U+c2ec-c2ed,U+c544,U+c548,U+c54a,U+c54c,U+c571,U+c57d,U+c591,U+c5b4,U+c5c5,U+c5d0,U+c5ec-c5ed,U+c5f0,U+c5f4,U+c601; src: url('https://bks0c7yrb0.execute-api.ap-northeast-2.amazonaws.com/v1/api/woff/drop_fontstream_woff/?token=gAAAAABpR217ksRa96Lget9DrY9M3nqM6tZ_xRNavLAza4WNSta_guqxKm-zD6XI3ZoABRDmeFzXp5BF7W-iB90s-KtnPTufEgaXxVmfmzotw6EYKozahwOcKZkCrGa3NAuX76b5b9H9RkR3sTdHiEO3hF6F_3RWzfElkiTH1WoOBVFnU-sCwO1-nAbDHsqmwJTfG8i2vtVdcmzwEJGC-78mlVQl3dOQc-SYuzMvjC45Es6wOGyQWbpp-LwQLfAO-Rqmc2oupRFI&secret=gAAAAABpR217NK-Bl-CX-vpnuEU7L54tKZRxSKlr5Q-Eags7lw2JTfMuiDpl6EcTVJNYD5HgFhZXpJF0OTcFxAQvyjcVaHge7KiNt0ZpivjnCpwAPPorpni7cC15TyoWaaW60JbXhGG8&font=SDGothicNeoaTTF-dRg&words=ICUoKSosLS4vMDAxMjM0NTY4OTo9P0FCQ0RFRkdJSktMTU5PUFFSU1RVV1laW11fYWJjZGVmZ2hpamtsbW5vcHJzdHV2eHl6wqnqsIDqsITqsJzqsJ3qsbDqsbTqsoDqsozqsr3qs6Dqs7XqtIDqtJHqtazqtbDqtozqt5zqt7jquLDquYzrgpjrgqjrgrTribTripTriqXri4jri6Tri6jri6vri6zri7Tri7nrjIDrjZjrj4Trj4Xrj5nrkJjrk5zrk7HrlJTrmJDrnKjrnbzrnb3rnpjrnpzroIjroKXroZzroZ3ro4zro7nrpbzrpoTrpqzrprzrpr3rp4jrp5vrp53rp6TrqZTrqbTrqqjrqqnrqrDrrLjrrLzrsI%2FrsJTrsJjrsKnrsLDrsoTrsojrsqTrs4Trs5Hrs7Trs7Xrs7jrtoDrtoTruIzruYTruYjsgqzsgq3sgrDsgrzsg4Hsg4nsg7XshJzshKDshKTshLHshLjshLzshZjshozsiJjsiJzsiqTsirXsi5zsi6Dsi6Tsi6zsi63slYTslYjslYrslYzslbHslb3slpHslrTsl4Xsl5Dsl6zsl63sl7Dsl7TsmIE%3D&flavor=woff2') format('woff2');}
@font-face { font-family:'Sandoll GothicNeo1 TTF'; font-weight:600; font-display:swap; font-style:normal; unicode-range:U+20,U+28-29,U+2c,U+30,U+30-31,U+41-46,U+49,U+4c-4e,U+50,U+52-54,U+59,U+61-62,U+65-66,U+69,U+6b-6c,U+6e-6f,U+72-74,U+76,U+79,U+ac1c-ac1d,U+ac70,U+acbd,U+ace0,U+acf5,U+ad11,U+adf8,U+ae30,U+b2e4,U+b2e8,U+b2ec,U+b3c4,U+b4dc,U+b4f1,U+b514,U+b77c,U+b798,U+b79c,U+b808,U+b85c-b85d,U+b8cc,U+b9ac,U+b9bc,U+b9c8,U+b9db,U+b9e4,U+baa8,U+bb38,U+bc0f,U+bc29,U+bc30,U+bc84,U+bca4,U+bcf4,U+be0c,U+be44,U+be48,U+c0ac,U+c0f5,U+c124,U+c13c,U+c158,U+c18c,U+c218,U+c2a4,U+c2dc,U+c2ec-c2ed,U+c544,U+c571,U+c5b4,U+c601,U+c640,U+c6b4,U+c6cc,U+c728,U+c74c,U+c758,U+c774,U+c778,U+c790-c791,U+c7a5,U+c800,U+c810,U+c815,U+c81c,U+c8fc,U+c900,U+c911,U+c9c0,U+cc2c,U+cc3e,U+cc98,U+ccb4,U+cde8,U+ce68,U+ce6d,U+cee4,U+cf00,U+d06c,U+d0a8,U+d0dd,U+d130,U+d1a0,U+d2b8,U+d329,U+d3ec,U+d504,U+d50c,U+d53c,U+d56d,U+d61c,U+d734,U+d788; src: url('https://bks0c7yrb0.execute-api.ap-northeast-2.amazonaws.com/v1/api/woff/drop_fontstream_woff/?token=gAAAAABpR217ksRa96Lget9DrY9M3nqM6tZ_xRNavLAza4WNSta_guqxKm-zD6XI3ZoABRDmeFzXp5BF7W-iB90s-KtnPTufEgaXxVmfmzotw6EYKozahwOcKZkCrGa3NAuX76b5b9H9RkR3sTdHiEO3hF6F_3RWzfElkiTH1WoOBVFnU-sCwO1-nAbDHsqmwJTfG8i2vtVdcmzwEJGC-78mlVQl3dOQc-SYuzMvjC45Es6wOGyQWbpp-LwQLfAO-Rqmc2oupRFI&secret=gAAAAABpR217NK-Bl-CX-vpnuEU7L54tKZRxSKlr5Q-Eags7lw2JTfMuiDpl6EcTVJNYD5HgFhZXpJF0OTcFxAQvyjcVaHge7KiNt0ZpivjnCpwAPPorpni7cC15TyoWaaW60JbXhGG8&font=SDGothicNeoaTTF-gBd&words=ICgpLDAwMUFCQ0RFRklMTU5QUlNUWWFiZWZpa2xub3JzdHZ56rCc6rCd6rGw6rK96rOg6rO16rSR6re46riw64uk64uo64us64%2BE65Oc65Ox65SU6528656Y656c66CI66Gc66Gd66OM66as66a866eI66eb66ek66qo66y467CP67Cp67Cw67KE67Kk67O067iM67mE67mI7IKs7IO17ISk7IS87IWY7IaM7IiY7Iqk7Iuc7Ius7Iut7JWE7JWx7Ja07JiB7JmA7Jq07JuM7Jyo7J2M7J2Y7J207J247J6Q7J6R7J6l7KCA7KCQ7KCV7KCc7KO87KSA7KSR7KeA7LCs7LC%2B7LKY7LK07Leo7Lmo7Lmt7Luk7LyA7YGs7YKo7YOd7YSw7Yag7Yq47Yyp7Y%2Bs7ZSE7ZSM7ZS87ZWt7Zic7Zy07Z6I&flavor=woff2') format('woff2');}
@font-face { font-family:'Sandoll GothicNeo1 TTF'; font-weight:700; font-display:swap; font-style:normal; unicode-range:U+20,U+2f-30,U+42-45,U+49-4a,U+4c-4e,U+50,U+52-54,U+61,U+65-67,U+69,U+6c-6f,U+72,U+74-76,U+79,U+addc,U+b77c,U+bc30,U+c2e0,U+c571,U+c601,U+c758,U+c785,U+c810,U+c81c,U+c9c1; src: url('https://bks0c7yrb0.execute-api.ap-northeast-2.amazonaws.com/v1/api/woff/drop_fontstream_woff/?token=gAAAAABpR217ksRa96Lget9DrY9M3nqM6tZ_xRNavLAza4WNSta_guqxKm-zD6XI3ZoABRDmeFzXp5BF7W-iB90s-KtnPTufEgaXxVmfmzotw6EYKozahwOcKZkCrGa3NAuX76b5b9H9RkR3sTdHiEO3hF6F_3RWzfElkiTH1WoOBVFnU-sCwO1-nAbDHsqmwJTfG8i2vtVdcmzwEJGC-78mlVQl3dOQc-SYuzMvjC45Es6wOGyQWbpp-LwQLfAO-Rqmc2oupRFI&secret=gAAAAABpR217NK-Bl-CX-vpnuEU7L54tKZRxSKlr5Q-Eags7lw2JTfMuiDpl6EcTVJNYD5HgFhZXpJF0OTcFxAQvyjcVaHge7KiNt0ZpivjnCpwAPPorpni7cC15TyoWaaW60JbXhGG8&font=SDGothicNeoaTTF-iHv&words=IC8wQkNERUlKTE1OUFJTVGFlZmdpbG1ub3J0dXZ56rec652867Cw7Iug7JWx7JiB7J2Y7J6F7KCQ7KCc7KeB&flavor=woff2') format('woff2');}
</style><link type="text/css" rel="stylesheet" href="blob:https://www.baskinrobbins.co.kr/e6d2289f-66ba-40ec-b191-36f6a76b2066"><link type="text/css" rel="stylesheet" href="blob:https://www.baskinrobbins.co.kr/3c7a8c00-5e94-4133-93cb-e24001b5a9b5"><link type="text/css" rel="stylesheet" href="blob:https://www.baskinrobbins.co.kr/88e75290-30d8-4a8c-8bad-5ccc1c7ab5a3"><link type="text/css" rel="stylesheet" href="blob:https://www.baskinrobbins.co.kr/07ebcb32-33ff-49b5-b71b-d800213d00d7"></head>
<body id="baskinrobbins-information-center-store-offer-register" class="baskinrobbins-information-center-store-offer-register">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div class="site-container">
    <section id="content" class="store-offer-register">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">
                        신규 직영점 입점 제의
                    </h2>
                </div>

                <div class="page-header__content">
                    <p class="page-header__text">
                        배라와의 시작, 배라로의 시작
                    </p>
                </div>
            </div>
        </header>

        <div class="store-offer-register__container">
            <form action="register-proc.php" class="store-offer-register__form form" method="post">
                <input type="hidden" name="csrf_token" value="MTc2NjI4ODc3MmUzOWY4ZjU3YjU5MmM5Y2U4MDliNmMyMzQyYWJkZjdkOGMyZDhjYzdhZDFmYzFhMzhjMDMzNDhjODkzZDM5NmRkMjlmMmNmNWY1YzUxYzkx">
                <input type="hidden" name="offer_agree" value="Y">
                <legend>신규 직영점 입점 제의 입력 폼</legend>

                <fieldset class="store-offer-register__fieldset">
                    <section class="store-offer-register__content">
                        <header class="store-offer-register__header">
                            <h3 class="form__title">배스킨라빈스 직영점포 입점 제안 개인정보 수집이용 동의안내</h3>
                        </header>

                        <table class="form-table">
                            <thead>
                            <tr>
                                <th>수집하는 개인정보 항목</th>
                                <th>개인정보 수집 이용목적</th>
                                <th>개인정보 보유 및 이용기간</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>이름, 연락처, 이메일, 소유 부동산 주소, 희망 임대조건</td>
                                <td>배스킨라빈스 직영 입점 상담</td>
                                <td>입점 상담 신청 후 12개월 또는 동의 철회 시 까지</td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="store-offer-register__box">
                            <label class="form-radio">
                                <input type="radio" class="form-radio__input privacy" name="is_policy" value="Y">
                                <span class="form-radio__text">동의합니다</span>
                            </label>

                            <label class="form-radio">
                                <input type="radio" class="form-radio__input" name="is_policy" value="N">
                                <span class="form-radio__text">동의하지 않습니다</span>
                            </label>
                        </div>

                        <p class="store-offer-register__essential">*표시 항목은 필수 입력 항목입니다</p>

                        <div class="store-offer-register__table">
                            <table class="table table--line layout-table">
                                <tbody>
                                <tr>
                                    <th class="form__name">* 점포 구분</th>
                                    <td class="table__area">
                                        <div class="store-offer-register__area">
                                                                                            <label class="form-radio">
                                                    <input type="radio" class="form-radio__input type" name="store" value="A">
                                                    <span class="form-radio__text">일반 (일반 건물에 입점 매장)</span>
                                                </label>
                                                                                                <label class="form-radio">
                                                    <input type="radio" class="form-radio__input type" name="store" value="B">
                                                    <span class="form-radio__text">토지 (신축 단독매장)</span>
                                                </label>
                                                                                                <label class="form-radio">
                                                    <input type="radio" class="form-radio__input type" name="store" value="C">
                                                    <span class="form-radio__text">특수상권(마트, 복합몰, 리조트,병원,호텔 등)</span>
                                                </label>
                                                                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 추천인 구분</th>
                                    <td class="table__area">
                                        <div class="store-offer-register__area">
                                                                                            <label class="form-radio">
                                                    <input type="radio" class="form-radio__input recommender" name="recommender" value="A">
                                                    <span class="form-radio__text">임대인 본인 (소유권자)</span>
                                                </label>
                                                                                                <label class="form-radio">
                                                    <input type="radio" class="form-radio__input recommender" name="recommender" value="B">
                                                    <span class="form-radio__text">대리인 (부동산, 에이전트)</span>
                                                </label>
                                                                                                <label class="form-radio">
                                                    <input type="radio" class="form-radio__input recommender" name="recommender" value="C">
                                                    <span class="form-radio__text">임대인 지인 (가족, 지인)</span>
                                                </label>
                                                                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 추천점포 주소</th>
                                    <td class="table__area">
                                        <div class="table__box address address--number">
                                            <input type="text" class="form__input table__input" value="" name="zipcode" readonly="">
                                            <button type="button" class="address__button">주소 찾기</button>
                                        </div>
                                        <input type="text" name="addr" class="form__input table__input table__input--long address address--default" placeholder="기본 주소를 입력하세요." readonly="" value="">
                                        <input type="text" name="addr_detail" placeholder="상세 주소를 입력하세요" class="form__input table__input table__input--long address address--detail" value="">

                                        <p class="table__alert">
                                            * 주소 검색이 안되실 경우에 추천 주소 (시, 군, 구)를 임의로 선택 후 상세주소에 실제 주소를 입력하시거나<br>
                                            아래 기타 상세에 별도로 입력하여 주시면 담당자가 확인 가능합니다
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 이름</th>
                                    <td class="table__area">
                                        <input type="text" class="table__input form__input name" maxlength="30" name="applicant_name">
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 연락처</th>
                                    <td class="table__area">
                                        <div class="form-tel">
                                            <input type="hidden" class="form-tel__input tel">
                                            <input type="text" class="form-tel__input form-tel__input--large" maxlength="11" name="applicant_tel">
<!--                                            <input type="text" class="form-tel__input" maxlength="3" name="tel1">-->
<!--                                            <div class="form-tel__hypen"></div>-->
<!--                                            <input type="text" class="form-tel__input" maxlength="4" name="tel2">-->
<!--                                            <div class="form-tel__hypen"></div>-->
<!--                                            <input type="text" class="form-tel__input" maxlength="4" name="tel3">-->
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 이메일</th>
                                    <td class="table__area">
                                        <input type="text" class="table__input form__input email" name="applicant_email">
<!--                                        <div class="form-email">-->
<!--                                            <input type="hidden" class="form-email__all">-->
<!--                                            <input type="text" class="form-email__first" name="email1">-->
<!--                                            <span class="form-email__text">@</span>-->
<!--                                            <input type="text" class="form-email__last" name="email2">-->
<!--                                            <select name="" class="form-email__select">-->
<!--                                                <option value="">직접입력</option>-->
<!--                                                <option value="gmail.com">gmail.com</option>-->
<!--                                                <option value="naver.com">naver.com</option>-->
<!--                                                <option value="hanmail.net">hanmail.net</option>-->
<!--                                            </select>-->
<!--                                        </div>-->
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 면적</th>
                                    <td class="table__area">
                                        <div class="store-offer-register__area">
                                            <label class="store-offer-register__label">
                                                <input type="text" class="form__input table__input table__input--large land-area" placeholder="토지면적을 입력해주세요." name="land_area">
                                                <span class="store-offer-register__text">평</span>
                                            </label>

                                            <label class="store-offer-register__label">
                                                <input type="text" class="form__input table__input table__input--large exclusive-area" placeholder="전용면적을 입력해주세요." name="dedicated_area">
                                                <span class="store-offer-register__text">평</span>
                                            </label>

                                            <label class="store-offer-register__label">
                                                <input type="text" class="form__input table__input table__input--short floor" placeholder="예시: 1층/1~3층" name="floor">
                                                <span class="store-offer-register__text">층</span>
                                            </label>

                                            <p class="table__message">* 전용면적 : 건물 내 실 면적</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 희망 임대조건</th>
                                    <td class="table__area">
                                        <div class="store-offer-register__area">
                                            <label class="store-offer-register__label">
                                                <input type="text" class="form__input table__input table__input--grande deposit" placeholder="보증금을 입력해주세요" name="deposit">
                                                <span class="store-offer-register__text">원</span>
                                            </label>

                                            <label class="store-offer-register__label">
                                                <input type="text" class="form__input table__input table__input--grande rent" placeholder="임대료를 입력해주세요." name="rent">
                                                <span class="store-offer-register__text">원</span>
                                            </label>
                                        </div>

                                        <div class="store-offer-register__area">
                                            <label class="store-offer-register__label">
                                                <input type="text" class="form__input table__input table__input--grande charge" placeholder="희망 수수료율을 입력해주세요." name="hope_fee">
                                                <span class="store-offer-register__text">%</span>
                                            </label>

                                            <label class="store-offer-register__label">
                                                <input type="text" class="form__input table__input table__input--grande maintenance-charge" placeholder="관리비를 입력해주세요" name="administration_cost">
                                                <span class="store-offer-register__text">원</span>
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 기타 문의 내용</th>
                                    <td class="table__area table__area--no-distance">
                                        <div class="store-offer-register-textarea">
                                            <textarea name="other_inquiry_details" class="store-offer-register-textarea__textarea" placeholder=": 입점 신청 주소지 주변 상권에 대한 상세 설명
: 임차로 협의 가능 여부
: 복수 총일 경우 층별 면적 등" maxlength="1800"></textarea>
                                            <p class="store-offer-register-textarea__current-text current-text">[0/1800]</p>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>


                        <div class="store-offer-register-buttons">
                            <a href="/information-center/store-offer/offer.php" class="store-offer-register-buttons__cancel">취소</a>
                            <button type="submit" class="store-offer-register-buttons__submit">등록</button>
                        </div>
                    </section>
                </fieldset>
            </form>

            <div id="post-code-modal" class="post-code-popup modal fade">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div id="post-code" class="post-code">
                            </div>
                        </div>

                        <button type="button" class="btn-close">
                            <span>닫기</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />



<img src="https://t.co/1/i/adsct?bci=4&amp;dv=Asia%2FSeoul%26ko-KR%2Cko%2Cen-US%2Cen%26Google%20Inc.%26Win32%26255%261536%26864%2612%2624%261536%26816%260%26na&amp;eci=3&amp;event=%7B%7D&amp;event_id=32c8e2f4-c2f2-430d-ab33-eb40b5e893c5&amp;integration=advertiser&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=1ea2fb0f-d577-46a1-8954-94e91e3691d2&amp;pt=%EB%B0%B0%EC%8A%A4%ED%82%A8%EB%9D%BC%EB%B9%88%EC%8A%A4&amp;tw_document_href=https%3A%2F%2Fwww.baskinrobbins.co.kr%2Finformation-center%2Fstore-offer%2Fregister.php%3Foffer_agree%3DY&amp;tw_iframe_status=0&amp;txn_id=ogfh2&amp;type=javascript&amp;version=2.3.35" height="1" width="1" style="display: none;"><img src="https://analytics.twitter.com/1/i/adsct?bci=4&amp;dv=Asia%2FSeoul%26ko-KR%2Cko%2Cen-US%2Cen%26Google%20Inc.%26Win32%26255%261536%26864%2612%2624%261536%26816%260%26na&amp;eci=3&amp;event=%7B%7D&amp;event_id=32c8e2f4-c2f2-430d-ab33-eb40b5e893c5&amp;integration=advertiser&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=1ea2fb0f-d577-46a1-8954-94e91e3691d2&amp;pt=%EB%B0%B0%EC%8A%A4%ED%82%A8%EB%9D%BC%EB%B9%88%EC%8A%A4&amp;tw_document_href=https%3A%2F%2Fwww.baskinrobbins.co.kr%2Finformation-center%2Fstore-offer%2Fregister.php%3Foffer_agree%3DY&amp;tw_iframe_status=0&amp;txn_id=ogfh2&amp;type=javascript&amp;version=2.3.35" height="1" width="1" style="display: none;"></body></html>