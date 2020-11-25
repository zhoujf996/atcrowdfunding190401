package com.atguigu.springcloud.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.atguigu.springcloud.bean.Movie;
import com.atguigu.springcloud.bean.User;
import com.atguigu.springcloud.service.UserService;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;

@RestController
public class UserController {

	@Autowired
	UserService userService ; //本地接口
	
	@Autowired
	private RestTemplate restTemplate ; // 远程调用
	
	@GetMapping("/getUserById/{id}")
	public User getUserById(@PathVariable("id") Integer id) {
		return userService.getUserById(id);
	}
	
	@HystrixCommand(fallbackMethod="buyMovieHystrix")  //真实方法无法返回结果时，会调用熔断方法，返回兜底数据。
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
		Movie movie = restTemplate.getForObject("http://CLOUD-PROVIDER-MOVIE/getMovieById/"+movieId, Movie.class) ;
		map.put("movie", movie);
		
		return map ;
	}
	
	
	

	public Map<String,Object> buyMovieHystrix(@PathVariable("userId") Integer userId,
			@PathVariable("movieId") Integer movieId){
		
		Map<String,Object> map =  new HashMap<String,Object>();
		
		User user = new User();
		user.setId(-1);
		user.setName("无此用户");
		
		Movie movie = new Movie();
		movie.setId(-100);
		movie.setName("无此电影");
		
		map.put("user", user);
		map.put("movie", movie);
		
		return map ; //兜底数据。
	}
	
}
