package com.atguigu.springcloud.service.exp;

import org.springframework.stereotype.Component;

import com.atguigu.springcloud.bean.Movie;
import com.atguigu.springcloud.service.MovieServiceFeign;

@Component
public class MovieServiceFeignExceptionHandler implements MovieServiceFeign {

	@Override
	public Movie getMovieById(Integer id) {
	
		Movie movie = new Movie();
		movie.setId(-100);
		movie.setName("无此电影");
		
		return movie;
	}

}
