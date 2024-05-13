package com.duongdk.edu.Hiruez.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.duongdk.edu.Hiruez.model.Store;

@Repository
public interface StoreRepository extends JpaRepository<Store, Long> {
	Store findStoreByOwner_Username(String username);

    List<Store> findAllByOrderByRatingDesc();
}
