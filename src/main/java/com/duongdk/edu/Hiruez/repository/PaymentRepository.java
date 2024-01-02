package com.duongdk.edu.Hiruez.repository;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duongdk.edu.Hiruez.model.Order;
import com.duongdk.edu.Hiruez.model.Payment;

public interface PaymentRepository extends JpaRepository<Payment, Long> {
	List<Payment> findByPaymentTimeBetweenAndOrderOnTableBelongsToStoreId(LocalDateTime startDate, LocalDateTime endDate, Long storeId);
	List<Payment> findByOrder(Order order);
}
