package com.duongdk.edu.Hiruez.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
@jakarta.persistence.Table(name="foods")
public class FoodItem {
    public Store getBelongsToStore() {
		return belongsToStore;
	}
	public void setBelongsToStore(Store belongsToStore) {
		this.belongsToStore = belongsToStore;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Long getId() {
		return id;
	}
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @ManyToOne
    @JoinColumn(name = "belongsToStoreId", nullable = false)
    private Store belongsToStore;
    
    private String name;
    private float price;
    private String description;
	public FoodItem() {
		super();
	}
	public FoodItem(Store belongsToStore, String name, float price, String description) {
		super();
		this.belongsToStore = belongsToStore;
		this.name = name;
		this.price = price;
		this.description = description;
	}
    
}
