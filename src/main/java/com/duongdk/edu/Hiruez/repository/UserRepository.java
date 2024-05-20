package com.duongdk.edu.Hiruez.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.duongdk.edu.Hiruez.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
	User findByUsername(String username);
	
	@Query("SELECT u FROM User u WHERE u.email = ?1")
	User findByEmail(String email);
}
