package com.br.app.controller.plaza;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.br.app.controller.plaza.form.ConsultingForm;
import com.br.app.domain.plaza.CollaboDTO;
import com.br.app.domain.plaza.ConsultingDTO;
import com.br.app.domain.plaza.PlazaSelectDTO;
import com.br.app.domain.plaza.PlazaViewDTO;
import com.br.app.domain.plaza.PlazaWriteDTO;
import com.br.app.domain.user.UserDTO;
import com.br.app.mapper.plaza.PlazaMapper;
import com.br.app.mapper.user.UserMapper;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("play/plaza/*")
public class PlazaController {
	
	@Autowired
	PlazaMapper plazaMapper;
	
	@Autowired
	UserMapper userMapper;
	
	@GetMapping("/list")
	public String list(@RequestParam(value="category", required=false, defaultValue="ALL") String category,
            Principal principal,
            Model model) {

	String loginId = (principal != null ? principal.getName() : null);
	
	List<PlazaSelectDTO> list;
	
	boolean all = (category == null || category.equalsIgnoreCase("ALL"));
	
	if (loginId == null) {
	list = all ? plazaMapper.select()
	        : plazaMapper.selectCategory(category);
	} else {
	list = all ? plazaMapper.selectWithLike(loginId)
	        : plazaMapper.selectCategoryWithLike(category, loginId);
	}
	
	model.addAttribute("list", list);
	model.addAttribute("loginId", loginId);
	return "play.plaza.list";
	}
	
	@GetMapping("/view")
	public String view(@RequestParam("seq") int seq, Principal principal, Model model) {

		  String loginId = (principal != null ? principal.getName() : null);

		  PlazaViewDTO dto = (loginId == null)
		      ? plazaMapper.view(seq)
		      : plazaMapper.viewWithLike(seq, loginId);

		  model.addAttribute("dto", dto);
		  model.addAttribute("loginId", loginId);
		  return "play.plaza.view";
		}

	
	@GetMapping("/consulting")
	public String consulting() {
		return "play.plaza.consulting";
	}
	
	@PostMapping("/consulting")
	public String insertConsulting(ConsultingForm form, RedirectAttributes rttr) {
	  ConsultingDTO dto = form.toDto();
	  int row = plazaMapper.insertConsulting(dto);

	  if (row == 1) return "redirect:/play/plaza/list.do";
	  rttr.addFlashAttribute("error", "등록 실패");
	  return "redirect:/play/plaza/consulting.do";
	}
	
	@GetMapping("/new")
	public String newice(Principal principal, Model model) throws SQLException {
	    if (principal == null) return "redirect:/login/login.do";

	    String userId = principal.getName();
	    UserDTO loginUser = userMapper.selectByUserId(userId);
	    model.addAttribute("loginUser", loginUser);
	    return "play.plaza.new";
	}
	
	@PostMapping("/new")
	public String write(
	        Principal principal,
	        PlazaWriteDTO dto,
	        @RequestParam(name="is_applicant", required=false) String isApplicant,
	        @RequestParam(name="is_policy", required=false) String isPolicy,
	        @RequestParam(name="is_terms", required=false) String isTerms,
	        @RequestParam(name="is_copyright", required=false) String isCopyright,
	        @RequestParam(name="category", required=false) String category,
	        @RequestParam(name="attached_file_1", required=false) MultipartFile f1,
	        @RequestParam(name="attached_file_2", required=false) MultipartFile f2,
	        @RequestParam(name="attached_file_3", required=false) MultipartFile f3,
	        RedirectAttributes rttr
	) throws Exception {

	    if (principal == null) return "redirect:/login/login.do";

	    // ★ userId는 무조건 서버에서 박기 (폼 hidden 믿지 말기)
	    dto.setUserId(principal.getName());

	    dto.setIsAuthorPublic(ynTo10(isApplicant));
	    dto.setPersonalInfoConsent(ynTo10(isPolicy));
	    dto.setTermsAgreement(ynTo10(isTerms));
	    dto.setIdeaOfferAgreement(ynTo10(isCopyright));
	    dto.setPlazaCategoryId(categoryToId(category));

	    if (dto.getPersonalInfoConsent() != 1 || dto.getTermsAgreement() != 1 || dto.getIdeaOfferAgreement() != 1) {
	        rttr.addFlashAttribute("error", "필수 동의 항목을 모두 체크해야 등록할 수 있습니다.");
	        return "redirect:/play/plaza/new";
	    }

	    plazaMapper.insertPlazaReturnId(dto);
	    int plazaId = dto.getPlazaId();

	    saveOne(plazaId, f1);
	    saveOne(plazaId, f2);
	    saveOne(plazaId, f3);

	    return "redirect:/play/plaza/view.do?seq=" + plazaId;
	}


	// ====== 파일 저장 유틸 ======
	private static final String UPLOAD_DIR = "C:/Class/br31_upload/plaza";

	private void saveOne(int plazaId, MultipartFile file) throws IOException {
	    if (file == null || file.isEmpty()) return;

	    String original = file.getOriginalFilename();
	    String ext = "";
	    if (original != null && original.lastIndexOf(".") != -1) {
	        ext = original.substring(original.lastIndexOf("."));
	    }

	    String saved = UUID.randomUUID().toString().replace("-", "") + ext;

	    File dir = new File(UPLOAD_DIR);
	    if (!dir.exists()) dir.mkdirs();

	    File dest = new File(dir, saved);
	    file.transferTo(dest);

	    // DB 저장 (XML이 plazaId/fileName/origName 받는 형태)
	    plazaMapper.insertPlazaFile(plazaId, saved, original);
	}

	private Integer ynTo10(String v) {
	    if (v == null) return 0;
	    return "Y".equalsIgnoreCase(v.trim()) ? 1 : 0;
	}

	private Integer categoryToId(String category) {
	    if (category == null) return 1;
	    String c = category.trim().toUpperCase();
	    if ("A".equals(c)) return 1;
	    if ("B".equals(c)) return 2;
	    try { return Integer.parseInt(c); } catch (Exception ignore) {}
	    return 1;
	}
	
	@GetMapping("/collabo")
	public String collabo(Principal principal, Model model) throws SQLException {
	    if (principal == null) return "redirect:/login/login.do";

	    String userId = principal.getName();
	    UserDTO loginUser = userMapper.selectByUserId(userId);
	    model.addAttribute("loginUser", loginUser);

	    return "play.plaza.collabo";
	}

	
	// 콜라보 포스트매핑 만들기
	@PostMapping("/collabo")
	public String writeCollabo(
	        Principal principal,

	        @RequestParam String title,
	        @RequestParam String content,

	        @RequestParam(name="company_name") String companyName,
	        @RequestParam(name="manager_name") String managerName,
	        @RequestParam(name="manager_email") String managerEmail,
	        @RequestParam(name="manager_tel1") String tel1,
	        @RequestParam(name="manager_tel2") String tel2,
	        @RequestParam(name="manager_tel3") String tel3,

	        @RequestParam(name="is_policy", required=false) String isPolicy,
	        @RequestParam(name="is_terms", required=false) String isTerms,
	        @RequestParam(name="is_copyright", required=false) String isCopyright,

	        @RequestParam(name="attached_file_1", required=false) MultipartFile f1,
	        @RequestParam(name="attached_file_2", required=false) MultipartFile f2,
	        @RequestParam(name="attached_file_3", required=false) MultipartFile f3,

	        RedirectAttributes rttr
	) throws Exception {

	    if (principal == null) return "redirect:/login/login.do";

	    PlazaWriteDTO plaza = PlazaWriteDTO.builder()
	            .title(title)
	            .content(content)
	            .userId(principal.getName())
	            .isAuthorPublic(0)
	            .personalInfoConsent(ynTo10(isPolicy))
	            .termsAgreement(ynTo10(isTerms))
	            .ideaOfferAgreement(ynTo10(isCopyright))
	            .plazaCategoryId(2) 
	            .build();

	    if (plaza.getPersonalInfoConsent() != 1
	            || plaza.getTermsAgreement() != 1
	            || plaza.getIdeaOfferAgreement() != 1) {

	        rttr.addFlashAttribute("error", "필수 동의 항목을 체크해주세요.");
	        return "redirect:/play/plaza/collabo.do";
	    }

	    plazaMapper.insertPlazaReturnId(plaza);
	    int plazaId = plaza.getPlazaId();

	    CollaboDTO collabo = new CollaboDTO();
	    collabo.setPlazaId(plazaId);
	    collabo.setCompanyName(companyName);
	    collabo.setName(managerName);
	    collabo.setCompanyEmail(managerEmail);
	    collabo.setTel(tel1 + "-" + tel2 + "-" + tel3);

	    plazaMapper.insertCollabo(collabo);

	    saveOne(plazaId, f1);
	    saveOne(plazaId, f2);
	    saveOne(plazaId, f3);

	    return "redirect:/play/plaza/view.do?seq=" + plazaId;
	}

	@PostMapping(value="/like", produces="application/json")
	@ResponseBody
	public Map<String, Object> like(@RequestParam("seq") int plazaId, Principal principal) {

	    Map<String, Object> result = new HashMap<>();

	    if (principal == null) {
	        result.put("needLogin", true);
	        result.put("success", false);
	        return result;
	    }

	    String userId = principal.getName();

	    int cnt = plazaMapper.existsLike(plazaId, userId);
	    boolean exists = cnt > 0;

	    if (exists) plazaMapper.deleteLike(plazaId, userId);
	    else plazaMapper.insertLike(plazaId, userId);

	    result.put("needLogin", false);
	    result.put("success", true);
	    result.put("liked", !exists);
	    return result;
	}

}
