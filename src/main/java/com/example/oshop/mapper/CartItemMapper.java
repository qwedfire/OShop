package com.example.oshop.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.oshop.model.CartItem;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface CartItemMapper extends BaseMapper<CartItem> {
//    @Update("UPDATE cartitem___jpa SET quantity = #{quantity} WHERE cartID = #{cartID} AND productID = #{productID}")
//    void updateQuantity(CartItem cartItem);
}
