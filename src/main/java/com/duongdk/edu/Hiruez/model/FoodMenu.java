package com.duongdk.edu.Hiruez.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@jakarta.persistence.Table(name = "food_menus")
public class FoodMenu {
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
	
}
