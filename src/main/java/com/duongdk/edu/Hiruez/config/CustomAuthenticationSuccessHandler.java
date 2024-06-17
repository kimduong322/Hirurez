package com.duongdk.edu.Hiruez.config;

import java.io.IOException;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Component
public class CustomAuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler{
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
            Authentication authentication) throws ServletException, IOException {

        CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();

        String redirectURL = request.getContextPath();

        if (userDetails.hasRole("ROLE_SYSADMIN")) {
            redirectURL = "admin/dashboard";
        } else if (userDetails.hasRole("ROLE_ADMIN")) {
            redirectURL = "storemanagement/dashboard/" + userDetails.getUsername();
        } else if (userDetails.hasRole("ROLE_CUSTOMER")) {
            redirectURL = "";
        }

        response.sendRedirect(redirectURL);

    }
}
