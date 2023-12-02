package com.duongdk.edu.Hiruez.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
@jakarta.persistence.Table(name = "oder_items")
public class OrderItem {

    public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public FoodItem getFood() {
		return food;
	}

	public void setFood(FoodItem food) {
		this.food = food;
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
    @JoinColumn(name = "order_id", nullable = false)
    private Order order;

    @ManyToOne
    @JoinColumn(name = "foodId", nullable = false)
    private FoodItem food;

    private Long quantity;

	public OrderItem() {
		super();
	}

	public OrderItem(Order order, FoodItem food, Long quantity) {
		super();
		this.order = order;
		this.food = food;
		this.quantity = quantity;
	}
    
}

