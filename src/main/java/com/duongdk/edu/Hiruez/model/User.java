package com.duongdk.edu.Hiruez.model;

import java.io.Serializable;

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
public class User implements Serializable{
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
    private Long id;
    @Column(name = "username", nullable = false, unique = true)
    private String username;
	@Column(name = "password", nullable = false)
    private String password;
	@Column(name = "email", nullable = false, unique = true)
    private String email;
    private Double balance;
    
	@ManyToOne
	@JoinColumn(name = "role_id", nullable = false)
	private UserRole role;

	private Long videoViewedTime;
    
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

	public User(String username, String password, String email, Double balance, UserRole role, Long videoViewedTime) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.balance = balance;
		this.role = role;
		this.videoViewedTime = videoViewedTime;
	}
}

