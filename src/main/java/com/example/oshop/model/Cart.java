package com.example.oshop.model;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("Cart___Jpa")
public class Cart implements Serializable {
	private static final long serialVersionUID = 1L;
	@TableId(value = "cartID" , type = IdType.AUTO)
	Integer cartid;
	@TableField("username")
	String username;
}
