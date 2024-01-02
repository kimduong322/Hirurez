package com.duongdk.edu.Hiruez.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duongdk.edu.Hiruez.model.Menu;
import com.duongdk.edu.Hiruez.model.Store;

public interface MenuRepository extends JpaRepository<Menu, Long> {
	List<Menu> findByStore(Store store);
	Menu findMenuById(Long id);
}
