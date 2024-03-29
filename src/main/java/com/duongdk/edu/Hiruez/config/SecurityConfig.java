package com.duongdk.edu.Hiruez.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.csrf.CookieCsrfTokenRepository;
import org.springframework.security.config.Customizer;
@Configuration
@EnableWebSecurity
public class SecurityConfig {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private UserAuthenticationProvide userAuthenticationProvider;
	@Bean
	public PasswordEncoder passwordEncoder( ) {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public JdbcUserDetailsManager jdbcUserDetailManager() {
		JdbcUserDetailsManager userDetailManager = new JdbcUserDetailsManager();
		userDetailManager.setJdbcTemplate(jdbcTemplate);
		return userDetailManager;
	}
	
	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		http
			.authorizeHttpRequests((authorize) -> authorize
//				.requestMatchers("/**", "/home").permitAll()
//				.requestMatchers("/storemanagement/dashboard/**").permitAll()
				.requestMatchers("/images/**").permitAll()
//				.requestMatchers("/admin/**").hasRole("sysadmin")
//				.requestMatchers("/storemanagement/**").hasRole("admin")
//				.requestMatchers("/customer/**").hasRole("customer")
				.anyRequest().authenticated()
			)
			.httpBasic(Customizer.withDefaults())
			.formLogin(form -> form
					.loginPage("/login")
					.permitAll()
				)
			.logout((logout) -> logout.logoutUrl("/logout"))
			.exceptionHandling(exceptionHandling -> exceptionHandling
                    .accessDeniedPage("/access-denied")
            )
			.authenticationProvider(userAuthenticationProvider)
			.csrf().csrfTokenRepository(CookieCsrfTokenRepository.withHttpOnlyFalse());
		return http.build();
	}
}
