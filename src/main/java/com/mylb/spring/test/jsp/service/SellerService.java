package com.mylb.spring.test.jsp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylb.spring.test.jsp.domain.Seller;
import com.mylb.spring.test.jsp.repository.SellerRepository;

@Service
public class SellerService {
	
	@Autowired
	private SellerRepository sellerRepository;
	
	public int addSeller(
			String nickname
			, String profileImageUrl
			, double temperature) {
		
		int count = sellerRepository.insertSeller(nickname, profileImageUrl, temperature);
		
		return count;
	}
	
	public Seller getLastSeller() {
		Seller seller = sellerRepository.selectLastSeller();
		
		return seller;
	}
	
	public Seller getSeller(int id) {
		Seller seller = sellerRepository.selectSeller(id);
		
		return seller;
	}
	
	
	
	
	
	
	
	
	
	
	
}
