package com.br.app.controller.informationcenter;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.informationcenter.BizFaqDTO;
import com.br.app.domain.informationcenter.FairTradeDTO;
import com.br.app.domain.informationcenter.FaqDTO;
import com.br.app.domain.informationcenter.NewStoreBoardDTO;
import com.br.app.domain.informationcenter.NoticeDTO;
import com.br.app.domain.informationcenter.PageVO;
import com.br.app.domain.informationcenter.PressDTO;
import com.br.app.mapper.informationcenter.BizFaqMapper;
import com.br.app.mapper.informationcenter.FairTradeMapper;
import com.br.app.mapper.informationcenter.FaqMapper;
import com.br.app.mapper.informationcenter.NewStoreBoardMapper;
import com.br.app.mapper.informationcenter.NoticeMapper;
import com.br.app.mapper.informationcenter.PressMapper;
import com.br.app.service.informationcenter.InquiryService;
import com.br.app.service.search.BoardSearchService;



@Controller
@RequestMapping("/information-center")
public class InformationCenterController {
	private final NoticeMapper noticeMapper;
	private final PressMapper pressMapper;
	private final FairTradeMapper fairTradeMapper;
	private final FaqMapper faqMapper;

	@Autowired
	private NewStoreBoardMapper newStoreDao;
	
	@Autowired
	private InquiryService inquiryService;

	@Autowired
	private BoardSearchService boardSearchService;
	@Autowired
	private BizFaqMapper bizFaqDao;


	@Autowired
	public InformationCenterController(
			NoticeMapper noticeMapper,
			PressMapper pressMapper,
			FairTradeMapper fairTradeMapper,
			FaqMapper faqMapper


			) {
		this.noticeMapper = noticeMapper;
		this.pressMapper = pressMapper;
		this.fairTradeMapper = fairTradeMapper;
		this.faqMapper = faqMapper;
	}

	// 고객센터 메인
	@GetMapping("/customer/list.do")
	public String customerMain() {
		return "information-center/customer/list";
	}
	// 소비자중심경영(정적)
	@GetMapping("/customer/ccm.do")
	public String ccm() {
		return "information-center/customer/ccm";
	}
	// 공지사항
	@GetMapping("/notice/list.do")
	public String noticeList(
			@RequestParam(value = "page", defaultValue = "1") int currentPage,
			@RequestParam(value = "keyword", defaultValue = "") String keyword,
			Model model,
			HttpServletRequest request
			) {
		final int pageSize = 10;
		final int blockSize = 5;

		String q = (keyword == null) ? "" : keyword.trim();

		// 검색어 있을 때: 공지+보도 통합검색 + 공지 JSP 출력
		if (!q.isEmpty()) {
			BoardSearchService.SearchResult result =
					boardSearchService.searchAll(q, currentPage, pageSize, request.getContextPath());

			int totalCount = result.getTotalCount();
			int totalPage = result.getTotalPage();

			int startPage = ((currentPage - 1) / blockSize) * blockSize + 1;
			int endPage = Math.min(startPage + blockSize - 1, totalPage);

			Integer prevBlockPage = (startPage > 1) ? startPage - blockSize : null;
			Integer nextBlockPage = (startPage + blockSize <= totalPage) ? startPage + blockSize : null;

			model.addAttribute("isSearch", true);
			model.addAttribute("searchList", result.getList());

			model.addAttribute("totalCount", totalCount);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("totalPage", totalPage);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("prevBlockPage", prevBlockPage);
			model.addAttribute("nextBlockPage", nextBlockPage);
			model.addAttribute("keyword", q);

			return "information-center/notice/list";
		}

		// 검색어 없을 때: 공지사항만 전체 조회
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;

		List<NoticeDTO> list = noticeMapper.selectList(startRow, endRow);
		int totalCount = noticeMapper.getTotalCount();
		int totalPage = (int) Math.ceil((double) totalCount / pageSize);

		int startPage = ((currentPage - 1) / blockSize) * blockSize + 1;
		int endPage = Math.min(startPage + blockSize - 1, totalPage);

		Integer prevBlockPage = (startPage > 1) ? startPage - blockSize : null;
		Integer nextBlockPage = (startPage + blockSize <= totalPage) ? startPage + blockSize : null;

		model.addAttribute("isSearch", false);
		model.addAttribute("list", list);

		model.addAttribute("totalCount", totalCount);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("prevBlockPage", prevBlockPage);
		model.addAttribute("nextBlockPage", nextBlockPage);
		model.addAttribute("keyword", q);

		return "information-center/notice/list";
	}

	// 공지사항 상세
	@GetMapping("/notice/view.do")
	public String noticeView(
			@RequestParam("id") int id,
			@RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "keyword", defaultValue = "") String keyword,
			Model model
			) {
		NoticeDTO dto = noticeMapper.selectOne(id);

		model.addAttribute("dto", dto);
		model.addAttribute("page", page);
		model.addAttribute("keyword", keyword);

		return "information-center/notice/view";
	}
	@GetMapping("/press/list.do")
	public String pressList(
			@RequestParam(value = "page", defaultValue = "1") int currentPage,
			@RequestParam(value = "keyword", defaultValue = "") String keyword,
			Model model,
			HttpServletRequest request
			) {
		final int pageSize = 10;
		final int blockSize = 5;

		String q = (keyword == null) ? "" : keyword.trim();

		// 검색어 있을 때: 공지+보도 통합검색 + 보도자료 JSP 출력
		if (!q.isEmpty()) {
			BoardSearchService.SearchResult result =
					boardSearchService.searchAll(q, currentPage, pageSize, request.getContextPath());

			int totalCount = result.getTotalCount();
			int totalPage = result.getTotalPage();

			int startPage = ((currentPage - 1) / blockSize) * blockSize + 1;
			int endPage = Math.min(startPage + blockSize - 1, totalPage);

			Integer prevBlockPage = (startPage > 1) ? startPage - blockSize : null;
			Integer nextBlockPage = (startPage + blockSize <= totalPage) ? startPage + blockSize : null;

			model.addAttribute("isSearch", true);
			model.addAttribute("searchList", result.getList());

			model.addAttribute("totalCount", totalCount);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("totalPage", totalPage);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("prevBlockPage", prevBlockPage);
			model.addAttribute("nextBlockPage", nextBlockPage);
			model.addAttribute("keyword", q);

			return "information-center/press/list";
		}

		// 검색어 없을 때: 보도자료만 전체 조회
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;

		List<PressDTO> list = pressMapper.selectList(startRow, endRow);
		int totalCount = pressMapper.getTotalCount();
		int totalPage = (int) Math.ceil((double) totalCount / pageSize);

		int startPage = ((currentPage - 1) / blockSize) * blockSize + 1;
		int endPage = Math.min(startPage + blockSize - 1, totalPage);

		Integer prevBlockPage = (startPage > 1) ? startPage - blockSize : null;
		Integer nextBlockPage = (startPage + blockSize <= totalPage) ? startPage + blockSize : null;

		model.addAttribute("isSearch", false);
		model.addAttribute("list", list);

		model.addAttribute("totalCount", totalCount);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("prevBlockPage", prevBlockPage);
		model.addAttribute("nextBlockPage", nextBlockPage);
		model.addAttribute("keyword", q);

		return "information-center/press/list";
	}

	// 보도자료 상세
	@GetMapping("/press/view.do")
	public String pressView(
			@RequestParam("id") int id,
			@RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "keyword", defaultValue = "") String keyword,
			Model model
			) {
		PressDTO dto = pressMapper.selectOne(id);

		model.addAttribute("dto", dto);
		model.addAttribute("page", page);
		model.addAttribute("keyword", keyword);

		return "information-center/press/view";
	}
	// 공정거래
	@GetMapping("/fairtrade/list.do")
	public String fairTradeList(
			@RequestParam(value = "page", defaultValue = "1") int currentPage,
			@RequestParam(value = "keyword", defaultValue = "") String keyword,
			Model model
			) {
		final int pageSize = 10;

		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;

		List<FairTradeDTO> list = fairTradeMapper.selectList(startRow, endRow);
		int totalCount = fairTradeMapper.getTotalCount();
		int totalPage = (int) Math.ceil((double) totalCount / pageSize);

		model.addAttribute("list", list);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("keyword", keyword);

		return "information-center/fairtrade/list";
	}
	// 공정거래 상세
	@GetMapping("/fairtrade/view.do")
	public String fairTradeView(@RequestParam("id") int id, Model model) {
		FairTradeDTO dto = fairTradeMapper.selectOne(id);

		if (dto != null && "3".equals(dto.getNoticeNo())) {
			return "redirect:https://www.baskinrobbins.co.kr/ebook/bk250826/#page=1";
		}

		model.addAttribute("dto", dto);
		return "information-center/fairtrade/view";
	}
	// FAQ
	@GetMapping("/faq/list.do")
	public String faqList(
			@RequestParam(value = "page", defaultValue = "1") int currentPage,
			@RequestParam(value = "category", defaultValue = "0") int categoryId,
			Model model
			) {
		final int pageSize = 10;
		final int blockSize = 5;

		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;

		List<FaqDTO> list = faqMapper.selectList(categoryId, startRow, endRow);
		int totalCount = faqMapper.getTotalCount(categoryId);
		int totalPage = (int) Math.ceil((double) totalCount / pageSize);

		int startPage = ((currentPage - 1) / blockSize) * blockSize + 1;
		int endPage = Math.min(startPage + blockSize - 1, totalPage);

		Integer prevBlockPage = (startPage > 1) ? startPage - blockSize : null;
		Integer nextBlockPage = (startPage + blockSize <= totalPage) ? startPage + blockSize : null;

		model.addAttribute("list", list);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("categoryId", categoryId);
		model.addAttribute("prevBlockPage", prevBlockPage);
		model.addAttribute("nextBlockPage", nextBlockPage);

		return "information-center/faq/list";
	}


	// 1:1 문의 작성 폼

	@GetMapping("/inquiry/create.do")
	public String inquiryCreateForm() {
		// /WEB-INF/views/information-center/consulting/myvoc_create.jsp
		return "information-center/consulting/myvoc_create";
	}


	// 1:1 문의 등록 처리

	@PostMapping("/inquiry/create.do")
	public String inquiryCreate(
			@RequestParam String counsel_type,
			@RequestParam String detail_type,
			@RequestParam String title,
			@RequestParam String occur_date,
			@RequestParam String occur_hour,
			@RequestParam String occur_min,
			@RequestParam String content,
			@RequestParam String name,
			@RequestParam(required = false) String phone1,
			@RequestParam(required = false) String phone2,
			@RequestParam(required = false) String phone3,
			@RequestParam String email_id,
			@RequestParam String email_domain,
			@RequestParam String post_pw,
			@RequestParam String post_pw_confirm,
			@RequestParam(required = false) Long store_id,
			HttpSession session,
			Model model
			) throws Exception {

		// 1) 유형 필수 선택 검증
		if (counsel_type == null || counsel_type.isBlank()
				|| detail_type == null || detail_type.isBlank()) {
			model.addAttribute("error", "상담유형과 내용유형을 선택해주세요.");
			return "information-center/consulting/myvoc_create";
		}

		// 2) 비밀번호 확인
		if (post_pw == null || !post_pw.equals(post_pw_confirm)) {
			model.addAttribute("error", "비밀번호가 일치하지 않습니다.");
			return "information-center/consulting/myvoc_create";
		}

		// 3) 발생일시 조합 (yyyy-MM-dd HH:mm)
		String occurDateStr = occur_date + " " + occur_hour + ":" + occur_min;
		Date occurDate = new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(occurDateStr);

		// 4) 전화번호 조합(선택)
		String phone = null;
		if (phone1 != null && !phone1.isBlank()
				&& phone2 != null && !phone2.isBlank()
				&& phone3 != null && !phone3.isBlank()) {
			phone = phone1 + "-" + phone2 + "-" + phone3;
		}

		// 5) 이메일 조합
		String email = email_id + "@" + email_domain;

		// 6) userId 결정(로그인/비로그인)
		String userId = "GUEST";
		/*
	  UserDTO loginUser = (UserDTO) session.getAttribute("loginUser");
	String userId = (loginUser == null) ? "GUEST" : loginUser.getUserId();
		 */

		// 7) storeId 기본값(레거시처럼 시연용 1)
		Long storeId = (store_id == null ? 1L : store_id);

		// 8) DTO 세팅
		com.br.app.domain.informationcenter.InquiryDTO dto =
				new com.br.app.domain.informationcenter.InquiryDTO();

		dto.setCounselType(counsel_type);
		dto.setDetailType(detail_type);
		dto.setTitle(title);
		dto.setOccurDate(occurDate);
		dto.setContent(content);
		dto.setName(name);
		dto.setPhone(phone);
		dto.setEmail(email);
		dto.setPostPw(post_pw);
		dto.setUserId(userId);
		dto.setStoreId(storeId);

		// 9) 저장
		inquiryService.createInquiry(dto);

		// 10) 등록 완료 후 이동 (원하는 페이지로)
		return "redirect:/information-center/customer/list.do";
	}

	@GetMapping("/inquiry/list.do")
	public String inquiryList(HttpSession session, Model model) {

		// 머지 전이니까 일단 GUEST로도 목록이 뜨게
		String userId = resolveUserId(session);

		// 만약 "로그인 필수"로 동작시키고 싶으면(머지 후):
		// if ("GUEST".equals(userId)) return "redirect:/login/login.do";

		List<com.br.app.domain.informationcenter.InquiryListDTO> list =
				inquiryService.getMyInquiryList(userId);

		model.addAttribute("list", list);

		return "information-center/consulting/myvoc_list";
	}





	private String resolveUserId(HttpSession session) {
		return "GUEST";
	}
	@GetMapping("/inquiry/view.do")
	public String inquiryView(
			@RequestParam("inquiry_id") Long inquiryId,
			Model model
			) {
		com.br.app.domain.informationcenter.InquiryViewDTO dto =
				inquiryService.getInquiryView(inquiryId);

		if (dto == null) {
			return "redirect:/information-center/inquiry/list.do";
		}

		model.addAttribute("dto", dto);
		return "information-center/consulting/myvoc_view";
	}



	@GetMapping("/consulting/br.do")
	public String consultingBr(Model model) {

		model.addAttribute("bodyId", "baskinrobbins-information-center-consulting-br");
		model.addAttribute("bodyClass", "baskinrobbins-information-center-consulting-br");
		model.addAttribute("activeMenu", "br");
		return "information-center/consulting.br";
	}
	@GetMapping("/consulting/process.do")
	public String consultingProcess(Model model) {

		model.addAttribute("bodyId", "baskinrobbins-information-center-consulting-process");
		model.addAttribute("bodyClass", "baskinrobbins-information-center-consulting-process");
		model.addAttribute("activeMenu", "process");
		return "information-center/consulting.process";
	}

	@GetMapping("/consulting/condition.do")
	public String consultingCondition(Model model) {

		model.addAttribute("bodyId", "baskinrobbins-information-center-consulting-condition");
		model.addAttribute("bodyClass", "baskinrobbins-information-center-consulting-condition");
		model.addAttribute("activeMenu", "condition");
		return "information-center/consulting.condition";
	}

	@GetMapping("/consulting/counsel.do")
	public String consultingCounsel(Model model) {

		model.addAttribute("bodyId", "baskinrobbins-information-center-consulting-counsel");
		model.addAttribute("bodyClass", "baskinrobbins-information-center-consulting-counsel");
		model.addAttribute("activeMenu", "counsel");
		return "information-center/consulting.counsel";
	}

	@GetMapping("/consulting/store-list.do")
	public String consultingStoreList(Model model
			,@RequestParam(value="findword", required=false) String loc
			,@RequestParam(value = "currentPage", defaultValue = "1") int currentPage
			,@RequestParam(value = "numberPerPage", defaultValue = "10") int numberPerPage) {
		// [1]
		int numberOfPageBlock = 10;  // [1] 2 3 4 5 6 7 8 9 10 >
		int totalRecords = 0;   // 총 레코드 수
		int totalPages = 0 ;    // 총 페이지 수
		int totalNum=0;


		java.util.List<NewStoreBoardDTO> list = null;
		PageVO pvo = null;

		try {
			totalPages=newStoreDao.getTotalPages(numberPerPage, loc);
			totalNum=newStoreDao.getTotalNum(loc);
			// int currentPage, int numberPerPage, int numberOfPageBlock, int totalNum, int totalPages
			pvo = new PageVO(currentPage, numberPerPage, numberOfPageBlock,totalNum,totalPages);				

			pvo.setStart((currentPage-1)/numberOfPageBlock  * numberOfPageBlock+1);
			pvo.setEnd(pvo.getStart() + numberOfPageBlock -1);
			if( pvo.getEnd() > totalPages ) pvo.setEnd(totalPages); 

			if( pvo.getStart() != 1 ) pvo.setPrev(true);
			if( pvo.getEnd() != totalPages ) pvo.setNext(true);

			list = newStoreDao.select(currentPage,numberPerPage,loc); // 페이징 처리 O
		} catch (Exception e) {

			e.printStackTrace();
		}



		model.addAttribute("bodyId", "baskinrobbins-information-center-consulting-counsel");
		model.addAttribute("bodyClass", "baskinrobbins-information-center-consulting-counsel");
		model.addAttribute("activeMenu", "store-list");
		model.addAttribute("list", list);
		model.addAttribute("pvo", pvo);
		return "information-center/consulting.store-list";
	}



	@GetMapping("/consulting/store-view.do")
	public String consultingStoreList(Model model
			,@RequestParam(value="findword", required=false) String sido
			,@RequestParam(value = "seq", required=false) int seq) {



		NewStoreBoardDTO dto=null;

		Integer nextNum=null;
		Integer prevNum=null;
		try {
			//list = dao.select();
			dto=newStoreDao.selectOne(seq);
			nextNum=newStoreDao.getNextId(sido, seq);
			prevNum=newStoreDao.getPrevId(sido, seq);

		} catch (Exception e) {
			e.printStackTrace();
		}







		model.addAttribute("bodyId", "baskinrobbins-information-center-consulting-store-view");
		model.addAttribute("bodyClass", "baskinrobbins-information-center-consulting-store-view");
		model.addAttribute("nextNum", nextNum);
		model.addAttribute("prevNum", prevNum);
		model.addAttribute("dto", dto);
		return "information-center/consulting.store-view";
	}

	@GetMapping("/consulting/faq.do")
	public String consultingFaq(Model model) {


		java.util.List<BizFaqDTO> list = null;

		try {
			list = bizFaqDao.select();
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("list", list);
		model.addAttribute("activeMenu", "faq");
		model.addAttribute("bodyId", "baskinrobbins-information-center-consulting-faq");
		model.addAttribute("bodyClass", "baskinrobbins-information-center-consulting-faq");

		return "information-center/consulting.faq";
	}

	@GetMapping("/store-offer/offer.do")
	public String StoreOfferOfffer(Model model) {

		model.addAttribute("bodyId", "baskinrobbins-information-center-store-offer-offer");
		model.addAttribute("bodyClass", "baskinrobbins-information-center-store-offer-offer");
		return "information-center/store-offer.offer";
	}
	@GetMapping("/store-offer/register.do")
	public String StoreOfferRegister(Model model) {

		model.addAttribute("bodyId", "baskinrobbins-information-center-store-offer-register");
		model.addAttribute("bodyClass", "baskinrobbins-information-center-store-offer-register");
		return "information-center/store-offer.register";
	}




}
