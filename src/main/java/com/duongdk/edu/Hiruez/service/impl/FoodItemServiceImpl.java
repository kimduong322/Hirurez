package com.duongdk.edu.Hiruez.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duongdk.edu.Hiruez.model.FoodItem;
import com.duongdk.edu.Hiruez.model.Store;
import com.duongdk.edu.Hiruez.repository.FoodItemRepository;
import com.duongdk.edu.Hiruez.service.FoodItemService;

@Service
public class FoodItemServiceImpl implements FoodItemService {
	@Autowired
    private FoodItemRepository foodItemRepository;

	@Override
	public void createSampleData() {
		
		
	}

	@Override
	public List<FoodItem> getAllFoodItems() {
		return foodItemRepository.findAll();
	}

	@Override
	public FoodItem getFoodItemById(Long id) {
		return foodItemRepository.findById(id).orElse(null);
	}

	@Override
	public void saveFoodItem(FoodItem foodItem) {
		foodItemRepository.save(foodItem);
	}

	@Override
	public void deleteFoodItem(Long id) {
		foodItemRepository.deleteById(id);
	}

	@Override
	public List<FoodItem> getAllFoodItemsForStore(Store store) {
		return foodItemRepository.findByBelongsToStore(store);
	}
}
