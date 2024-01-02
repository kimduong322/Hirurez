package com.duongdk.edu.Hiruez.service;

import java.util.List;

import com.duongdk.edu.Hiruez.model.Order;
import com.duongdk.edu.Hiruez.model.Store;
import com.duongdk.edu.Hiruez.model.Table;
import com.duongdk.edu.Hiruez.model.User;

public interface OrderService {
	List<Order> getOrdersByTable(Table table);
//	List<Order> findAllOrdersByStoreOwner(User owner);

	Order findById(Long id);
}
