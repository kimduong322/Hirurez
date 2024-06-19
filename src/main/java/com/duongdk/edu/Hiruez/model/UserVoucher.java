package com.duongdk.edu.Hiruez.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@jakarta.persistence.Table(name = "user_voucher")
public class UserVoucher {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@ManyToOne
	@JoinColumn(name = "user_id", nullable = false)
    private User user;

	@ManyToOne
    @JoinColumn(name = "voucher_id", nullable = false)
    private Voucher voucher;

    @Column(name = "remain_count", nullable = false)
    private int remainingCount;
    
    public UserVoucher(User user, Voucher voucher, int remainingCount) {
        super();
        this.user = user;
        this.voucher = voucher;
        this.remainingCount = remainingCount;
    }
}