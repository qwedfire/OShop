package com.example.demo.controller.homePage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
// http://localhost:8080/contextPath/hello/abc/def?qty=1&type=student
	
//	@GetMapping("/")
//	public String indexo() {
//		return "htmls/index";    //  /WEB-INF/views/index.jsp
//	}
//	
	
//	@GetMapping("/index")
//	public String index() {
//		System.out.println("index");
//		return "htmls/index";    //  /WEB-INF/views/index.jsp
//	}
	
	@GetMapping("/Error404")
	public String Error404() {
		System.out.println("Error404");
		return "htmls/Error404";    
	}

	@GetMapping("/about")
	public String about() {
		System.out.println("about");
		return "htmls/about";    
	}
	
	@GetMapping("/blogGrid")
	public String blogGrid() {
		System.out.println("blogGrid");
		return "htmls/blogGrid";    
	}
	
	
	
	
	
	


	
	@GetMapping("/checkout711")
	public String checkout711() {
		System.out.println("checkout711");
		return "htmls/checkout711";   
	}
	
	@GetMapping("/confirmation")
	public String confirmation() {
		System.out.println("confirmation");
		return "htmls/confirmation";   
	}
	
	@GetMapping("/contact")
	public String contact() {
		System.out.println("contact");
		return "htmls/contact";   
	}
	
	@GetMapping("/dashboard")
	public String dashboard() {
		System.out.println("dashboard");
		return "htmls/dashboard";   
	}
	
	@GetMapping("/emptyCart")
	public String emptyCart() {
		System.out.println("emptyCart");
		return "htmls/emptyCart";   
	}
	
	@GetMapping("/forgetPassword")
	public String forgetPassword() {
		System.out.println("forgetPassword");
		return "htmls/forgetPassword";   
	}
	
	@GetMapping("/forgetPasswordReturn")
	public String forgetPasswordReturn() {
		System.out.println("forgetPasswordReturn");
		return "htmls/forgetPasswordReturn";   
	}
	
//	@GetMapping("/login")
//	public String login() {
//		System.out.println("login");
//		return "htmls/login";    
//	}
	
	@GetMapping("/order")
	public String order() {
		System.out.println("order");
		return "htmls/order";   
	}
	
	@GetMapping("/orderList")
	public String orderList() {
		System.out.println("orderList");
		return "htmls/orderList";   
	}
	
//	@GetMapping("/profileDetails")
//	public String profileDetails() {
//		System.out.println("profileDetails");
//		return "htmls/profileDetails";   
//	}
//	
	@GetMapping("/purchaseConfirmation")
	public String purchaseConfirmation() {
		System.out.println("purchaseConfirmation");
		return "htmls/purchaseConfirmation";   
	}
	
	@GetMapping("/shop")
	public String shop() {
		System.out.println("shop");
		return "htmls/shop";   
	}
	
//	@GetMapping("/shopSidebar")
//	public String shopSidebar() {
//		System.out.println("shopSidebar");
//		return "htmls/shopSidebar";   
//	}
	
	@GetMapping("/signin")
	public String sigin() {
		System.out.println("signin");
		return "htmls/signin";    
	}
	
	@GetMapping("/Swift5SF51454T79C0")
	public String Swift5SF51454T79C0() {
		System.out.println("Swift5SF51454T79C0");
		return "htmls/Swift5SF51454T79C0";   
	}
	
	@GetMapping("/SwiftXSFX1451G70P8")
	public String SwiftXSFX1451G70P8() {
		System.out.println("SwiftXSFX1451G70P8");
		return "htmls/SwiftXSFX1451G70P8";   
	}
	
	@GetMapping("/SwiftXSFX1651G")
	public String SwiftXSFX1651G() {
		System.out.println("SwiftXSFX1651G");
		return "htmls/SwiftXSFX1651G";   
	}
	
	
//	@GetMapping({"/hello", "/hello/abc/def"})
//	public String hello(
//			@RequestParam(value="name", defaultValue = "訪客") String visitor, 
//			@RequestParam(value="qty", required = false) Integer qty, 
//			Model model
//			,HttpServletRequest request
//			) throws ServletException, IOException {
//       
//		String message = visitor != null ? visitor + "，您好" : "訪客，您好";
//
//		model.addAttribute("helloMessage", message);
//		model.addAttribute("qty", qty);
//		
//		request.setAttribute("helloMessage2", message);
//		
//		return "greeting";
//
//	}

}
