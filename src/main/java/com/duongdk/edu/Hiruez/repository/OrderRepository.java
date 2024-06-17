package com.duongdk.edu.Hiruez.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duongdk.edu.Hiruez.model.Order;
import com.duongdk.edu.Hiruez.model.Table;

public interface OrderRepository extends JpaRepository<Order, Long> {

	List<Order> findByOnTable(Table table);
//	List<Order> findAllByOnTable_Store_Owner(User owner);
}
