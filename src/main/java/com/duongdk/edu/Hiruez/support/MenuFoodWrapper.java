package com.duongdk.edu.Hiruez.support;

import java.util.ArrayList;
import java.util.List;

import com.duongdk.edu.Hiruez.model.FoodMenu;

public class MenuFoodWrapper {
	public List<FoodMenu> getFoodsInMenu() {
		return foodsInMenu;
	}

	public void setFoodsInMenu(List<FoodMenu> foodsInMenu) {
		this.foodsInMenu = foodsInMenu;
	}

	private List<FoodMenu> foodsInMenu;

	public MenuFoodWrapper() {
		super();
		this.foodsInMenu = new ArrayList<>();
	}

	public MenuFoodWrapper(List<FoodMenu> foodsInMenu) {
		super();
		this.foodsInMenu = foodsInMenu;
	}
	
	public void add(FoodMenu foodMenu) {
		this.foodsInMenu.add(foodMenu);
	}
}
