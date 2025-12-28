package org.xyz.cartsvc.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum CartStatus {
    ACTIVE("Cart is active and being used by shopper"),
    BEGIN_CHECKOUT("User initiated the checkout process"),
    PURCHASE("Transaction for the cart is completed and purchase was made");


    private final String description;
}
