package com.atguigu.springcloud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.atguigu.springcloud.bean.Movie;
import com.atguigu.springcloud.service.MovieService;

//@Controller
@RestController  //组合注解  相对于@Controller + @ResponseBody 组合使用。
public class MovieController {

	@Autowired
	MovieService moviceService ;
	
	@Value("${server.port}")
	int port ;
	
	//@ResponseBody
	@GetMapping("/getMovieById/{id}")
	public Movie getMovieById(@PathVariable("id") Integer id) {
		
		System.out.println("port="+port);
		
		return moviceService.getMovieById(id);
	}
}
