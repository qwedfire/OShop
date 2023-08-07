package com.example.oshop.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.oshop.model.Cart;
import com.example.oshop.model.Product;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductMapper extends BaseMapper<Product> {

}
