package com.duongdk.edu.Hiruez.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@jakarta.persistence.Table(name = "voucher")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Voucher {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "code", nullable = false)
	private String code;
	
	@Column(name = "voucher_type", nullable = false)
	private String voucherType;
	
	@Column(name = "totalvideotimeto_claim", nullable = false)
	private Long totalVideoTimeToClaim;

	@Column(name = "value", nullable = false)
	private int value;
	
	public Voucher(String code, String voucherType, Long totalVideoTimeToClaim, int value) {
		super();
		this.voucherType = voucherType;
		this.totalVideoTimeToClaim = totalVideoTimeToClaim;
		this.code = code;
		this.value = value;
	}
}
