package com.duongdk.edu.Hiruez.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duongdk.edu.Hiruez.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
	User findByUsername(String username);
}
