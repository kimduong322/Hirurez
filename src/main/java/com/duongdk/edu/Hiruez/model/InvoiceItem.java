package com.duongdk.edu.Hiruez.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
@jakarta.persistence.Table(name="invoice_items")
public class InvoiceItem {

	public Invoice getInvoice() {
		return invoice;
	}

	public void setInvoice(Invoice invoice) {
		this.invoice = invoice;
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

	public User getByUser() {
		return byUser;
	}

	public void setByUser(User byUser) {
		this.byUser = byUser;
	}

	public Long getId() {
		return id;
	}

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@ManyToOne
    @JoinColumn(name = "order_id", nullable = false)
    private Invoice invoice;
	
	@ManyToOne
    @JoinColumn(name = "foodId", nullable = false)
    private FoodItem food;

    private Long quantity;
    
    @ManyToOne
    @JoinColumn(name = "by_user_id", nullable = false)
    private User byUser;

	public InvoiceItem() {
		super();
	}

	public InvoiceItem(Invoice invoice, FoodItem food, Long quantity, User byUser) {
		super();
		this.invoice = invoice;
		this.food = food;
		this.quantity = quantity;
		this.byUser = byUser;
	}
    
    
}
