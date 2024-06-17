package com.duongdk.edu.Hiruez.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "restaurant_rate")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class StoreRate {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "restaurant_id")
    private Store restaurant;

    private int rating;

    // Constructors, getters, and setters
    public StoreRate(User user, Store restaurant, int rating) {
        this.user = user;
        this.restaurant = restaurant;
        this.rating = rating;
    }
}
