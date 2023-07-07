package com.mylb.spring.test.database.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mylb.spring.test.database.domain.Store;

@Repository
public interface StoreRepository {
	
	public List<Store> selectStoreList();

}
