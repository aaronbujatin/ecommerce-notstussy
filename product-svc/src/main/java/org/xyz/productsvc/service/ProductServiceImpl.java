package org.xyz.productsvc.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.xyz.productsvc.dto.ProductRequest;
import org.xyz.productsvc.dto.ProductResponse;
import org.xyz.productsvc.entity.Product;
import org.xyz.productsvc.enums.ProductErrorInfo;
import org.xyz.productsvc.exception.ResourceNotFoundException;
import org.xyz.productsvc.mapper.ProductMapper;
import org.xyz.productsvc.repository.ProductRepository;

import java.util.List;

@Slf4j
@RequiredArgsConstructor
@Service
public class ProductServiceImpl implements ProductService{

    private final ProductRepository productRepository;
    private final ProductMapper productMapper;

    @Override
    public void createProduct(ProductRequest productRequest) {

        log.info("Creating product with name: {}", productRequest.name());
        productRepository.save(productMapper.mapToProduct(productRequest));
    }

    @Override
    public ProductResponse getProductById(Long id) {

        log.info("Getting the product with id of {}", id);
        Product product =  productRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException(ProductErrorInfo.PRODUCT_NOT_FOUND));

        ProductResponse productResponse = null;

        log.info("Returning the product with id of {} {}", id, productResponse);
        return productResponse;
    }

    @Override
    public List<ProductResponse> getAllProducts() {
//        log.info("Getting the list of product");
//
//        List<Product> products = productRepository.findAll();
//
//        List<ProductResponse> productResponses = products
//                .stream()
//                .map(productMapper::mapToProductResponse)
//                .toList();
//
//        log.info("Returning list of products {}", productResponses);
//        return productResponses;

        return null;
    }


}
