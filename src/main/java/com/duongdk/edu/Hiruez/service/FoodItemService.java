package com.duongdk.edu.Hiruez.service;

import java.util.List;

import com.duongdk.edu.Hiruez.model.FoodItem;
import com.duongdk.edu.Hiruez.model.Store;

public interface FoodItemService {
	void createSampleData();
    List<FoodItem> getAllFoodItems();
    FoodItem getFoodItemById(Long id);
    void saveFoodItem(FoodItem foodItem);
    void deleteFoodItem(Long id);
    List<FoodItem> getAllFoodItemsForStore(Store store);
}
