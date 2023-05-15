package com.example.demo.controller.product;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class ProductController {

	ServletContext context;
	ProductService service;

	@Autowired
	public ProductController(ServletContext context, ProductService service) {
		this.context = context;
		this.service = service;
	}

	// 所有商品資料
	@GetMapping("/shopSidebar")
	public String shoppage(
			@RequestParam(value="brand",required = false) String brand 
			
			,Model model) {
		List<ProductBean> list = service.getProducts();
		model.addAttribute("products", list);
		System.out.println("------------"+brand);
		model.addAttribute("brand", brand);
		return "/htmls/shopSidebar";
	}

	@GetMapping("/AcerNb1")
	public String AcerNb1() {
		return "/superproduct/AcerNb1";
	}

	@GetMapping("/AcerNb2")
	public String AcerNb2() {
		return "/superproduct/AcerNb2";
	}

	@GetMapping("/AcerNb3")
	public String AcerNb3() {
		System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAA");
		
		return "/superproduct/AcerNb3";
	}

	@GetMapping("/AcerNb4")
	public String AcerNb4() {
		return "/superproduct/AcerNb4";
	}

	@GetMapping("/AcerNb5")
	public String AcerNb5() {
		return "/superproduct/AcerNb5";
	}
	
	@GetMapping("/shopSidebarSearch")
	public String shopSidebarSearch() {
		return "/superproduct/shopSidebarSearch";
	}
	
	@GetMapping("/shopSidebarBrand")
	public String shopSidebarBrand() {
		return "/superproduct/shopSidebarBrand";
	}
	
	
	
}
