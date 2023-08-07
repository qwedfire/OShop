package com.example.oshop.controller;

import com.example.oshop.model.Cart;
import com.example.oshop.model.CartItem;
import com.example.oshop.model.User;
import com.example.oshop.service.CartItemService;
import com.example.oshop.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
public class CartController {
    @Autowired
    private CartService cartService;
    @Autowired
    private CartItemService cartItemService;
//    顯示購物車的數量
    @GetMapping("/getCartItemCount")
    public ResponseEntity<Map<String, Integer>> getCartItemCount(HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
        List<CartItem> cartItem=cartItemService.list().stream().filter(cartItem1 -> cartItem1.getCartID()==user.getId()).collect(Collectors.toList());
        // 假設根據用戶ID查詢購物車筆數的方法為 getCartItemCountByUserId，請根據您的後端邏輯進行調整
        int cartItemCount =0;
        for (CartItem item : cartItem) {
            cartItemCount+=item.getQuantity();
        }
        Map<String, Integer> response = new HashMap<>();
        response.put("cartItemCount", cartItemCount);
        return ResponseEntity.ok(response);
    }

    @GetMapping("findAll")
    public List<Cart> findAllCart() {
        List<Cart> list = cartService.list();
        return list;
    }
    @PostMapping("addCart")
    public void addItem(@RequestBody Cart cart) {
        cartService.save(cart);
    }

    @PostMapping("addtoCart")
    public void addItem(@RequestBody CartItem cartItem){
        CartItem cartItem1 = cartItemService.findByCartIDAndProductID(cartItem.getCartID(), cartItem.getProductID());

        if (cartItem1 != null) {
            // 如果找到记录，则更新数量
            cartItem1.setQuantity(cartItem1.getQuantity() + 1);
            cartItemService.updateQuantity(cartItem1);
        } else {
            // 如果未找到记录，则创建新的 CartItem 对象并保存到数据库
            cartItem1 = new CartItem();
            cartItem1.setCartID(cartItem.getCartID());
            cartItem1.setProductID(cartItem.getProductID());
            cartItem1.setQuantity(1);
            cartItemService.save(cartItem1);
        }
    }
    @PostMapping("/updateQuantity")
    public void updateQuantity(@RequestBody CartItem cartItem) {
        CartItem cartItem1 = cartItemService.findByCartIDAndProductID(cartItem.getCartID(), cartItem.getProductID());
        cartItem1.setQuantity(cartItem.getQuantity());
        cartItemService.updateQuantity(cartItem1);
    }



    @DeleteMapping("delete/{id}")
    public boolean removeItem(@PathVariable Integer id) {
        boolean flag = cartService.removeById(id);
        return flag;
    }

    @GetMapping("getCart/{id}")
    public Cart getCart(@PathVariable Integer id) {
        Cart cart = cartService.getById(id);
        return cart;
    }

    @PostMapping("updateCart")
    public boolean updateCart(@RequestBody Cart cart) {
        boolean flag = cartService.updateById(cart);
        return flag;
    }


}
