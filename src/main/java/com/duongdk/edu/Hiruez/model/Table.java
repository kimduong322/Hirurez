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
@jakarta.persistence.Table(name = "tables")
public class Table {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@ManyToOne
    @JoinColumn(name = "belongsToStoreId", nullable = false)
    private Store belongsToStore;
	
	private String name;
    private Long minCapacity;
    private Long maxCapacity;
    private Boolean status;
	public Table(Store belongsToStore, String name, Long minCapacity, Long maxCapacity, Boolean status) {
		super();
		this.belongsToStore = belongsToStore;
		this.name = name;
		this.minCapacity = minCapacity;
		this.maxCapacity = maxCapacity;
		this.status = status;
	}
    
}
