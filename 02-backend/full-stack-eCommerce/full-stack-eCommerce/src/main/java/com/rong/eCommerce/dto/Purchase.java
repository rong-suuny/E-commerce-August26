package com.rong.eCommerce.dto;

import com.rong.eCommerce.entity.Address;
import com.rong.eCommerce.entity.Customer;
import com.rong.eCommerce.entity.Order;
import com.rong.eCommerce.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;

}

