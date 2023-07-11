package com.mylb.spring.test.jsp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mylb.spring.test.jsp.service.SellerService;

@Controller
public class SellerController {
	
	@Autowired
	private SellerService sellerService;
	
	@PostMapping("/jsp/seller/add")
	@ResponseBody
	public String createSeller(
			@RequestParam("nickname") String nickname
			, @RequestParam("profileImg") String profileImageUrl
			, @RequestParam("temperature") double temperature) {
		
		int count = sellerService.addSeller(nickname, profileImageUrl, temperature);
		
		return "입력 성공 : " + count;
	}

}
