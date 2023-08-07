package com.example.oshop.model;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import javax.persistence.Id;

@Data
@TableName("os_product")
public class Product {
    @Id
    @TableField("id")
    private Integer id;
    @TableField("stock_id")
    private String stock_id;
    @TableField("brand")
    private String brand;
    @TableField("name")
    private String name;
    @TableField("info")
    private String info;
    @TableField("img")
    private String img;
    @TableField("url")
    private String url;
    @TableField("quantity")
    private Integer quantity;
    @TableField("price")
    private Integer price;
}
