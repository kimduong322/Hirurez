package com.duongdk.edu.Hiruez.service;

import java.util.List;

import com.duongdk.edu.Hiruez.model.Store;

public interface StoreService {
	void createSampleData();
	List<Store> getAllStores();
    Store getStoreById(Long id);
    void saveStore(Store store);
    void deleteStore(Long id);
}
