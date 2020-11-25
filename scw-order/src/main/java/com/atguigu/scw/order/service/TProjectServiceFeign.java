package com.atguigu.scw.order.service;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.atguigu.scw.order.service.exp.handler.TProjectServiceFeignExceptionHandler;
import com.atguigu.scw.order.vo.resp.TReturn;
import com.atguigu.scw.vo.resp.AppResponse;

import io.swagger.annotations.ApiOperation;

@FeignClient(value="SCW-PROJECT",fallback=TProjectServiceFeignExceptionHandler.class)
public interface TProjectServiceFeign {

	@ApiOperation("[+]获取项目某个回报档位信息")
	@GetMapping("/project/details/returns/info/{returnId}")
	public AppResponse<TReturn> returnInfo(@PathVariable("returnId") Integer returnId);
	
}
