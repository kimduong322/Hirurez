package com.duongdk.edu.Hiruez.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpServletRequest;

import com.duongdk.edu.Hiruez.service.VnPayService;
import com.duongdk.edu.Hiruez.model.*;
import com.duongdk.edu.Hiruez.repository.UserRepository;
import com.duongdk.edu.Hiruez.Utils.CurrentUserUtil;

@Controller
public class VnPayController {

    @Autowired private VnPayService vnPayService;

    @Autowired private UserRepository userRepository;

    @GetMapping("/depositMoney/vnpay_return")
    public String paymentCompleted(HttpServletRequest request, Model model) {
        int paymentStatus = vnPayService.orderReturn(request);
        String orderInfo = request.getParameter("vnp_OrderInfo");
        String paymentTime = request.getParameter("vnp_PayDate");
        String transactionId = request.getParameter("vnp_TransactionNo");
        String totalPrice = request.getParameter("vnp_Amount");
        int totalAmount = Integer.parseInt(totalPrice) / 100;
        String bankCode = request.getParameter("vnp_BankCode");
        String cardType = request.getParameter("vnp_CardType");
        model.addAttribute("orderInfo", orderInfo);
        model.addAttribute("totalAmount", totalAmount);
        model.addAttribute("paymentTime", paymentTime);
        model.addAttribute("transactionId", transactionId);
        model.addAttribute("bankCode", bankCode);
        model.addAttribute("cardType", cardType);
        User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
        model.addAttribute("currentUser", curUser);
        return paymentStatus == 1 ? "deposit_money_on_success" : "deposit_money_on_fail";
    }
}