package com.duongdk.edu.Hiruez;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.duongdk.edu.Hiruez.model")
public class HiruezApplication {

	public static void main(String[] args) {
		SpringApplication.run(HiruezApplication.class, args);
	}

}
