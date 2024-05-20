package com.duongdk.edu.Hiruez.config;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.duongdk.edu.Hiruez.model.User;
import com.duongdk.edu.Hiruez.repository.UserRepository;

@Service
public class CustomUserDetailsService implements UserDetailsService{

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String usernameOrEmail) throws UsernameNotFoundException {
        final Logger logger = LoggerFactory.getLogger(CustomUserDetailsService.class);
        logger.info("loadUserByUsername: " + usernameOrEmail);
        User user = userRepository.findByEmail(usernameOrEmail);

        if (user == null) {
            logger.info("User not found by email. Trying to find by username: " + usernameOrEmail);
            user = userRepository.findByUsername(usernameOrEmail);
        }
        if (user == null) {
            logger.info("User not found by username either.");
            throw new UsernameNotFoundException("User not found");
        }
        return new CustomUserDetails(user);
    }
}
