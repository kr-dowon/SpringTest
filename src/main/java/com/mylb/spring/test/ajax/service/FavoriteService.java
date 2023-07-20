package com.mylb.spring.test.ajax.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylb.spring.test.ajax.domain.Favorite;
import com.mylb.spring.test.ajax.repository.FavoriteRepository;

@Service
public class FavoriteService {

	@Autowired
	private FavoriteRepository favoriteRepository;
	
	public List<Favorite> getFavoriteList() {
		
		List<Favorite> favorite = favoriteRepository.selectFavoriteList();
		
		return favorite;
	}
	
	public int addFavorite(
			String name
			, String url) {
		int count = favoriteRepository.insertFavorite(name, url);
		
		return count;
	}
	
}
