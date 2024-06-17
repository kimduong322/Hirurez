package com.duongdk.edu.Hiruez.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SysadminController {
    
    @GetMapping("/admin/dashboard")
    public String getSysAdminDashboard(Model model) {
        
        return "sysadmin_dashboard";
    }
}
