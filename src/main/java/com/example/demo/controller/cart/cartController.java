package com.example.demo.controller.cart;
import java.util.Collections;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class cartController {
		
//		@GetMapping("/checkout2")
//		public String checkout2(){
//			return "htmls/checkout";
//		}
//	
//		@GetMapping("/cart2")
//		public String cart2(){
//			return "supercart/cart2";
//		}
//		@GetMapping("/index4")
//		public String index4(){
//			return "supercart/index4";
//		}
//		@GetMapping("/index3")
//		public String index3(){
//			return "supercart/index3";
//		}
		@GetMapping("/addToCart")
		public String addToCart() {
			
			return "supercart/addToCart"; 
		}
		@GetMapping("/clearCart")
		public String clearCart() {
			return "supercart/clearCart"; 
		}
		@GetMapping("/updateProduct")
		public String updateProduct() {
			return "supercart/updateProduct"; 
		}
		@GetMapping("/deleteProduct")
		public String deleteProduct() {
			return "supercart/deleteProduct"; 
		}
		@GetMapping("/showCart")
		public String showCart() {
			return "supercart/showCart"; 
		}
		@GetMapping("/pay")
		public String pay() {
			return "supercart/pay"; 
		}
		@PostMapping("/confirmation")
		public String confirmation(Model model,HttpServletRequest request,HttpServletResponse  response){
			StringBuilder sb=new StringBuilder();
			response.setContentType("text/html;charset=UTF-8");
			Collections.list(request.getParameterNames())
					.forEach(e->{
//						if("CVSStoreName".equals(e) || "CVSAddress".equals(e)) {
//														String ch=new String(request.getParameter(e).getBytes("ISO-8859-1"), "UTF8");
//														sb.append(e+":"+ch+"<br>");
//														sb.append(e+":"+request.getParameter(e)+"<br>");
//														System.out.println(e+":"+request.getParameter(e));
//						}else {
							sb.append(e+":"+request.getParameter(e)+"<br>");
							System.out.println(e+":"+request.getParameter(e));
//						}
					});
			System.out.println(111111111);
//			model.addAttribute("message", sb.toString());
			System.out.println(model.getAttribute("message"));
			return "supercart/confirmation";
		}
		
		
		
//		@GetMapping("/emptyCart")
//		public String emptyCart() {
//			return "supercart/emptyCart"; 
//		} 不需要!
		
		
		
	}
