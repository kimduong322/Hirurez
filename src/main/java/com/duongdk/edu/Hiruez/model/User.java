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
import lombok.ToString;

@ToString
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@jakarta.persistence.Table(name = "users")
public class User{
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(nullable = false, unique = true)
    private String username;
	@Column(nullable = false)
    private String password;
	@Column(nullable = false, unique = true)
    private String email;
    private Double balance;
    
    @ManyToOne
	@JoinColumn(name = "role_id", nullable = false)
	private UserRole role;
    
    public User(String username, String password, String email, Double balance, UserRole role) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.balance = balance;
		this.role = role;
	}

	public boolean hasRole(String roleName) {
		return this.role.getName().equals(roleName);
	}
}

