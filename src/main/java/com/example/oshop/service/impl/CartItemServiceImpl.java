package com.example.oshop.service.impl;

import com.example.oshop.model.User;
import org.springframework.stereotype.Service;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.oshop.mapper.CartItemMapper;
import com.example.oshop.model.Cart;
import com.example.oshop.model.CartItem;
import com.example.oshop.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;


@Service
public class CartItemServiceImpl extends ServiceImpl<CartItemMapper, CartItem> implements CartItemService {

    @Autowired
    ProductServiceImpl productService;
//    @Autowired
//    CartItemService cartItemService;
    @Autowired
    CartItemMapper cartItemMapper;


    @Override
    public void removeCartItem(Integer cartID) {
        QueryWrapper<CartItem> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("cartID",cartID);
        cartItemMapper.delete(queryWrapper);
    }

    @Override
    public String allProductName(Integer cartId){
        // 構建動態查詢條件
        QueryWrapper<CartItem> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("cartID", cartId);
        List<CartItem> cartItems = cartItemMapper.selectList(queryWrapper);
        StringBuilder products=new StringBuilder();
        for (CartItem cartItem : cartItems) {
            products.append(productService.getById(cartItem.getProductID()).getName()+"*"+cartItem.getQuantity()+"#");
        }
        return products.toString();
    }



    @Override
    public Integer calculateTotalPriceByCartItemDynamic(Integer cartId) {
        // 構建動態查詢條件
        QueryWrapper<CartItem> queryWrapper = new QueryWrapper<>();

        queryWrapper.eq("cartID", cartId);
        List<CartItem> cartItems = cartItemMapper.selectList(queryWrapper);
        Integer totalPrice=0;
        for (CartItem cartItem : cartItems) {
            // 執行您的操作，例如計算總價格
            totalPrice+=cartItem.getQuantity()*productService.getById(cartItem.getProductID()).getPrice();
        }
        return totalPrice;
    }
    @Override
    public CartItem findByCartIDAndProductID(Integer cartID, Integer productID) {
        QueryWrapper<CartItem> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("cartID", cartID).eq("productID", productID);
        return getOne(queryWrapper);
    }

//    法一: 使用mapper的註解方法
//    @Override
//    public void updateQuantity(CartItem cartItem) {
//        baseMapper.updateQuantity(cartItem);
//    }

//    法二:
    @Override
    public void updateQuantity(CartItem cartItem) {
        // 使用 QueryWrapper 構建更新條件
        UpdateWrapper<CartItem> updateWrapper = new UpdateWrapper<>();
        updateWrapper.eq("cartID", cartItem.getCartID())
                .eq("productID", cartItem.getProductID());

        // 使用 baseMapper.update 方法進行更新
        baseMapper.update(cartItem, updateWrapper);
    }
    @Override
    public void removeByCartIDAndProductID(Integer cartID, Integer productID) {
        QueryWrapper<CartItem> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("cartID", cartID).eq("productID", productID);
        remove(queryWrapper);
    }

}
