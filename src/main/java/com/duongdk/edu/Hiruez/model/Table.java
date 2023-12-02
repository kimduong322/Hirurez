package com.duongdk.edu.Hiruez.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
@jakarta.persistence.Table(name = "tables")
public class Table {
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
	public Long getMinCapacity() {
		return minCapacity;
	}
	public void setMinCapacity(Long minCapacity) {
		this.minCapacity = minCapacity;
	}
	public Long getMaxCapacity() {
		return maxCapacity;
	}
	public void setMaxCapacity(Long maxCapacity) {
		this.maxCapacity = maxCapacity;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
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
    private Long minCapacity;
    private Long maxCapacity;
    private Boolean status;
	public Table() {
		super();
	}
	public Table(Store belongsToStore, String name, Long minCapacity, Long maxCapacity, Boolean status) {
		super();
		this.belongsToStore = belongsToStore;
		this.name = name;
		this.minCapacity = minCapacity;
		this.maxCapacity = maxCapacity;
		this.status = status;
	}
    
}
