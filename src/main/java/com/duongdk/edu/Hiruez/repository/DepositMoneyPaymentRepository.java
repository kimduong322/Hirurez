package com.duongdk.edu.Hiruez.repository;

import org.springframework.stereotype.Repository;
import com.duongdk.edu.Hiruez.model.DepositMoneyPayment;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

@Repository
public interface DepositMoneyPaymentRepository extends JpaRepository<DepositMoneyPayment, Long> {
    List<DepositMoneyPayment> findByUserIdOrderByUserIdDesc(Long userId);
}
