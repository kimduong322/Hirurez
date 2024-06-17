package com.duongdk.edu.Hiruez.model;

import com.amazonaws.transform.SimpleTypeCborUnmarshallers.LongCborUnmarshaller;

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
@jakarta.persistence.Table(name="invoice_items")
public class InvoiceItem {

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

    private int isConfirmed;

	public InvoiceItem(Invoice invoice, FoodItem food, Long quantity, User byUser) {
		super();
		this.invoice = invoice;
		this.food = food;
		this.quantity = quantity;
		this.byUser = byUser;
	}
    
    
}
