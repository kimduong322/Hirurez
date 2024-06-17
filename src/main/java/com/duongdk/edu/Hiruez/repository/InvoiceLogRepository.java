package com.duongdk.edu.Hiruez.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duongdk.edu.Hiruez.model.Invoice;
import com.duongdk.edu.Hiruez.model.InvoiceLog;

public interface InvoiceLogRepository extends JpaRepository<InvoiceLog, Long>{
    List<InvoiceLog> findByOnInvoice(Invoice onInvoice);
}
