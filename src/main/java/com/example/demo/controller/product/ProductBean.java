package com.example.demo.controller.product;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "os_product")
public class ProductBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String stock_id;
	private String brand;
	private String name;
	private String info;
	private String img;
	private String url;
	private Integer quantity;
	private Integer price;
	

	public ProductBean(Integer id, String stock_id, String brand, String name, String info, String img, String url, Integer quantity,
			Integer price) {
		this.id = id;
		this.stock_id = stock_id;
		this.brand = brand;
		this.name = name;
		this.info = info;
		this.img = img;
		this.url = url;
		this.quantity = quantity;
		this.price = price;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public ProductBean() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getStock_id() {
		return stock_id;
	}

	public void setStock_id(String stock_id) {
		this.stock_id = stock_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "ProductBean [id=" + id + ", stock_id=" + stock_id + ", brand=" + brand + ", name=" + name + ", info="
				+ info + ", img=" + img + ", url=" + url + ", quantity=" + quantity + ", price=" + price + "]";
	}

}
