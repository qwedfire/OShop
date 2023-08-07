package com.example.oshop.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.oshop.model.CartItem;



public interface CartItemService extends IService<CartItem> {
    String allProductName(Integer cartItemId);
    Integer calculateTotalPriceByCartItemDynamic(Integer cartItemId) ;
    CartItem findByCartIDAndProductID(Integer cartID, Integer productID);
    void updateQuantity(CartItem cartItem);
    void removeByCartIDAndProductID(Integer cartID,Integer productID);

    void removeCartItem(Integer cartID);
}
