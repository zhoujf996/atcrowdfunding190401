package com.atguigu.scw.webui.service.exp.handler;

import java.util.List;

import org.springframework.stereotype.Component;

import com.atguigu.scw.vo.resp.AppResponse;
import com.atguigu.scw.webui.service.TProjectServiceFeign;
import com.atguigu.scw.webui.vo.resp.ProjectVo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class TProjecServiceFeignExceptionHandler implements TProjectServiceFeign {

	@Override
	public AppResponse<List<ProjectVo>> all() {
		
		AppResponse resp=new AppResponse();
		resp.setMsg("调用远程服务【查询首页热点项目】失败");
		log.error("调用远程服务【查询首页热点项目】失败");
		return resp;
		
	}

}
