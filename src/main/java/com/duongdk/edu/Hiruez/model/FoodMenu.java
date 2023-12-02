package com.duongdk.edu.Hiruez.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
@jakarta.persistence.Table(name = "food_menus")
public class FoodMenu {
	public FoodItem getFood() {
		return food;
	}

	public void setFood(FoodItem food) {
		this.food = food;
	}

	public Menu getMenu() {
		return menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}

	public Long getQuantity() {
		return quantity;
	}

	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}

	public Long getId() {
		return id;
	}

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@ManyToOne
    @JoinColumn(name = "food_id", nullable = false)
    private FoodItem food;
	
	@ManyToOne
    @JoinColumn(name = "menu_id", nullable = false)
    private Menu menu;
	
	private Long quantity;

	public FoodMenu(FoodItem food, Menu menu, Long quantity) {
		super();
		this.food = food;
		this.menu = menu;
		this.quantity = quantity;
	}

	public FoodMenu() {
		super();
	}
	
}
