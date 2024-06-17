package com.duongdk.edu.Hiruez.dto;

import java.util.List;

import com.duongdk.edu.Hiruez.model.Order;
import com.duongdk.edu.Hiruez.model.OrderItem;
import com.duongdk.edu.Hiruez.model.Payment;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class MyOrderDto {
    private Order order;
    private List<OrderItem> orderItems;
    private List<Payment> payments;
}
