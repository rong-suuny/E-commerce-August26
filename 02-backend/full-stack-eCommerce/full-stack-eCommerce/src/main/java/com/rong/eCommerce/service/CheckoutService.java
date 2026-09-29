package com.rong.eCommerce.service;

import com.rong.eCommerce.dto.PaymentInfo;
import com.rong.eCommerce.dto.Purchase;
import com.rong.eCommerce.dto.PurchaseResponse;
import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;

public interface CheckoutService {
    PurchaseResponse placeOrder(Purchase purchase);
    PaymentIntent createPaymentIntent(PaymentInfo paymentInfo) throws StripeException;
}
