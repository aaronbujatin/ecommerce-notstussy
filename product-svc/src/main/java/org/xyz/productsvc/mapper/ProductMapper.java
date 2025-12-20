package org.xyz.productsvc.mapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.xyz.productsvc.dto.ProductRequest;
import org.xyz.productsvc.dto.ProductResponse;
import org.xyz.productsvc.entity.Category;
import org.xyz.productsvc.entity.Product;
import org.xyz.productsvc.enums.ProductErrorInfo;
import org.xyz.productsvc.exception.ResourceNotFoundException;
import org.xyz.productsvc.repository.CategoryRepository;

@Slf4j
@RequiredArgsConstructor
@Service
public class ProductMapper {

    private final CategoryRepository categoryRepository;

    public Product mapToProduct(ProductRequest productRequest){

        Category category = categoryRepository.findById(productRequest.categoryId())
                .orElseThrow(() -> new ResourceNotFoundException(ProductErrorInfo.CATEGORY_NOT_FOUND));

        return Product
                .builder()
                .name(productRequest.name())
                .description(productRequest.description())
                .price(productRequest.price())
                .images(productRequest.images())
                .stock(productRequest.stock())
                .category(category)
                .build();
    }

    public ProductResponse mapToProductResponse(Product product){

        return new ProductResponse(
                product.getId(),
                product.getName(),
                product.getDescription(),
                product.getPrice(),
                product.getImages(),
                product.getStock(),
                product.getCategory().getName()
        );
    }

}
