package com.example.oshop.model;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("orderItem___jpa")
public class OrderItem implements Serializable {
    private static final long serialVersionUID = 1L;
    @TableField("order_id")
    private String orderID;
    @TableField("product_id")
    private Integer productID;
    @TableField("num")
    private Integer num;
}
