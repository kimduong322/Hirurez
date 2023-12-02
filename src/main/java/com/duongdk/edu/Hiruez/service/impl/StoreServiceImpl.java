package com.duongdk.edu.Hiruez.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duongdk.edu.Hiruez.model.Store;
import com.duongdk.edu.Hiruez.repository.StoreRepository;
import com.duongdk.edu.Hiruez.service.StoreService;

@Service
public class StoreServiceImpl implements StoreService {
	private final StoreRepository storeRepository;
	
	@Override
	public void createSampleData() {
		
		
	}
	
    @Autowired
    public StoreServiceImpl(StoreRepository storeRepository) {
        this.storeRepository = storeRepository;
    }
    
	@Override
	public List<Store> getAllStores() {
		return storeRepository.findAll();
	}

	@Override
	public Store getStoreById(Long id) {
		return storeRepository.findById(id).orElse(null);
	}

	@Override
	public void saveStore(Store store) {
		storeRepository.save(store);
	}

	@Override
	public void deleteStore(Long id) {
		storeRepository.deleteById(id);
	}

}
