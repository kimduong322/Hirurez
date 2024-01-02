package com.duongdk.edu.Hiruez.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duongdk.edu.Hiruez.model.Store;
import com.duongdk.edu.Hiruez.model.Table;

public interface TableRepository extends JpaRepository<Table, Long> {
	List<Table> findByBelongsToStore(Store store);
}
