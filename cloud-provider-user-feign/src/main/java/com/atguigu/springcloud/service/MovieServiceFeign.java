package com.atguigu.springcloud.service;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.atguigu.springcloud.bean.Movie;
import com.atguigu.springcloud.service.exp.MovieServiceFeignExceptionHandler;

//指定调用哪一个服务，服务名称必须与远程服务名称一致。
@FeignClient(value="CLOUD-PROVIDER-MOVIE",fallback=MovieServiceFeignExceptionHandler.class)
public interface MovieServiceFeign {

	//Feign接口方法声明  与  远程服务声明接口  保持一致。
	@GetMapping("/getMovieById/{id}")
	public Movie getMovieById(@PathVariable("id") Integer id) ;
	
}
