package com.example.oshop.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.oshop.mapper.OrderMapper;
import com.example.oshop.model.Order;
import com.example.oshop.service.OrderService;
import org.springframework.stereotype.Service;



@Service
public class OrderServiceImpl extends ServiceImpl<OrderMapper, Order> implements OrderService {

}
