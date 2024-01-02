package com.duongdk.edu.Hiruez.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duongdk.edu.Hiruez.model.Order;
import com.duongdk.edu.Hiruez.model.Store;
import com.duongdk.edu.Hiruez.model.Table;
import com.duongdk.edu.Hiruez.model.User;
import com.duongdk.edu.Hiruez.repository.OrderRepository;
import com.duongdk.edu.Hiruez.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
    private OrderRepository orderRepository;
	
	@Override
	public List<Order> getOrdersByTable(Table table) {
		return orderRepository.findByOnTable(table);
	}

	@Override
	public Order findById(Long id) {
		return orderRepository.findById(id).get();
	}

//	@Override
//	public List<Order> findAllOrdersByStoreOwner(User owner) {
////		return orderRepository.findAllByOnTable_Store_Owner(owner);
//	}

}
