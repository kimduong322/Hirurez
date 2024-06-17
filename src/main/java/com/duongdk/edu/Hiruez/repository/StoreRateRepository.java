package com.duongdk.edu.Hiruez.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duongdk.edu.Hiruez.model.StoreRate;

public interface StoreRateRepository extends JpaRepository<StoreRate, Long>{
    List<StoreRate> findAllByRestaurantId(Long storeId);
}