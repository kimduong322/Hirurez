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
@jakarta.persistence.Table(name="foods")
public class FoodItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @ManyToOne
    @JoinColumn(name = "belongsToStoreId", nullable = false)
    private Store belongsToStore;
    
    private String name;
    private float price;
    private String description;
	public FoodItem(Store belongsToStore, String name, float price, String description) {
		super();
		this.belongsToStore = belongsToStore;
		this.name = name;
		this.price = price;
		this.description = description;
	}
    
}
