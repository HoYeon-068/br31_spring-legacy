package com.br.app.controller.admin;


import java.io.File;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.br.app.domain.admin.AdminFaqDTO;
import com.br.app.domain.menu.CategoryDTO;
import com.br.app.domain.menu.ProductDTO;
import com.br.app.domain.menu.ProductUploadDTO;
import com.br.app.domain.plaza.ConsultingDTO;
import com.br.app.domain.plaza.PlazaSelectDTO;
import com.br.app.domain.plaza.PlazaViewDTO;
import com.br.app.domain.user.UserDTO;
import com.br.app.mapper.admin.AdminFaqMapper;
import com.br.app.mapper.menu.CategoryMapper;
import com.br.app.mapper.menu.ProductMapper;
import com.br.app.mapper.menu.ProductTagMapper;
import com.br.app.mapper.plaza.PlazaMapper;
import com.br.app.mapper.user.UserMapper;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Autowired
	private ProductMapper productDao;
	
	@Autowired
	private CategoryMapper categoryDao;
	
	@Autowired
	private PlazaMapper plazaMapper;
	
	@Autowired
	private ProductTagMapper productTagDao;
	
	@Autowired
	private AdminFaqMapper adminFaqMapper;
	
	@GetMapping("/main.do")
	public String adminMain(Model model
			) throws Exception {
		

				int productsCount=productDao.getProductsCount();
				model.addAttribute("productsCount", productsCount);
				
				return "admin.admin_main";
				
				
	}
	
	private String getFileNameCheck(String uploadRealPath, String originalFilename) {
		int index = 1;		
		while( true ) {			
			File f = new File(uploadRealPath, originalFilename);			
			if( !f.exists() ) return originalFilename;	 
			String fileName = originalFilename.substring(0, originalFilename.length() - 4 ); 
			String ext =  originalFilename.substring(originalFilename.length() - 4 ); 
			originalFilename = fileName+"-"+(index)+ext;
			index++;
		} // while 
	}
	
	/*
	@PostMapping("/noticeReg.htm")
	public String noticeReg(
			NoticeVO noticeVO   // 커맨드 객체 
			, RedirectAttributes rttr
			, HttpServletRequest request
			, Principal principal
			// , @AuthenticationPrincipal UserDetails user
			) throws ClassNotFoundException, SQLException, IllegalStateException, IOException {
		// 1. 
		String uploadRealPath = null;
		CommonsMultipartFile attach = noticeVO.getFile();
		if (!attach.isEmpty()) {
			uploadRealPath = request.getServletContext().getRealPath("/customer/upload");
			System.out.println("😘 uploadRealPath : " + uploadRealPath);
			String originalFilename = attach.getOriginalFilename();
			String fileSystemName = getFileNameCheck(uploadRealPath, originalFilename);

			File dest = new File(uploadRealPath, fileSystemName);
			attach.transferTo(dest);  // 파일 서버 저장

			noticeVO.setFilesrc(fileSystemName);
		} // if

		noticeVO.setWriter( principal.getName() ); 
		//noticeVO.setWriter("kenik");
				
		// this.noticeDao.insertAndPointUpOfMember(noticeVO, "kenik");
		this.memberShipService.insertAndPointUpOfMember(noticeVO, principal.getName());
		
		return "redirect:notice.htm"; // 스프링 리다이렉트 (redirect: 접두사)

	} */
	
	@GetMapping("/product/list.do")
	public String adminProductList(Model model) throws Exception {
		
		java.util.List<ProductDTO> list = null;
		
	    list = productDao.select();
	    model.addAttribute("list", list);
		
		return "admin.product.list";
	}
	
	@GetMapping("/product/write.do")
	public String adminProductWrite(Model model) throws Exception {
		
		java.util.List<CategoryDTO> category = null;
		 ProductDTO vo=null;
		
		 try {
			    category=categoryDao.select();
			    
			} catch (Exception e) {
				e.printStackTrace();
			}
		    
		 model.addAttribute("category", category);
		
		return "admin.product.write";
	}
	
	@PostMapping("/product/write.do")
	public String adminProductWritePost(
			Model model
			, RedirectAttributes rttr
			, HttpServletRequest request
			, ProductUploadDTO uploadDTO
			) throws Exception {
		
		String uploadPath =
		        request.getServletContext()
		               .getRealPath("/resources/images/upload/product/main");

		    String productImgPath = null;
		    String posterImgPath = null;

		    try {
		        // 디렉토리 없으면 생성
		        File dir = new File(uploadPath);
		        if (!dir.exists()) dir.mkdirs();

		        // product 이미지
		        if (uploadDTO.getProductImg() != null &&
		            !uploadDTO.getProductImg().isEmpty()) {

		            String filename = UUID.randomUUID() + "_" +
		                    uploadDTO.getProductImg().getOriginalFilename();

		            File file = new File(uploadPath, filename);
		            uploadDTO.getProductImg().transferTo(file);

		            productImgPath =
		              "/resources/images/upload/product/main/" + filename;
		        }

		        // poster 이미지
		        if (uploadDTO.getPosterImg() != null &&
		            !uploadDTO.getPosterImg().isEmpty()) {

		            String filename = UUID.randomUUID() + "_" +
		                    uploadDTO.getPosterImg().getOriginalFilename();

		            File file = new File(uploadPath, filename);
		            uploadDTO.getPosterImg().transferTo(file);

		            posterImgPath =
		              "/resources/images/upload/product/main/" + filename;
		        }

		        // DB용 DTO 생성
		        ProductDTO product = ProductDTO.builder()
		            .categoryId(uploadDTO.getCategoryId())
		            .productName(uploadDTO.getProductName())
		            .englishName(uploadDTO.getEnglishName())
		            .subTitle(uploadDTO.getSubTitle())
		            .description(uploadDTO.getDescription())
		            .bgColor(uploadDTO.getBgColor())
		            .spanColor(uploadDTO.getSpanColor())
		            .price(uploadDTO.getPrice() == null ? 0 : uploadDTO.getPrice())
		            .imgPath(productImgPath)
		            .posterPath(posterImgPath)
		            .productStatus("판매중")
		            .build();

		        // DAO 직접 호출
		        productDao.insert(product);

		        int productId=productDao.getProductSeqNum();
		        // 태그 저장
		        if (uploadDTO.getTags() != null) {
		            for (String tag : uploadDTO.getTags()) {
		                productTagDao.insert(productId, tag);
		            }
		        }

		    } catch (Exception e) {
		        e.printStackTrace();
		        // 에러 페이지로 보내고 싶으면 여기서 return
		        return "redirect:/admin/main.do?view=error";
		    }

		    return "redirect:/admin/product/list.do";
		

	}
	
	
	// ================== 회원관리=======================
	@Autowired
	private UserMapper userMapper;
	
	
	@GetMapping("/user/adminUser.do")
	public String adminUser(Model model) throws SQLException {
		
		List<UserDTO> userList = userMapper.getUserList();
		model.addAttribute("userList", userList);
		
		return "admin.user.adminUser";
	}
	
	@PostMapping("/user/adminUserDelete.do")
	public String adminUserDelete(
								@RequestParam String userId
								, RedirectAttributes rttr
										) throws SQLException{
		if ("admin".equals(userId)) {
		    rttr.addFlashAttribute("errorMsg", "해당 계정은 삭제할 수 없습니다.");
		    return "redirect:/admin/user/adminUser.do";
		}
		int result = userMapper.deleteUser(userId);
		if (result > 0) {
	        rttr.addFlashAttribute("msg", "회원이 정상적으로 삭제되었습니다.");
	    } else {
	        rttr.addFlashAttribute("errorMsg", "회원 삭제에 실패했습니다.");
	    }
		
		
		
		
		return "redirect:/admin/user/adminUser.do";
	}
	
	@GetMapping("/plaza/list")
	public String adminPlazaList(
	        @RequestParam(value="category", required=false) String category,
	        Model model
	) {
	    List<PlazaSelectDTO> list = plazaMapper.adminSelect(category);
	    model.addAttribute("list", list);
	    model.addAttribute("category", category == null ? "ALL" : category);
	    return "admin.plaza.list"; // /WEB-INF/views/admin/plaza/list.jsp
	}
	
	@GetMapping("/plaza/view")
	public String adminPlazaView(
	        @RequestParam("seq") int seq,
	        Model model
	) {
	    PlazaViewDTO dto = plazaMapper.adminView(seq);
	    model.addAttribute("dto", dto);
	    return "admin.plaza.view";
	}
	
	@PostMapping("/plaza/status")
	public String adminPlazaStatus(
	        @RequestParam("seq") int seq,
	        @RequestParam("status") int status,
	        RedirectAttributes rttr
	) {
	    plazaMapper.updatePlazaStatus(seq, status);
	    // rttr.addFlashAttribute("msg", "updated");
	    return "redirect:/admin/plaza/view.do?seq=" + seq;
	}
	
	@GetMapping("/consulting/list")
	public String adminConsultingList(Model model) {
	    List<ConsultingDTO> list = plazaMapper.selectAdminList();
	    model.addAttribute("list", list);
	    return "admin.consulting.list";
	}
	
	@GetMapping("/consulting/view")
	public String adminConsultingView(
	        @RequestParam("id") int id,
	        Model model
	) {
	    ConsultingDTO dto = plazaMapper.selectAdminView(id);
	    model.addAttribute("dto", dto);
	    return "admin.consulting.view";
	}
	
	@PostMapping("/consulting/complete")
	public String consultingComplete(
	        @RequestParam("id") int id
	) {
	    plazaMapper.updateAdminStatus(id, 1);
	    return "redirect:/admin/consulting/view.do?id=" + id;
	}

	// FAQ
	
	@GetMapping("/faq/list.do")
	public String adminFaqList(Model model) {
	    List<AdminFaqDTO> list = adminFaqMapper.selectList();
	    model.addAttribute("list", list);
	    return "admin.faq.list";
	}

	@GetMapping("/faq/write.do")
	public String adminFaqWrite() {
	    return "admin.faq.write";
	}

	@PostMapping("/faq/write.do")
	public String adminFaqWritePost(
	        @RequestParam String question,
	        @RequestParam String answer
	) {
	    AdminFaqDTO dto = AdminFaqDTO.builder()
	            .question(question)
	            .answer(answer)
	            .faqCategoryId(1L)
	            .build();

	    adminFaqMapper.insert(dto);
	    return "redirect:/admin/faq/list.do";
	}

	@GetMapping("/faq/edit.do")
	public String adminFaqEdit(
	        @RequestParam(required = false) Long faqId,
	        Model model
	) {
	    AdminFaqDTO dto = null;
	    if (faqId != null) {
	        dto = adminFaqMapper.selectOne(faqId);
	    }
	    model.addAttribute("dto", dto);
	    return "admin.faq.edit";
	}

	@PostMapping("/faq/edit.do")
	public String adminFaqEditPost(AdminFaqDTO dto) {
	    if (dto.getFaqId() == null) {
	        dto.setFaqCategoryId(1L);
	        adminFaqMapper.insert(dto);
	    } else {
	        adminFaqMapper.update(dto);
	    }
	    return "redirect:/admin/faq/list.do";
	}

	@PostMapping("/faq/delete.do")
	public String adminFaqDelete(@RequestParam Long faqId) {
	    adminFaqMapper.delete(faqId);
	    return "redirect:/admin/faq/list.do";
	}

	
	
}
