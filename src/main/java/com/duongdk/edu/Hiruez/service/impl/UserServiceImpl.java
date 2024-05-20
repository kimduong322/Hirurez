package com.duongdk.edu.Hiruez.service.impl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.duongdk.edu.Hiruez.dto.UserDto;
import com.duongdk.edu.Hiruez.exception.UserAlreadyExistException;
import com.duongdk.edu.Hiruez.model.User;
import com.duongdk.edu.Hiruez.model.UserRole;
import com.duongdk.edu.Hiruez.repository.UserRepository;
import com.duongdk.edu.Hiruez.repository.UserRoleRepository;
import com.duongdk.edu.Hiruez.service.UserService;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserRoleRepository roleRepository;

    private BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
    
    @Override
    public User register(UserDto userDto){
        UserRole role = roleRepository.findByName("customer");
        if (role == null) {
            role = new UserRole("customer");
            roleRepository.save(role);
        }
        // if (userRepository.findByUsername(userDto.getUsername()) != null) {
        //     throw new UserAlreadyExistException("User already exists for this username");
        // }
        if (userRepository.findByEmail(userDto.getEmail()) != null) {
            throw new UserAlreadyExistException("User already exists for this email");
        }
        User user =  new User();
        user.setUsername(userDto.getUsername());
        user.setEmail(userDto.getEmail());
        user.setPassword(passwordEncoder.encode(userDto.getPassword()));
        user.setRole(role);
        user.setBalance(0.0);
        User savedUser = userRepository.save(user);
        // tạo avatar cho user mới
        int randomAvatar = (int) (Math.random() * 515) + 1;
        String initAvatarFileName = randomAvatar + ".png";
        String newAvatarFileName = savedUser.getId() + ".png";
        // Đường dẫn tới file ảnh ban đầu
        Path initAvatarPath = Paths.get("src/main/resources/static/images/avatars", initAvatarFileName);
        // Đường dẫn tới file ảnh mới
        Path newAvatarPath = Paths.get("src/main/resources/static/images/avatars", newAvatarFileName);
        try {
            // Copy file ảnh và đổi tên thành ID của user mới
            Files.copy(initAvatarPath, newAvatarPath, StandardCopyOption.REPLACE_EXISTING);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return savedUser;
    }

    @Override
    public User findUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }    
}
