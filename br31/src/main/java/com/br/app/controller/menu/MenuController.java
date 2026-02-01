package com.br.app.controller.menu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.menu.FomViewDTO;
import com.br.app.domain.menu.IceNutritionDTO;
import com.br.app.domain.menu.IngredientDTO;
import com.br.app.domain.menu.MenuListDTO;
import com.br.app.domain.menu.MenuViewDTO;
import com.br.app.domain.menu.MonthlyFlavorDTO;
import com.br.app.domain.menu.ProductDTO;
import com.br.app.mapper.menu.IceNutritionMapper;
import com.br.app.mapper.menu.MonthlyFlavorMapper;
import com.br.app.mapper.menu.ProductMapper;

@Controller
@RequestMapping("/menu/*")
public class MenuController {
	
	@Autowired
	private ProductMapper productDao;
	
	@Autowired
	private IceNutritionMapper iceNutritionDAO;
	
	@Autowired
	private MonthlyFlavorMapper monthlyFlavorDAO;
	
	@GetMapping("/view.do")
	public String menuView(
			@RequestParam("seq") int seq
			 ,Model model
							) throws Exception {
		
		
		MenuViewDTO menuViewDTO=null;
		IceNutritionDTO iceNutritionDTO=null;
		ProductDTO productDTO=null;
		ProductDTO prevProductDTO=null;
		ProductDTO nextProductDTO=null;
		
		
		
			iceNutritionDTO = iceNutritionDAO.select(seq);
			productDTO=productDao.selectOne(seq);
			List<IngredientDTO> list=productDao.selectIngredient(seq);
			
			menuViewDTO= MenuViewDTO.builder()
						 .productsId(productDTO.getProductsId())
						 .categoryId(productDTO.getCategoryId())
						 .categoryName(productDTO.getCategoryName())
						 .productName(productDTO.getProductName())
						 .englishName(productDTO.getEnglishName())
						 .price(productDTO.getPrice())
						 .description(productDTO.getDescription())
						 .posterPath(productDTO.getPosterPath())
						 .imgPath(productDTO.getImgPath())
						 .bgColor(productDTO.getBgColor())
						 .iceNutritionDTO(iceNutritionDTO)
						 .ingredientDTO(list)
						 .build();
			
			prevProductDTO=productDao.getPrev(menuViewDTO.getCategoryId(), menuViewDTO.getProductsId());
			nextProductDTO=productDao.getNext(menuViewDTO.getCategoryId(), menuViewDTO.getProductsId());
			
			
		
		
			model.addAttribute("dto", menuViewDTO);
			model.addAttribute("prevDTO", prevProductDTO);
			model.addAttribute("nextDTO", nextProductDTO);
			model.addAttribute("bodyId", "baskinrobbins-menu-view");
			model.addAttribute("bodyClass", "baskinrobbins-menu-view");
		
		return "menu.view";
	}
	
	
	@GetMapping("/fom.do")
	public String menuFom(Model model) throws Exception {
		
				FomViewDTO fomViewDTO=null;
				
					
					MonthlyFlavorDTO monthlyFlavorDTO=monthlyFlavorDAO.select();
					
					int products_id=monthlyFlavorDTO.getProductsId();
					ProductDTO productDTO=productDao.selectOne(products_id);
					List<IngredientDTO> ingredientDTO=productDao.selectIngredient(products_id);
					
					fomViewDTO=FomViewDTO.builder()
							.monthlyFlavorDTO(monthlyFlavorDTO)
							.productDTO(productDTO)
							.ingredientDTO(ingredientDTO)
							.build();
				
				
				
				
				model.addAttribute("dto", fomViewDTO);
				model.addAttribute("bodyId", "baskinrobbins-menu-fom");
				model.addAttribute("bodyClass", "baskinrobbins-menu-fom");
				
				return "menu.fom";
	}
	
	
	@GetMapping("/list.do")
	public String menuList(
							 @RequestParam("category") String category
							 ,Model model
							 ) throws Exception {
		System.out.println(category);
		
		
		
		List<MenuListDTO> list=null;
		String title=null,description=null;
		int category_id=0;
		
		switch (category) {
		case "A":
			category_id=1;
			title="Ice Cream";
			description="한 입에 물면 달콤하게 사르르 녹는 아이스크림.<br>"
					+ "당신이 어떤 기분이든 그 아이스크림을 따라 당신의 기분은 아마 달콤해졌을 거예요.";
			break;
		case "B":
			category_id=2;
			title="Prepack";
			description="한 입에 물면 달콤하게 사르르 녹는 아이스크림.<br>"
					+ "당신이 어떤 기분이든 그 아이스크림을 따라 당신의 기분은 아마 달콤해졌을 거예요.";
			break;
		case "C":
			category_id=4;
			title="Ice Cream Cake";
			description="축하하고 싶은 날에도, 위로가 필요한 날에도, 그 모든 순간 함께 할 아이스크림 케이크.<br>"
					+ "달콤한 아이스크림 케이크로 당신의 특별한 날을 더욱더 특별하게 만들어드릴게요.";
			break;
		case "D":
			category_id=5;
			title="Dessert";
			description="아이스크림을 더욱 맛있고 특별하게 즐길 수 있는 배스킨라빈스의 아이스 디저트!<br>"
					+ "쫀득한 모찌부터 달콤한 마카롱까지 다양한 디저트를 만나보세요.";
			break;

		case "E":
			category_id=6;
			title="Beverage";
			description="짜릿하게 시원한 블라스트부터 아이스크림을 듬뿍넣고 갈아만든 쉐이크까지!<br>"
					+ "배스킨라빈스만의 특별함을 음료로 만나보세요.";
			break;
		case "F":
			category_id=7;
			title="Coffee";
			description="진한 카카오의 향과 풍부한 바디감의 배스킨라빈스 대표 커피 'Café Bris'<br>"
					+ "일상에 모든 순간을 카페브리즈와 함께하세요.";
			break;
			
			
		default:
			break;
		}
		
		
		list=productDao.selectList(category_id);
		
		
		
		model.addAttribute("list",list);
		model.addAttribute("title", title);
		model.addAttribute("category", category);
		model.addAttribute("description", description);
		model.addAttribute("bodyId", "baskinrobbins-menu");
		model.addAttribute("bodyClass", "baskinrobbins-menu");
		
		String location=category.equals("E")||category.equals("F")?"menu.list_subcategory":"menu.list";
		return location; // 리다이렉트
	}
	
	/*
	// [5-3]  공지사항 수정   + POST   
	//          ㄴ 첨부파일 처리
	@PostMapping("/noticeEdit.htm")
	public String noticeEdit(
			NoticeVO noticeVO   // 커맨드 객체     (수정된 공지사항)
			, RedirectAttributes rttr
			, @RequestParam("o_filesrc") String ofilesrc
			, HttpServletRequest request
			) throws ClassNotFoundException, SQLException, IllegalStateException, IOException {
		// 1.
		String uploadRealPath = null;
		CommonsMultipartFile attach = noticeVO.getFile();
		if (!attach.isEmpty()) {  // 수정할 때 새로 첨부파일 추가
			uploadRealPath = request.getServletContext().getRealPath("/customer/upload");
			System.out.println("😘 uploadRealPath : " + uploadRealPath);
			// A. 이전에 첨부된 파일 있을 경우에 삭제
			File delFile = new File(uploadRealPath, ofilesrc);
			if (  delFile.exists()  && delFile.isFile()  ) {
				delFile.delete();
			} // if
			
			// B. 수정할 때 새로 추가된 첨부파일을 저장하는 코딩.
			String originalFilename = attach.getOriginalFilename();
			String fileSystemName = getFileNameCheck(uploadRealPath, originalFilename);
			File dest = new File(uploadRealPath, fileSystemName);
			attach.transferTo(dest);  // 파일 서버 저장
			noticeVO.setFilesrc(fileSystemName);
		} else { // 새로 수정할 첨부파일이 없는 경우
			noticeVO.setFilesrc(ofilesrc);			
		}

		noticeVO.setWriter("kenik");

		// 2. 
		int rowCount = this.noticeDao.update(noticeVO);	 
		rttr.addAttribute("result", rowCount);  
		rttr.addAttribute("seq", noticeVO.getSeq());  
		return "redirect:noticeDetail.htm";  
	}
	 */


}
