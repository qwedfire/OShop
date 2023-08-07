package com.example.oshop.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.oshop.mapper.CartMapper;
import com.example.oshop.model.Cart;
import com.example.oshop.service.CartService;
import org.springframework.stereotype.Service;


@Service
public class CartServiceImpl extends ServiceImpl<CartMapper, Cart> implements CartService {

}
