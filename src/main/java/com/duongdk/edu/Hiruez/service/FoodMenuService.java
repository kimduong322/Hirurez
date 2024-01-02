package com.duongdk.edu.Hiruez.service;

import java.util.List;

import com.duongdk.edu.Hiruez.model.FoodMenu;

public interface FoodMenuService {
	List<FoodMenu> getAllFoodMenuByMenuId(Long menuId);
}
