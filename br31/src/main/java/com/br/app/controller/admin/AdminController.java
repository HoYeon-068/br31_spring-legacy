package com.br.app.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.menu.CategoryDTO;
import com.br.app.domain.menu.FomViewDTO;
import com.br.app.domain.menu.IceNutritionDTO;
import com.br.app.domain.menu.IngredientDTO;
import com.br.app.domain.menu.MenuListDTO;
import com.br.app.domain.menu.MenuViewDTO;
import com.br.app.domain.menu.MonthlyFlavorDTO;
import com.br.app.domain.menu.ProductDTO;
import com.br.app.mapper.menu.CategoryMapper;
import com.br.app.mapper.menu.IceNutritionMapper;
import com.br.app.mapper.menu.MonthlyFlavorMapper;
import com.br.app.mapper.menu.ProductMapper;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Autowired
	private ProductMapper productDao;
	
	@Autowired
	private CategoryMapper categoryDao;
	
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
	
	@GetMapping("/product/write.do")
	public String brappBrapp() throws Exception {
		
		return "/brapp/brapp";
	}
}
