package com.duongdk.edu.Hiruez.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Autowired
    private CustomUserDetailsService customUserDetailsService;

    @Autowired
    private CustomAuthenticationSuccessHandler customAuthenticationSuccessHandler;

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        authProvider.setUserDetailsService(customUserDetailsService);
        authProvider.setPasswordEncoder(passwordEncoder);
        auth.authenticationProvider(authProvider);
    }
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.csrf(csrf -> csrf.disable())
                .authorizeHttpRequests((requests) -> requests
                                .requestMatchers("/registration/**", "/login/**", "/images/**", "/fonts/**", "/js/**",
                                "/css/**", "/webjars/**")
                                .permitAll()
                                // .requestMatchers("/admin/**").hasRole("sysadmin")
                                // .requestMatchers("/storemanagement/**").hasRole("admin")
                                // .requestMatchers("/customer/**").hasRole("customer")
                                .anyRequest().authenticated()
                )
                .formLogin((form) -> form
                                .loginPage("/login")
                                .successHandler(customAuthenticationSuccessHandler)
                                .permitAll()
                )
                .logout((logout) -> logout.permitAll())
                .exceptionHandling(handling -> handling.accessDeniedPage("/access-denied"));
		return http.build();
	}
}
