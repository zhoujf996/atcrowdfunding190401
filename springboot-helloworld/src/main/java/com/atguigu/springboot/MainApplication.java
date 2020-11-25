package com.atguigu.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication //声明当前项目为springboot项目
public class MainApplication {	
	
	public static void main(String[] args) {
		//启动内置tomcat
		SpringApplication.run(MainApplication.class, args);
		
	}
	
}
