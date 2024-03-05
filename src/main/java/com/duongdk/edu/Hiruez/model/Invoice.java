package com.duongdk.edu.Hiruez.model;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
@jakarta.persistence.Table(name="invoices")
public class Invoice {

	public User getCreatedByUser() {
		return createdByUser;
	}

	public void setCreatedByUser(User createdByUser) {
		this.createdByUser = createdByUser;
	}

	public Table getCreatedOnTable() {
		return createdOnTable;
	}

	public void setCreatedOnTable(Table createdOnTable) {
		this.createdOnTable = createdOnTable;
	}

	public LocalDateTime getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(LocalDateTime createdTime) {
		this.createdTime = createdTime;
	}

	public int getIsCurrentOnTable() {
		return isCurrentOnTable;
	}

	public void setIsCurrentOnTable(int isCurrentOnTable) {
		this.isCurrentOnTable = isCurrentOnTable;
	}

	public Long getId() {
		return id;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@ManyToOne
    @JoinColumn(name = "byUserId", nullable = false)
    private User createdByUser; // created by
	
	@ManyToOne
	@JoinColumn(name = "on_table_id", nullable = false)
	private Table createdOnTable;
	
	private LocalDateTime createdTime;
	
	private int isCurrentOnTable;

	public Invoice() {
		super();
	}

	public Invoice(User createdByUser, Table createdOnTable, LocalDateTime createdTime, int isCurrentOnTable) {
		super();
		this.createdByUser = createdByUser;
		this.createdOnTable = createdOnTable;
		this.createdTime = createdTime;
		this.isCurrentOnTable = isCurrentOnTable;
	}
	
}
