package com.duongdk.edu.Hiruez.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duongdk.edu.Hiruez.model.Voucher;

public interface VoucherRepository extends JpaRepository<Voucher, Long> {
    Voucher findByCode(String code);
}
