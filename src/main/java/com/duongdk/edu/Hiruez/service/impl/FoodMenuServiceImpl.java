package com.duongdk.edu.Hiruez.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duongdk.edu.Hiruez.model.FoodMenu;
import com.duongdk.edu.Hiruez.repository.FoodMenuRepository;
import com.duongdk.edu.Hiruez.service.FoodMenuService;

@Service
public class FoodMenuServiceImpl implements FoodMenuService {

	@Autowired
	private FoodMenuRepository foodMenuRepository;
	
	@Override
	public List<FoodMenu> getAllFoodMenuByMenuId(Long menuId) {
		return foodMenuRepository.findByMenuId(menuId);
	}

}
