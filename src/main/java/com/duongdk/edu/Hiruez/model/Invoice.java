package com.duongdk.edu.Hiruez.model;

import java.time.LocalDateTime;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
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
@jakarta.persistence.Table(name="invoices")
public class Invoice {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@ManyToOne
    @JoinColumn(name = "byUserId", nullable = false)
    private User createdByUser; // created by
	
	@ManyToOne
	@JoinColumn(name = "on_table_id", nullable = false)
	private Table createdOnTable;
	
	private LocalDateTime createdTime;
	
	private int isCurrentOnTable;

	@OneToMany(mappedBy = "invoice")
    private List<InvoiceItem> invoiceItems;

	private String status; // ORDERING, QUANTITY_CONFRIMED, PAID, STORE_CONFIRMED, DELIVERED

	public Invoice(User createdByUser, Table createdOnTable, LocalDateTime createdTime, int isCurrentOnTable) {
		super();
		this.createdByUser = createdByUser;
		this.createdOnTable = createdOnTable;
		this.createdTime = createdTime;
		this.isCurrentOnTable = isCurrentOnTable;
	}

	public Invoice(User createdByUser, Table createdOnTable, LocalDateTime createdTime, int isCurrentOnTable, List<InvoiceItem> items) {
		super();
		this.createdByUser = createdByUser;
		this.createdOnTable = createdOnTable;
		this.createdTime = createdTime;
		this.isCurrentOnTable = isCurrentOnTable;
		this.invoiceItems = items;
	}
	
	public Invoice(User createdByUser, Table createdOnTable, LocalDateTime createdTime, int isCurrentOnTable,
			List<InvoiceItem> items, String status) {
		super();
		this.createdByUser = createdByUser;
		this.createdOnTable = createdOnTable;
		this.createdTime = createdTime;
		this.isCurrentOnTable = isCurrentOnTable;
		this.invoiceItems = items;
		this.status = status;
	}
}
