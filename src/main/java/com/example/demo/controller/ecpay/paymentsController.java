package com.example.demo.controller.ecpay;

import java.util.Collections;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class paymentsController {

	@GetMapping("/supercart/payment")
	@ResponseBody
	public String payment( Model model,HttpServletRequest request,HttpServletResponse  response) {
		StringBuilder sb=new StringBuilder();
		response.setContentType("text/html;charset=UTF-8");
		Collections.list(request.getParameterNames())
				.forEach(e->{
//					if("CVSStoreName".equals(e) || "CVSAddress".equals(e)) {
						//							String ch=new String(request.getParameter(e).getBytes("ISO-8859-1"), "UTF8");
						//							sb.append(e+":"+ch+"<br>");
//													sb.append(e+":"+request.getParameter(e)+"<br>");
//													System.out.println(e+":"+request.getParameter(e));
//					}else {
						sb.append(e+":"+request.getParameter(e)+"<br>");
						System.out.println(e+":"+request.getParameter(e));
//					}
				});
		
		return sb.toString();
	}
	
}
