package com.atguigu.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 控制器
 * @author LENOVO
 *2020年10月14日
 */
@Controller
public class HelloController {
	
	@ResponseBody
	@GetMapping("/hello")
	public String handle01(){
	return "OK!+哈哈";
	}
	
	@ResponseBody
	@GetMapping("/test")
	public String test(){
	return "test";
	}
}
