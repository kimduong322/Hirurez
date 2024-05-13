package com.duongdk.edu.Hiruez.model;

import jakarta.persistence.Column;
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

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="stores")
public class Store {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
    @JoinColumn(name = "owner_id", nullable = false)
    private User owner;
	
	private String name;
	private String address;
	private String phone;
	private String description;
	private String email;

	private float rating;
	private int rating_count;
	
	@Column(name = "maximum_waiting_time_minutes")
	private int wating_times;
	public Store(User owner, String name, String address, String phone, String description, String email) {
		super();
		this.owner = owner;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.description = description;
		this.email = email;
	}
	
	public Store(User owner, String name, String address, String phone, String description, String email, int wating_times) {
		super();
		this.owner = owner;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.description = description;
		this.email = email;
		this.wating_times = wating_times;
		this.rating = 0;
		this.rating_count = 0;
	}
}
