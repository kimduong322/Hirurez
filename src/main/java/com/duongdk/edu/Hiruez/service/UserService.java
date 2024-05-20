package com.duongdk.edu.Hiruez.service;

import com.duongdk.edu.Hiruez.dto.UserDto;
import com.duongdk.edu.Hiruez.model.User;

public interface UserService {
    User register(UserDto userDto);
    
    User findUserByEmail(String email);
}
