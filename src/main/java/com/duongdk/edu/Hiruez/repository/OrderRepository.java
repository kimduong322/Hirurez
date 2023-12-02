package com.duongdk.edu.Hiruez.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duongdk.edu.Hiruez.model.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {

}
