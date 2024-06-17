package com.duongdk.edu.Hiruez.model;

import java.time.LocalDateTime;

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
@jakarta.persistence.Table(name = "orders")
public class Order {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@ManyToOne
    @JoinColumn(name = "byUserId", nullable = false)
    private User byUser;
	
	@ManyToOne
	@JoinColumn(name = "on_table_id", nullable = false)
	private Table onTable;
	
	private LocalDateTime orderTime;
    private double total;

	private String status;

	public Order(User byUser, Table onTable, LocalDateTime orderTime, double total) {
		super();
		this.byUser = byUser;
		this.onTable = onTable;
		this.orderTime = orderTime;
		this.total = total;
	}
	
	public Order(User byUser, Table ontTable, LocalDateTime orderTime, double total, String status) {
		super();
		this.byUser = byUser;
		this.onTable = ontTable;
		this.orderTime = orderTime;
		this.total = total;
		this.status = status;
	}
}
