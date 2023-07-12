package com.mylb.spring.test.jsp.repository;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.mylb.spring.test.jsp.domain.Seller;

@Repository
public interface SellerRepository {
	
	public int insertSeller(
			@Param("nickname") String nickname
			, @Param("profileImg") String profileImageUrl
			, @Param("temperature") double temperature);
	
	public Seller selectLastSeller();
	
	public Seller selectSeller(@Param("id") int id);

}
