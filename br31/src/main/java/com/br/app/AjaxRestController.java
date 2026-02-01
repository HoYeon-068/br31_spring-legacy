package com.br.app;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.br.app.domain.store.StoreDTO;
import com.br.app.mapper.store.StoreMapper;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
public class AjaxRestController {
	
	@Autowired
	private StoreMapper storeDao;
	
	/*
	@GetMapping("/user")
	public User getUser() {
		return new User("John","Doe",30);
	}
	*/
	
	@GetMapping("/store/mapSearch.ajax")
	public List<StoreDTO> mapSearchAjax(
			 	@RequestParam(value="services", required=false) String[] services,
			    @RequestParam(value="store_name", required=false) String store_name,
			    @RequestParam(value="sido", required=false) String sido,
			    @RequestParam(value="sigungu", required=false) String sigungu,
			    @RequestParam(value="store_type", required=false) String[] store_type
			) {
		
		/*
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json; charset=UTF-8");
        */
        
		try {
			return storeDao.select(services,store_name,sido,sigungu,store_type);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
			
			
		
	      
	      
	}
	
}
