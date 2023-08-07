package com.example.oshop.model;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("order___jpa")
public class Order implements Serializable {
    private static final long serialVersionUID = 1L;

    @TableField("order_id")
    private String orderID;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @TableField("order_date")
    private Date orderDate;

    @TableField("item_count")
    private Integer itemCount;

    @TableField("total_amount")
    private Integer totalAmount;

    @TableField("customer_id")
    private Integer customerID;
}
