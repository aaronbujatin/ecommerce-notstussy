package org.xyz.cartsvc.dto;

import java.math.BigDecimal;

public record CartItemResponse(
        Long id,
        Long productId,
        Long productUnitId,
        String name,
        BigDecimal price,
        String image,
        String unitType,
        int quantity,
        BigDecimal subTotal
) {
}