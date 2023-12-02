package com.duongdk.edu.Hiruez.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duongdk.edu.Hiruez.model.OrderItem;

public interface OrderItemRepository extends JpaRepository<OrderItem, Long> {

}
