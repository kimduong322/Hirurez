package com.duongdk.edu.Hiruez.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.duongdk.edu.Hiruez.dto.UserDto;
import com.duongdk.edu.Hiruez.exception.UserAlreadyExistException;
import com.duongdk.edu.Hiruez.model.User;
import com.duongdk.edu.Hiruez.service.UserService;

import jakarta.validation.Valid;

@Controller
public class LoginController {
	private Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	public String loginForm(@RequestParam(value = "error", required = false) String error,
                        @RequestParam(value = "logout", required = false) String logout,
                        Model model) {
		if (error != null) {
            model.addAttribute("error", "Invalid username or password.");
        }
        if (logout != null) {
            model.addAttribute("logout", "You have been logged out successfully.");
        }
		return "login";
	}

	@GetMapping("/registration")
	public String registrationForm(Model model) {
		UserDto user = new UserDto();
		model.addAttribute("user", user);
		return "register";
	}

	@PostMapping("/registration")
	public String registration(
		@Valid @ModelAttribute("user") UserDto userDto,
		BindingResult result,
		RedirectAttributes redirectAttributes,
		Model model
	) {

		if (result.hasErrors()) {
			model.addAttribute("registrationForm", userDto);
			return "register";
		}
		User user = null;
		try {
			user = userService.register(userDto);
			logger.info(user.toString());
		} catch (UserAlreadyExistException e) {
			result.rejectValue("email", "user.email", "An account already exists for this email.");
			model.addAttribute("registrationForm", userDto);
			return "register";
		}
		model.addAttribute("registerSuccess", "Registration successful!");
		model.addAttribute("id", user.getId());
		model.addAttribute("name", user.getUsername());
		return "login";
	}
}
