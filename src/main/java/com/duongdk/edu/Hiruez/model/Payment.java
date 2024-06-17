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
@jakarta.persistence.Table(name = "payments")
public class Payment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "orderId", nullable = false)
    private Order order;

    private double amount;
    private LocalDateTime paymentTime;
    private String status;

    @ManyToOne
    @JoinColumn(name = "byUserId", nullable = false)
    private User byUser;

	public Payment(Order order, double amount, LocalDateTime paymentTime, String status) {
		super();
		this.order = order;
		this.amount = amount;
		this.paymentTime = paymentTime;
		this.status = status;
	}
    
    public Payment(Order order, double amount, LocalDateTime paymentTime, String status, User byUser) { 
        super(); 
        this.order = order; 
        this.amount = amount; 
        this.paymentTime = paymentTime; 
        this.status = status; 
        this.byUser = byUser;
    }
}