package org.xyz.cartsvc.dto;

import com.fasterxml.jackson.annotation.JsonInclude;

import java.math.BigDecimal;
import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL)
public record CartResponse(
        Long id,
        Long userId,
        BigDecimal totalPrice,
        List<CartItemResponse> cartItems
) {
}

