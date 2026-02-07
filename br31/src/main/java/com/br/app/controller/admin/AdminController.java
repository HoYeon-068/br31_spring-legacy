package com.br.app.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.br.app.domain.menu.CategoryDTO;
import com.br.app.domain.menu.ProductDTO;
import com.br.app.domain.plaza.ConsultingDTO;
import com.br.app.domain.plaza.PlazaSelectDTO;
import com.br.app.domain.plaza.PlazaViewDTO;
import com.br.app.mapper.menu.CategoryMapper;
import com.br.app.mapper.menu.ProductMapper;
import com.br.app.mapper.plaza.PlazaMapper;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Autowired
	private ProductMapper productDao;
	
	@Autowired
	private CategoryMapper categoryDao;
	
	@Autowired
	private PlazaMapper plazaMapper;
	
	@GetMapping("/main.do")
	public String adminMain(
			@RequestParam(value = "view", required = false, defaultValue = "") String view
			,Model model
			) throws Exception {
		
				

				String contentPage = "/WEB-INF/views/admin/admin_main.jsp";
				switch (view == null ? "" : view) {
				  case "productList":
				    contentPage = "/WEB-INF/views/admin/product/list.jsp";
				     
				    
				    java.util.List<ProductDTO> list = null;
				   
				    
				    
				    list = productDao.select();
				    model.addAttribute("list", list);
				    
				    break;
				    
				  case "productWrite":
					    contentPage = "/WEB-INF/views/admin/product/write.jsp";
					    java.util.List<CategoryDTO> category = null;
					    category=categoryDao.select();
					    model.addAttribute("category", category);
					    break;
				  default:
					int productsCount=productDao.getProductsCount();
					model.addAttribute("productsCount", productsCount);
				    break;
				    
				}
				
				/*
				// 회원관리
				String action = request.getParameter("action");
				switch (view == null ? "" : view) {
				case "adminUser":
					if ("delete".equals(action)) {
						String userId = request.getParameter("userId");
						if("admin_master".equalsIgnoreCase(userId)) {
							response.sendRedirect(request.getContextPath() + "/admin/main.do?view=adminUser&msg=admin_cant_delete");
							return null;
						}
						new UserService().deleteUser(userId);
						response.sendRedirect(request.getContextPath() + "/admin/main.do?view=adminUser");
				        return null; 
					}
					contentPage = "/WEB-INF/views/admin/user/adminUser.jsp";
					List<UserDTO> userList = new UserService().getUserList();
					request.setAttribute("userList", userList);
					break;

				default:
					break;
				}
				
				*/
			
				model.addAttribute("contentPage", contentPage);
				return "/admin/admin_layout";
				
				
	}
	/*
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
		
		return "/admin/product/write";
	}
	
	@PostMapping("/product/write.do")
	public String adminProductWritePost(Model model) throws Exception {
		
		
		/*
		else if (requestMethod.equals("POST") ){
			
			
			String uploadPath = request.getServletContext()
			        .getRealPath("/resources/images/upload/product/main");
			
			// /resources/images/upload/ckeditor/

			int maxSize = 10 * 1024 * 1024; // 10MB

			MultipartRequest multi = new MultipartRequest(
			    request,
			    uploadPath,
			    maxSize,
			    "UTF-8",
			    new DefaultFileRenamePolicy()
			);


			String product_name = multi.getParameter("productName");
			String english_name = multi.getParameter("englishName");
			String description = multi.getParameter("description");
			String bg_color     = multi.getParameter("bgColor");
			String span_color   = multi.getParameter("fontColor");
			
			
			
			
			// 숫자
			int category_id = Integer.parseInt(multi.getParameter("categoryId"));

			// price는 nullable
			String priceParam = multi.getParameter("price");
			Integer price = (priceParam == null || priceParam.isBlank())
			        ? 0
			        : Integer.parseInt(priceParam);
			
			
			String[] tags = multi.getParameterValues("tags");
			// null / 빈값 제거 추천
			List<String> tagList = new ArrayList<>();
			if (tags != null) {
			    for (String tag : tags) {
			        if (tag != null && !tag.trim().isEmpty()) {
			            tagList.add(tag.trim());
			        }
			    }
			}
			
			
			
			String productImg = multi.getFilesystemName("productImg"); // 필수
			String posterImg  = multi.getFilesystemName("posterImg");  // 선택
			
			String productImgPath=null;
			String posterImgPath=null;
			
			if (productImg != null) {
			    productImgPath = "/resources/images/upload/product/main/" + productImg;
			}

			if (posterImg != null) {
			    posterImgPath = "/resources/images/upload/product/main/" + posterImg;
			}
			
			int products_id;
			
			
			
			try {
		    	ProductDAO pDao=new ProductDAOImpl(conn);
			    ProductTagDAO tDao=new ProductTagDAOImpl(conn);
		    	
		    	vo=new ProductDTO().builder()
		    			.category_id(category_id)
		    			.product_name(product_name)
		    			.english_name(english_name)
		    			.description(description)
		    			.bg_color(bg_color)
		    			.span_color(span_color)
		    			.poster_path(posterImgPath)
		    			.img_path(productImgPath)
		    			.price(price)
		    			.product_status("판매중")
		    			.build();
		    	
		    	
		    	pDao.insert(vo);
		    	products_id=pDao.getProductSeqNum();
		    	
		    	
		    	
		    	for (int i = 0; i < tags.length; i++) {
		    		tDao.insert(products_id, tags[i]);
				}
		    	
		    	
			} catch (Exception e) {
				System.out.println("> ProductWriteHandler.process() Exception...");
				e.printStackTrace();
			}finally {
				conn.close();
			}
			
			String location = request.getContextPath() + "/admin/main.do?view=productList";
			response.sendRedirect(location);
		}
		
		return null;
		*/
		
		
		
		
		
		java.util.List<CategoryDTO> category = null;
		 ProductDTO vo=null;
		
		 
		 
		 
		 
		 
		
		return "/admin/product/write";
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

}
