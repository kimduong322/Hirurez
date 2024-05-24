package com.duongdk.edu.Hiruez.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
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
@jakarta.persistence.Table(name="deposit_money_payment")
public class DepositMoneyPayment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "user_id", nullable = false)
    private Long userId;

    @Column(name = "amount", nullable = false)
    private float amount;

    @Column(name = "bankcode", nullable = false)
    private String bankcode;

    @Column(name = "card_type", nullable = false)
    private String cardType;

    @Column(name = "info", nullable = false)
    private String info;

    @Column(name = "status", nullable = false)
    private String status;

    @Column(name = "method", nullable = false)
    private String method;

    // constructor all params without id
    public DepositMoneyPayment(Long userId, float amount, String bankcode, String cardType, String info, String status, String method) {
        this.userId = userId;
        this.amount = amount;
        this.bankcode = bankcode;
        this.cardType = cardType;
        this.info = info;
        this.status = status;
        this.method = method;
    }
}