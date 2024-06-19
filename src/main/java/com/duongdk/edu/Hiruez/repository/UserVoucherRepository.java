package com.duongdk.edu.Hiruez.repository;

import com.duongdk.edu.Hiruez.model.User;
import com.duongdk.edu.Hiruez.model.UserVoucher;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserVoucherRepository extends JpaRepository<UserVoucher, Long>{
    List<UserVoucher> findByUser(User user);
}
