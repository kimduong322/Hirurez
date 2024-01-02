package com.duongdk.edu.Hiruez.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.duongdk.edu.Hiruez.model.FoodItem;
import com.duongdk.edu.Hiruez.model.Store;

@Repository
public interface FoodItemRepository extends JpaRepository<FoodItem, Long> {
	List<FoodItem> findByBelongsToStore(Store store);
}
