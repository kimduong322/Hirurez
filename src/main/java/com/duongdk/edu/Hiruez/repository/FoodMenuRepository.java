package com.duongdk.edu.Hiruez.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duongdk.edu.Hiruez.model.FoodMenu;

public interface FoodMenuRepository extends JpaRepository<FoodMenu, Long> {
	List<FoodMenu> findByMenuId(Long menuId);
}
