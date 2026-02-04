package com.br.app;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
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
	
	
	@GetMapping(value = "/api/store-address.do", produces = "application/json; charset=UTF-8")
    public String storeAddressProxy(
            @RequestParam(value="sido", required=false, defaultValue="") String sido
    ) throws Exception {

        String target = "https://www.baskinrobbins.co.kr/api/store-address.php?sido="
                + URLEncoder.encode(sido, StandardCharsets.UTF_8);

        HttpURLConnection conn = (HttpURLConnection) new URL(target).openConnection();
        conn.setRequestMethod("GET");
        conn.setConnectTimeout(5000);
        conn.setReadTimeout(5000);

        try (BufferedReader br = new BufferedReader(
                new InputStreamReader(conn.getInputStream(), StandardCharsets.UTF_8))) {

            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) sb.append(line);

            return sb.toString();
        }
    }
	
}
