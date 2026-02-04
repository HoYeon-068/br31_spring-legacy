package com.br.app.controller.plaza.form;

import com.br.app.domain.plaza.ConsultingDTO;

import lombok.Data;

@Data
public class ConsultingForm {
	
  private int personalInfoConsent;

  private String contact_form_username;
  private String contact_form_tel1;
  private String contact_form_tel2;
  private String contact_form_tel3;

  private String contact_from_hour;
  private String contact_from_minute;
  private String contact_to_hour;
  private String contact_to_minute;

  private String contact_from_email;

  private String sido;
  private String gugun;

  private String other_inquiry_details;

  private String zipcode;
  private String addr;
  private String addr_detail;

  private String pyeong;

  private String store_open_period;
  private String store_open_period_etc;

  private String store_open_amount;
  private String store_open_amount_etc;

  public ConsultingDTO toDto() {
    String tel = joinTel(nvl(contact_form_tel1), nvl(contact_form_tel2), nvl(contact_form_tel3));
    String time = buildTime(nvl(contact_from_hour), nvl(contact_from_minute), nvl(contact_to_hour), nvl(contact_to_minute));
    String preferredRegion = (nvl(sido) + " " + nvl(gugun)).trim();
    String address = (nvl(addr) + " " + nvl(addr_detail)).trim();

    String desiredOpeningDate = "기타".equals(nvl(store_open_period)) ? nvl(store_open_period_etc) : nvl(store_open_period);
    String investmentAmount  = "기타".equals(nvl(store_open_amount)) ? nvl(store_open_amount_etc) : nvl(store_open_amount);

    String storeArea = toStoreArea(nvl(pyeong));

    return ConsultingDTO.builder()
        .personalInfoConsent(personalInfoConsent)
        .name(nvl(contact_form_username))
        .tel(tel)
        .time(time)
        .email(nvl(contact_from_email))
        .preferredRegion(preferredRegion)
        .content(nvl(other_inquiry_details))
        .zipcode(nvl(zipcode))
        .address(address)
        .storeArea(storeArea)
        .desiredOpeningDate(desiredOpeningDate)
        .investmentAmount(investmentAmount)
        .status(0)
        .build();
  }

  private static String nvl(String s){ return s == null ? "" : s.trim(); }

  private static String joinTel(String t1, String t2, String t3) {
    if (t1.isEmpty() && t2.isEmpty() && t3.isEmpty()) return "";
    return t1 + "-" + t2 + "-" + t3;
  }

  private static String buildTime(String fromH, String fromM, String toH, String toM) {
    if (fromH.isEmpty() || fromM.isEmpty() || toH.isEmpty() || toM.isEmpty()) return "";
    return fromH + ":" + fromM + " ~ " + toH + ":" + toM;
  }

  private static String toStoreArea(String pyeong) {
    if (pyeong.isEmpty()) return "";
    if ("30".equals(pyeong)) return "30평이상";
    if ("40".equals(pyeong)) return "40평이상";
    if ("50".equals(pyeong)) return "50평이상";
    return pyeong;
  }
}

