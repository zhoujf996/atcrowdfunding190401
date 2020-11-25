package com.atguigu.springcloud.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.atguigu.springcloud.bean.Movie;
import com.atguigu.springcloud.bean.User;
import com.atguigu.springcloud.service.MovieServiceFeign;
import com.atguigu.springcloud.service.UserService;

@RestController
public class UserController {

	@Autowired
	UserService userService ; //本地接口
	
	@Autowired
	MovieServiceFeign movieServiceFeign; // Feign接口。用于远程调用
	
	@GetMapping("/getUserById/{id}")
	public User getUserById(@PathVariable("id") Integer id) {
		return userService.getUserById(id);
	}
	
	@GetMapping("/buyMovie/{userId}/{movieId}")
	public Map<String,Object> buyMovie(@PathVariable("userId") Integer userId,
			@PathVariable("movieId") Integer movieId){
		
		Map<String,Object> map =  new HashMap<String,Object>();
		
		User user = userService.getUserById(userId);
		map.put("user", user);
		
		// 用户服务  远程调用  电影服务  ：   如何远程调用
		//采用REST风格。
		//1.采用RestTemplate进行远程调用
		//2.采用Feign进行远程调用
		Movie movie = movieServiceFeign.getMovieById(movieId) ;
		map.put("movie", movie);
		
		return map ;
	}
	
	
}
