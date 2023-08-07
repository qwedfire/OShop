package com.example.oshop.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.oshop.model.Cart;
import com.example.oshop.model.Order;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderMapper extends BaseMapper<Order> {

}
