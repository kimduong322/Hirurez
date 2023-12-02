package com.duongdk.edu.Hiruez.model;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
@jakarta.persistence.Table(name = "orders")
public class Order {
	public User getByUser() {
		return byUser;
	}
	public void setByUser(User byUser) {
		this.byUser = byUser;
	}
	public Table getOnTable() {
		return onTable;
	}
	public void setOnTable(Table onTable) {
		this.onTable = onTable;
	}
	public LocalDateTime getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(LocalDateTime orderTime) {
		this.orderTime = orderTime;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public Long getId() {
		return id;
	}
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@ManyToOne
    @JoinColumn(name = "byUserId", nullable = false)
    private User byUser;
	
	@ManyToOne
    @JoinColumn(name = "onTableId", nullable = false)
    private Table onTable;
	
	private LocalDateTime orderTime;
    private float total;
	public Order() {
		super();
	}
	public Order(User byUser, Table onTable, LocalDateTime orderTime, float total) {
		super();
		this.byUser = byUser;
		this.onTable = onTable;
		this.orderTime = orderTime;
		this.total = total;
	}
     
}
