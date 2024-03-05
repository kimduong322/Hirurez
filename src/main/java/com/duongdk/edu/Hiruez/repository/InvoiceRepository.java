package com.duongdk.edu.Hiruez.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duongdk.edu.Hiruez.model.Invoice;
import com.duongdk.edu.Hiruez.model.Table;

public interface InvoiceRepository extends JpaRepository<Invoice, Long> {
	List<Invoice> findByCreatedOnTable(Table table);
}
