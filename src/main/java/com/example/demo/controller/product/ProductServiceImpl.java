package com.example.demo.controller.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductRepository productRepository;

	@Override
	public List<ProductBean> getProducts() {
		return (List<ProductBean>) productRepository.findAll() ;
	}
}
