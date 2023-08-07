package com.example.oshop.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.oshop.mapper.OrderItemMapper;
import com.example.oshop.model.OrderItem;
import com.example.oshop.service.OrderItemService;
import org.springframework.stereotype.Service;


@Service
public class OrderItemServiceImpl extends ServiceImpl<OrderItemMapper, OrderItem> implements OrderItemService {

}
