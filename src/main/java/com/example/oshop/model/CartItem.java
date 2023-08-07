package com.example.oshop.model;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serializable;


@Data
@TableName("cartitem___jpa")
public class CartItem implements Serializable {
    private static final long serialVersionUID = 1L;

    @TableField("cartID")
    private Integer cartID;

    @TableField("productID")
    private Integer productID;

    @TableField("quantity")
    Integer quantity;

}
