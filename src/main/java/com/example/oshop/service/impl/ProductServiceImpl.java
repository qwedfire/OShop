package com.example.oshop.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.oshop.mapper.ProductMapper;
import com.example.oshop.model.Product;
import com.example.oshop.service.ProductService;
import org.springframework.stereotype.Service;


@Service
public class ProductServiceImpl extends ServiceImpl<ProductMapper, Product> implements ProductService {

}
