package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

import com.example.demo.service.MemberService;
@SpringBootApplication
@ServletComponentScan  //掃描servlet檔案
public class SpringappprojApplication implements CommandLineRunner {

	@Autowired
	MemberService memberService;
	
	public static void main(String[] args) {
		SpringApplication.run(SpringappprojApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		//System.out.println(memberService.findById(10));
	}

} 
