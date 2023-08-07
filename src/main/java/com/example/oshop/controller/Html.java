package com.example.oshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

//@RestController
@Controller
public class Html {
//
//    @GetMapping("/")
//    public String index() {
//        return "index"; // 返回hello.jsp视图
//    }

    @GetMapping("/try")
    public String tryjsp() {
        return "htmls/try"; // 返回hello.jsp视图
    }
}

