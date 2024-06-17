package com.duongdk.edu.Hiruez.model;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "invoice_logging")
public class InvoiceLog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private LocalDateTime createTime;

    @ManyToOne
    @JoinColumn(name = "on_invoice_id", nullable = false)
    private Invoice onInvoice;

    private String loggingMessage;

    public InvoiceLog(LocalDateTime createTime, Invoice onInvoice, String loggingMessage) {
        this.createTime = createTime;
        this.onInvoice = onInvoice;
        this.loggingMessage = loggingMessage;
    }
}
