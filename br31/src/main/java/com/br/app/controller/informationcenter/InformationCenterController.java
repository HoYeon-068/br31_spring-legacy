package com.br.app.controller.informationcenter;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.informationcenter.BizFaqDTO;
import com.br.app.domain.informationcenter.FairTradeDTO;
import com.br.app.domain.informationcenter.FaqDTO;
import com.br.app.domain.informationcenter.InquiryDTO;
import com.br.app.domain.informationcenter.InquiryListDTO;
import com.br.app.domain.informationcenter.InquiryViewDTO;
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
	public String customerMain(Model model) {

	    model.addAttribute("bodyId", "baskinrobbins-customer");
	    model.addAttribute("bodyClass", "baskinrobbins-customer");

	    return "information-center.customer.list";
	}

	// 소비자중심경영(CCM) - 정적 페이지
	@GetMapping("/customer/ccm.do")
	public String ccm(Model model) {

	    model.addAttribute("bodyId", "baskinrobbins-ccm");
	    model.addAttribute("bodyClass", "baskinrobbins-ccm");

	    return "information-center.customer.ccm";
	}

	// 공지사항 목록
	@GetMapping("/notice/list.do")
	public String noticeList(
	        @RequestParam(value = "page", defaultValue = "1") int currentPage,
	        @RequestParam(value = "keyword", defaultValue = "") String keyword,
	        Model model,
	        HttpServletRequest request
	) {
	    
	    model.addAttribute("bodyId", "baskinrobbins-notice-list");
	    model.addAttribute("bodyClass", "baskinrobbins-notice-list");

	    final int pageSize = 10;
	    final int blockSize = 5;

	    String q = (keyword == null) ? "" : keyword.trim();

	    // 
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
	        
	        // 
	        return "information-center.notice.list";
	    }

	    
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

	    // 
	    return "information-center.notice.list";
	}


	// 공지사항 상세
	@GetMapping("/notice/view.do")
	public String noticeView(
	    @RequestParam("id") int id,
	    @RequestParam(value = "page", defaultValue = "1") int page,
	    @RequestParam(value = "keyword", defaultValue = "") String keyword,
	    Model model
	) {
	    model.addAttribute("bodyId", "baskinrobbins-notice-view");
	    model.addAttribute("bodyClass", "baskinrobbins-notice-view");

	    NoticeDTO dto = noticeMapper.selectOne(id);
	    model.addAttribute("dto", dto);

	    model.addAttribute("page", page);
	    model.addAttribute("keyword", keyword);

	    return "information-center.notice.view";
	}

	// 보도자료 목록
	@GetMapping("/press/list.do")
	public String pressList(
	        @RequestParam(value = "page", defaultValue = "1") int currentPage,
	        @RequestParam(value = "keyword", defaultValue = "") String keyword,
	        Model model,
	        HttpServletRequest request
	) {
	   
	    model.addAttribute("bodyId", "baskinrobbins-press-list");
	    model.addAttribute("bodyClass", "baskinrobbins-press-list");

	    final int pageSize = 10;
	    final int blockSize = 5;

	    String q = (keyword == null) ? "" : keyword.trim();

	    
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

	     
	        return "information-center.press.list";
	    }

	  
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

	   
	    return "information-center.press.list";
	}


	// 보도자료 상세
	@GetMapping("/press/view.do")
	public String pressView(
	        @RequestParam("id") int id,
	        @RequestParam(value = "page", defaultValue = "1") int page,
	        @RequestParam(value = "keyword", defaultValue = "") String keyword,
	        Model model
	) {
	    model.addAttribute("bodyId", "baskinrobbins-press-view");
	    model.addAttribute("bodyClass", "baskinrobbins-press-view");

	    PressDTO dto = pressMapper.selectOne(id);
	    model.addAttribute("dto", dto);

	    model.addAttribute("page", page);
	    model.addAttribute("keyword", keyword);

	    return "information-center.press.view";
	}

	// 공정거래
	@GetMapping("/fairtrade/list.do")
	public String fairTradeList(
	        @RequestParam(value = "page", defaultValue = "1") int currentPage,
	        @RequestParam(value = "keyword", defaultValue = "") String keyword,
	        Model model
	) {
	    model.addAttribute("bodyId", "baskinrobbins-fairtrade-list");
	    model.addAttribute("bodyClass", "baskinrobbins-fairtrade-list");

	    final int pageSize = 10;
	    final int blockSize = 5;

	    String q = (keyword == null) ? "" : keyword.trim();

	    int startRow = (currentPage - 1) * pageSize + 1;
	    int endRow = currentPage * pageSize;

	    List<FairTradeDTO> list = fairTradeMapper.selectList(startRow, endRow);
	    int totalCount = fairTradeMapper.getTotalCount();
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
	    model.addAttribute("prevBlockPage", prevBlockPage);
	    model.addAttribute("nextBlockPage", nextBlockPage);
	    model.addAttribute("keyword", q);

	    return "information-center.fairtrade.list";
	}

	@GetMapping("/fairtrade/view.do")
	public String fairTradeView(
	        @RequestParam("id") int id,
	        @RequestParam(value = "page", defaultValue = "1") int page,
	        @RequestParam(value = "keyword", defaultValue = "") String keyword,
	        Model model
	) {
	    model.addAttribute("bodyId", "baskinrobbins-fairtrade-view");
	    model.addAttribute("bodyClass", "baskinrobbins-fairtrade-view");

	    FairTradeDTO dto = fairTradeMapper.selectOne(id);

	    if (dto != null && "3".equals(dto.getNoticeNO())) {
	        return "redirect:https://www.baskinrobbins.co.kr/ebook/bk250826/#page=1";
	    }


	    model.addAttribute("dto", dto);
	    model.addAttribute("page", page);
	    model.addAttribute("keyword", (keyword == null) ? "" : keyword.trim());

	    return "information-center.fairtrade.view";
	}

	// FAQ
	@GetMapping("/faq/list.do")
	public String faqList(
	        @RequestParam(value = "page", defaultValue = "1") int currentPage,
	        @RequestParam(value = "category", defaultValue = "0") int categoryId,
	        Model model
	) {
	    
	    model.addAttribute("bodyId", "baskinrobbins-faq");
	    model.addAttribute("bodyClass", "baskinrobbins-faq");

	    
	    model.addAttribute("pageJs", "information-center/faq.js");

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

	    
	    return "information-center.faq.list";
	}


	


	@GetMapping("/inquiry/create.do")
	public String inquiryCreateForm(Principal principal, Model model) {
	    if (principal == null) return "redirect:/login/login.do";
	    return "information-center/consulting/myvoc_create";
	}



	@PostMapping("/inquiry/create.do")
	public String inquiryCreate(
	        @ModelAttribute InquiryDTO dto,
	        @RequestParam(name = "post_pw_confirm", required = false) String postPwConfirm,
	        @RequestParam(required = false) String phone1,
	        @RequestParam(required = false) String phone2,
	        @RequestParam(required = false) String phone3,
	        @RequestParam(name = "email_id", required = false) String emailId,
	        @RequestParam(name = "email_domain", required = false) String emailDomain,
	        Principal principal,
	        Model model
	) throws Exception {

	    if (principal == null) return "redirect:/login/login.do";

	    String userId = principal.getName();

	    if (dto.getPostPw() == null || postPwConfirm == null || !dto.getPostPw().equals(postPwConfirm)) {
	        model.addAttribute("error", "비밀번호가 일치하지 않습니다.");
	        return "information-center/consulting/myvoc_create";
	    }

	    String phone = null;
	    if (phone1 != null && phone2 != null && phone3 != null
	            && !phone1.isBlank() && !phone2.isBlank() && !phone3.isBlank()) {
	        phone = phone1 + "-" + phone2 + "-" + phone3;
	    }
	    dto.setPhone(phone);

	    String email = null;
	    if (emailId != null && emailDomain != null
	            && !emailId.isBlank() && !emailDomain.isBlank()) {
	        email = emailId + "@" + emailDomain;
	    }
	    dto.setEmail(email);

	    if (dto.getOccurDateOnly() != null && !dto.getOccurDateOnly().isBlank()
	            && dto.getOccurHour() != null && dto.getOccurMin() != null) {

	        String dt = dto.getOccurDateOnly()
	                + " " + String.format("%02d", dto.getOccurHour())
	                + ":" + String.format("%02d", dto.getOccurMin());

	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	        dto.setOccurDate(sdf.parse(dt));
	    }

	    inquiryService.createInquiry(dto, userId);

	    return "redirect:/information-center/customer/list.do";
	}






	@GetMapping("/inquiry/list.do")
	public String inquiryList(Principal principal, Model model) {

	    if (principal == null) {
	        return "redirect:/login/login.do";
	    }

	    String userId = principal.getName();

	    List<InquiryListDTO> list = inquiryService.getMyInquiryList(userId);
	    model.addAttribute("list", list);

	    return "information-center/consulting/myvoc_list";
	}




	@GetMapping("/inquiry/view.do")
	public String inquiryView(
	        @RequestParam("inquiryID") Long inquiryId,
	        Principal principal,
	        Model model
	) {

	    if (principal == null) {
	        return "redirect:/login/login.do";
	    }

	    String userId = principal.getName();

	    InquiryViewDTO dto = inquiryService.getInquiryView(inquiryId, userId);

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
		return "information-center.consulting.br";
	}
	@GetMapping("/consulting/process.do")
	public String consultingProcess(Model model) {

		model.addAttribute("bodyId", "baskinrobbins-information-center-consulting-process");
		model.addAttribute("bodyClass", "baskinrobbins-information-center-consulting-process");
		model.addAttribute("activeMenu", "process");
		return "information-center.consulting.process";
	}

	@GetMapping("/consulting/condition.do")
	public String consultingCondition(Model model) {

		model.addAttribute("bodyId", "baskinrobbins-information-center-consulting-condition");
		model.addAttribute("bodyClass", "baskinrobbins-information-center-consulting-condition");
		model.addAttribute("activeMenu", "condition");
		return "information-center.consulting.condition";
	}

	@GetMapping("/consulting/counsel.do")
	public String consultingCounsel(Model model) {

		model.addAttribute("bodyId", "baskinrobbins-information-center-consulting-counsel");
		model.addAttribute("bodyClass", "baskinrobbins-information-center-consulting-counsel");
		model.addAttribute("activeMenu", "counsel");
		return "information-center.consulting.counsel";
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
		return "information-center.consulting.store-list";
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
		return "information-center.consulting.store-view";
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

		return "information-center.consulting.faq";
	}

	@GetMapping("/store-offer/offer.do")
	public String StoreOfferOfffer(Model model) {

		model.addAttribute("bodyId", "baskinrobbins-information-center-store-offer-offer");
		model.addAttribute("bodyClass", "baskinrobbins-information-center-store-offer-offer");
		return "information-center.store-offer.offer";
	}
	@GetMapping("/store-offer/register.do")
	public String StoreOfferRegister(Model model) {

		model.addAttribute("bodyId", "baskinrobbins-information-center-store-offer-register");
		model.addAttribute("bodyClass", "baskinrobbins-information-center-store-offer-register");
		return "information-center.store-offer.register";
	}




}
